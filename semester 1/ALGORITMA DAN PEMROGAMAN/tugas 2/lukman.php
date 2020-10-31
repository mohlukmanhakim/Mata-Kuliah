<?php
$kondisi = "non";
$total_harga =150000;

if($kondisi == "member"){
	if($total_harga > 500000){
		$diskon = $total_harga*0.1;
	}else{
		$diskon = $total_harga*0.05;
	}

}elseif ($kondisi == "non"){
	if($total_harga > 1000000){
		$diskon = $total_harga*0.03;
	}else{
		$diskon = $total_harga*0.02;
	}
}

$total_bayar = $total_harga-$diskon;
echo $total_bayar;

?>