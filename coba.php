<?php
	$str = "abcdefghijklmnopqrstuvwxyzABCRDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	echo substr(str_shuffle($str), 0, 10);