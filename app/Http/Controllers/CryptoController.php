<?php

namespace App\Http\Controllers;

use \App\UploadedFile;
use \App\EncryptedFile;
use \App\DecryptedFile;
use Illuminate\Http\Request;

class CryptoController extends Controller
{
    public function crypto(Request $request)
    {
    	$int = $request->int;
        return view('crypto.index', compact('int'));
    }

    public function cryptopost(Request $request)
    {
    	$this->validate($request, [
    		"file" => "required",
    	]);

    	$ext = $request->file('file')->getClientOriginalExtension();
        $file = time().'.'.$ext;
        $request->file('file')->move('uploads/temp', $file);


        $phpWord = \PhpOffice\PhpWord\IOFactory::createReader('Word2007')->load('uploads/temp/'.$file);

		$mac = '';

		foreach($phpWord->getSections() as $section) {
            foreach($section->getElements() as $element) {
                foreach($element->getElements() as $m){
                	$mac .= $m->getText();
                }
            }
        }
        // return "asd";
        // die();
        // return strip_ta$mac;
        // die();

        $id = UploadedFile::create([
        	'plaintext' => $mac,
        	'file' => $file,
        	'crypto' => $request->crypto,
        ]);

        return redirect("crypto/".$request->crypto.'/'.$id->id);
    }

    public function getcrypto(Request $request)
    {
    	$int = $request->int;
    	$uploaded = UploadedFile::find($request->id);
    	return view('crypto.view', compact('int', 'uploaded'));
    }

    public function postcrypto(Request $request)
    {
    	$filename = time();
    	$int = $request->int;
    	$uploaded = UploadedFile::find($request->id);
    	$key = $request->key;
    	$striped = htmlspecialchars_decode($uploaded->plaintext);
    	if($int==0){
    		$sp_plaintext = str_split($striped);
    		// echo '<pre>';
    		// print_r($sp_plaintext);
    		// die();
	    	$sp_key = str_split($key);

	    	// echo '<pre>';
	    	// print_r($sp_key);
	    	// die();
	    	if ((count($sp_key) > count($sp_plaintext)) && count($sp_key) > 4) {
	    		$m= (count($sp_plaintext))-(count($sp_key));
	    		$s= (count($sp_key)+$m);
	    		array_splice($sp_key, $s);

	    	}

	    	if(count($sp_plaintext)==1){
	    		for ($i=0; $i < 3; $i++) {
	    			array_push($sp_plaintext, " ");
	    		}

	    	}

	    	if (count($sp_plaintext)==2) {
	    			for ($i=0; $i < 2; $i++) {
	    			array_push($sp_plaintext, " ");
	    		}
	    	}

	    	// JIKA JUMLAH KARAKTER PLAINTEX GANJI MAKA TAMBAH SPASI
	    	if(count($sp_plaintext) % 2 !== 0){
	    		array_push($sp_plaintext, " ");
	    	}
	    	// END JIKA JUMLAH KARAKTER PLAINTEX GANJI MAKA TAMBAH SPASI

	    	//JIKA KUNCI KOSONG
	    	if(empty($key)){
	    		$b = (count($sp_plaintext)-1);
	    		$str = "!@#$%^&*()_-abcdefghijklmnopqrstuvwxyzABCRDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	    		$d = str_split("x");
	    		for($i=0; $i<$b; $i++){
					$m = str_shuffle($str);
					array_push($d, substr($m, 0, 1));

	    			}
	    			$sp_key = $d;

	    	}

	    	// echo "<pre>";
	    	// print_r($sp_key);
	    	// die();



	    	// JIKA JUMLAH KARAKTER PLAINTEX TIDAK SAMA DENGAN JUMLAH KAR KEY
	    	if(count($sp_plaintext) !== count($sp_key)){
	    		$s = (count($sp_plaintext)-count($sp_key));
	    		// echo "Jumlah kar plaintext ". count($sp_plaintext), '<br>';
	    		// echo "Jumlah Kar key ".count($sp_key), '<br>';
	    		// echo $s;
	    		$str = "!@#$%^&*()_-abcdefghijklmnopqrstuvwxyzABCRDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	    		for($i=0; $i<$s; $i++){
					$a = str_shuffle($str);
	    			array_push($sp_key, substr($a, 0, 1));
	    		}

	    		// echo '<br />';
	    		// echo count($sp_key);
	    		// echo '<pre>';
	    		// print_r($sp_key);
	    		// die();

	    		// echo '<pre>';
	    		// print_r($sp_key);
	    		// die();
	    	}



	    	// echo '<pre>';
	    	// print_r($sp_key);
	    	// die();

	    	$key = implode('', $sp_key);
	    	// echo '<pre>';
	    	// var_dump($sp_key);
	    	// die();

	    	foreach($sp_plaintext as $pt){
	    		$ord_pt[] = (ord($pt)-32);
	    	}

	    	foreach($sp_key as $val){
	    		//echo $val, '<br />';
	    		$ord_key[] = ord(trim($val));
	    	}

	    	for($i=0; $i<count($ord_pt); $i++){
	    		$dec_cipher[] = (($ord_pt[$i]^$ord_key[$i])+32);
	    	}

	    	foreach($dec_cipher as $dc){
	    		$vernam[] = chr($dc);
	    	}

	    	$four_key = str_split(substr($key, 0, 4));


	    	foreach($four_key as $key_matrix){
	    		$matrix[] = (ord($key_matrix)-28);
	    	}
	    	// echo "<pre>";
	    	// print_r($matrix);

	    	foreach($vernam as $val){
	    		$vernam_ord[] = (ord($val)-32);
	    	}



	    	$matrix_chunk = array_chunk($matrix,2);
	    	$matrix_chunk[0][1] = $matrix_chunk[0][1]+3;
	    	$matrix_chunk[1][0] = $matrix_chunk[1][0]+3;

	    	// echo "<pre>";
	    	// print_r($matrix_chunk);
	    	// die();

	    	$vernam_ord_chunk = array_chunk($vernam_ord,2);
			foreach($vernam_ord_chunk as $keyv => $valv){
				foreach($matrix_chunk as $keym => $valm){
					foreach($valm as $keyms => $valms){
						$multiple[$keyv][] = ($valv[$keyms]*$matrix_chunk[$keym][$keyms]);
					}
				}
			}

			foreach($multiple as $mkeys => $marray){
				$mchunk[$mkeys] = array_chunk($marray,2);
			}



			foreach($mchunk as $mkey => $mval){
				foreach($mval as $mkeys => $mvals){
					$multiple_sum[$mkey][$mkeys] = mb_convert_encoding(chr((array_sum($mvals)%223)+32), 'UTF-8', 'HTML-ENTITIES');
				}
			}



			$result = '';
			foreach($multiple_sum as $keys => $vals){
				foreach($vals as $keyr => $valr){
					$result .= $valr;
				}
			}

	    	// echo '<pre>';
	    	// var_dump($result);
	    	// echo strlen($result);
	    	// die();

			$phpWord = new \PhpOffice\PhpWord\PhpWord();
			$section = $phpWord->addSection();
			$section->addText(
			    htmlspecialchars($result)
			);

			$objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
			$objWriter->save('uploads/'.($int == 0 ? "encrypt" : "decrypt").'/'.$filename.'.docx');

			$encrypted = EncryptedFile::create([
				'uploaded_file_id' => $uploaded->id,
				'key' => implode('', $sp_key),
				'file' => $filename.'.docx',
			]);

	    	return view('crypto.result', compact('int', 'uploaded', 'key', 'sp_key', 'vernam', 'result','encrypted'));
    	}else{
    		$results = array();
			preg_match_all('/./u', (html_entity_decode($uploaded->plaintext, ENT_QUOTES)), $results);
	    	$sp_key = str_split($key);
	    	$sp_plaintext = @$results[0];
	    	// echo '<pre>';
	    	// print_r($sp_plaintext);
	    	// die();
    		$key = $request->key;

    		// echo implode('', $sp_plaintext), '<br>';
    		// echo '<pre>';
    		// print_r($sp_plaintext);
    		// echo "Jumlah karakter plaintext: ".count($sp_plaintext), '<br />';
    		// echo count($sp_key);
    		// die();

	    	foreach($sp_plaintext as $keys => $vals){
	    		$ord_plaintext[] = (ord(mb_convert_encoding($vals, 'ISO-8859-1'))-32);
	    	}


	    	$four_key = str_split(substr($key, 0, 4));

	    	$c=0;
	    	foreach($four_key as $key_matrix){
	    		$matrix[] = (ord($key_matrix)-28);
	    	}



	    	$matrix_chunk = array_chunk($matrix,2);
	    	$matrix_chunk[0][1] = $matrix_chunk[0][1]+3;
	    	$matrix_chunk[1][0] = $matrix_chunk[1][0]+3;
	    	// $matrix_chunk[1][0] = $matrix_chunk[1][0]+3;
	    	// $matrix_chunk[0][1] = $matrix_chunk[0][1]+3;
	    	// echo "<pre>";
	    	// print_r($matrix_chunk);
	    	// die();

	    	foreach($matrix_chunk as $keys => $vals){
	    		foreach($vals as $keyc => $valc){
	    			if(($keys == 0) && ($keyc == 0)){
	    				$flip_matrix[$keys][$keyc] = ($valc*$matrix_chunk[1][1]);
	    			}elseif(($keys == 0) && ($keyc == 1)){
	    				$flip_matrix[$keys][$keyc] = ($valc*$matrix_chunk[1][0]);
	    			}
	    		}
	    	}
	    	// echo "<pre>";
	    	// print_r($flip_matrix);
	    	// die();


	    	$substraction = ($flip_matrix[0][0]-$flip_matrix[0][1]);

	    	// echo "<pre>";
	    	// print_r($substraction);
	    	// die();


	    	// 180 ERROR HARUS 500
	    	for($i=1; $i<=500; $i++){
	    		if($substraction < 0){
	    			if((223+($substraction*$i)%223) == 1){
		    			$hasil = $i;
		    		}
	    		}else{
	    			if((($substraction*$i)%223) == 1){
		    			$hasil = $i;
		    		}
	    		}
	    	}



	    	foreach($matrix as $keys => $vals){
	    		$invers[0] = $matrix[3];
	    		$invers[1] = (220-$matrix[1]);
	    		$invers[2] = (220-$matrix[2]);
	    		$invers[3] = $matrix[0];
	    	}

	    	// echo "<pre>";
	    	// print_r($invers);
	    	// die();

	    	foreach($invers as $vals){
	    		$h_invers[] = (($vals*$hasil)%223);
	    	}

	    	$h_invers_chunk = array_chunk($h_invers,2);
	    	$ord_plaintext_chunk = array_chunk($ord_plaintext,2);

	  //   	echo '<pre>';
			// print_r($ord_plaintext_chunk);
			// die();

	    	foreach($ord_plaintext_chunk as $keyv => $valv){
				foreach($h_invers_chunk as $keym => $valm){
					foreach($valm as $keyms => $valms){
						$multiple[$keyv][] = ($valv[$keyms]*$h_invers_chunk[$keym][$keyms]);
					}
				}
			}




			foreach($multiple as $mkeys => $marray){
				$mchunk[$mkeys] = array_chunk($marray,2);
			}

			foreach($mchunk as $mkey => $mval){
				foreach($mval as $mkeys => $mvals){
					$multiple_sum[$mkey][$mkeys] = chr((array_sum($mvals)%223)+32);
				}
			}

			foreach($multiple_sum as $keys => $vals){
				foreach($vals as $keyc => $valc){
					$decrypt_items[] = (ord($valc)-32);
				}
			}


	    	foreach($sp_key as $val){
	    		$ord_key[] = ord($val);
	    	}


	    	for($i=0; $i<count($decrypt_items); $i++){
	    		$dec_cipher[] = chr(($decrypt_items[$i]^$ord_key[$i])+32);
	    	}

	    	$result = '';
			foreach($dec_cipher as $keys => $vals){
				$result .= $vals;
			}


			$phpWord = new \PhpOffice\PhpWord\PhpWord();
			$section = $phpWord->addSection();
			$section->addText(
			    $result
			);

			$objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
			$objWriter->save('uploads/'.($int == 0 ? "encrypt" : "decrypt").'/'.$filename.'.docx');

			$decrypted = DecryptedFile::create([
				'uploaded_file_id' => $uploaded->id,
				'key' => $key,
				'file' => $filename.'.docx',
			]);

	    	return view('crypto.result', compact('int', 'uploaded', 'key', 'sp_key', 'result','decrypted'));
    	}
    }

    public function files()
    {
    	$uploaded = UploadedFile::all();
    	return view('files.index', compact('uploaded'));
    }

    public function del_files(Request $request)
    {
    	UploadedFile::destroy($request->id);
    	return redirect()->route('files');
    }

    public function about()
    {
    	return view('about');
    }
}
