<?php
$hb=12000;
$hari= "senin";

if ($hari== "senin"){
	if ($hb > 10000){
	$bonus = "anda mendapat bonus roti";
	}else{
	$bonus = "zonk";
	}
}else {
	if($hb>10000){
	$bonus = "anda mendapat bonus air mineral";
	}else{
	$bonus = "zonk ";
	}
}
echo "kamu berbelanja pada hari ";
echo $hari ."<br>";  
echo $bonus;

?>