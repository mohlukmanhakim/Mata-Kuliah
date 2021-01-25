<?php
	mysql_connect("localhost","root","","fuzzy_db");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"
/>
<meta name="description" content="Fuzzy Database">
<meta name="keywords" content="fuzzy, database">
<meta name="author" content="Moh Lukman Hakim">
<title>Fuzzy Database</title>
<style>
	body {
		font-family:Verdana;
		font-size:12px;
	}
	.ratatengah {text-align:center;}
	.ratakanan {text-align:right;}
	.bg1, .bg2, .bg3 {background-color:#CCFFCC;}
	.bg6, .bg7, .bg8 {background-color:#FFFFCC;}
	th, td {padding:.3em .5em;}
	th {background-color:#EEEEEE;}
</style>
</head>

<body>
<?php

	function cek_selected($cek,$value) {
		if($cek==$value) echo "selected=\"selected\"";
	}

function format_desimal($nn,$des) {
return number_format($nn,$des,",",".");
}
function get_namakelompok($id_kelompok) {
$koneksi = mysqli_connect("localhost","root","", "fuzzy_db");
$sql ="SELECT * FROM tb_kelompok WHERE id='$id_kelompok'";
$hasil =mysql_query($sql);
$row=mysql_fetch_assoc($hasil);
return $row['nama_kelompok'];

}

function derajat_keanggotaan($nilai, $bawah, $tengah, $atas)
{
$selisih=$atas-$bawah;

if($nilai<$bawah) $DA=0;
elseif (($nilai>=$bawah) && ($nilai<=$tengah))
if($bawah<=0) $DA=1;
else $DA=($nilai-$bawah) / ($tengah-$bawah);

elseif(($nilai>$tengah) && ($nilai<=$atas)) $DA=($atas-$nilai
) / ($atas-$tengah);
elseif($nilai>$atas) $DA=0;
return $DA;
}


 $ux[][] = NULL; //variabel utk data derajat keanggotaaan

$kelompok =isset($_GET['kelompok'])?$_GET['kelompok']:1;
$sql_kelompok ="SELECT * FROM tb_kelompok WHERE id='$kelompok'";
$hasil_kelompok =mysql_query($sql_kelompok);
$row_kelompok =mysql_fetch_assoc($hasil_kelompok);

$sql ="SELECT * FROM tb_kriteria";
$hasil =mysql_query($sql);
$jumkol =mysql_num_rows($hasil);

?>

<h2>Data Karyawan & Derajat Keanggotaan</h2>
<table border="1" cellpadding="3" style="border-collapse:
collapse;">
<tr>
<th width="17" rowspan="2"><strong>ID</strong></th>
<th width="100" rowspan="2"><strong>Nama</strong></th>
<th width="28" rowspan="2"><strong>Usia</strong></th>
<th width="37" rowspan="2"><strong>Masa Kerja</strong></th>
<th width="78" rowspan="2"><strong>Gaji</strong></th>

<th colspan="3"><strong>(&#956;[x]) <?php echo
get_namakelompok(1);?></strong></th>
<th colspan="2"><strong>(&#956;[x]) <?php echo
get_namakelompok(2);?></strong></th>
<th colspan="3"><strong>(&#956;[x]) <?php echo
get_namakelompok(3);?></strong></th>

</tr>
<tr>
<?php


$sql ="SELECT * FROM tb_kriteria WHERE kelompok='1'";
$hasil =mysql_query($sql);
while($row=mysql_fetch_assoc($hasil))
{
?>
<th><strong><?php echo $row['nama_kriteria'];?></strong></th>
<?php
}
?>
<?php
 $sql ="SELECT * FROM tb_kriteria WHERE kelompok='2'";
 $hasil =mysql_query($sql);
 while($row=mysql_fetch_assoc($hasil))
 {
?>
<th><strong><?php echo $row['nama_kriteria'];?></strong></th>
<?php
}
?>
<?php
$sql ="SELECT * FROM tb_kriteria WHERE kelompok='3'";

$hasil =mysql_query($sql);
while($row=mysql_fetch_assoc($hasil))
{
?>
<th><strong><?php echo $row['nama_kriteria'];?></strong></th>
<?php
}
?>
</tr>

<?php
$sql ="SELECT * FROM tb_emp";
$hasil =mysql_query($sql);
while($row=mysql_fetch_assoc($hasil))
{
?>

<tr>
<td><?php echo $row['id']; ?></td>
<td><?php echo $row['nama']; ?></td>
 <td class="ratakanan"><?php echo $row['usia']; ?></td>
<td class="ratakanan"><?php echo $row['masakerja']; ?></td>
<td class="ratakanan"><?php echo format_desimal($row['gaji'],
2); ?></td>
<?php
 $sql2 ="SELECT * FROM tb_kriteria WHERE kelompok='1'";
 $hasil2 =mysql_query($sql2);
while($row2=mysql_fetch_assoc($hasil2))
{
$u = derajat_keanggotaan($row['usia'], $row2['bawah'],
$row2['tengah'], $row2['atas']);
$ux[$row['id']][$row2['id']] = $u;
$bg = "ratakanan";
if(isset($_GET['usia']) && ($row2['id']==$_GET['usia']))
$bg .= " bg".$row2['id'];
?>
<td class="<?php echo $bg;?>"><?php echo format_desimal(
$u,2);?></td>
<?php
}
?>
<?php
$sql2 ="SELECT * FROM tb_kriteria WHERE kelompok='2'";
$hasil2 =mysql_query($sql2);
while($row2=mysql_fetch_assoc($hasil2))
{
 $u = derajat_keanggotaan($row['masakerja'], $row2['bawah'
], $row2['tengah'], $row2['atas']);
$ux[$row['id']][$row2['id']] = $u;
?>
<td class="ratakanan"><?php echo format_desimal($u,2,",",
".");?></td>
 <?php
 }
 ?>
 <?php
$sql2 ="SELECT * FROM tb_kriteria WHERE kelompok='3'";
$hasil2 =mysql_query($sql2);
while($row2=mysql_fetch_assoc($hasil2))
	{
$u = derajat_keanggotaan($row['gaji'], $row2['bawah'],
$row2['tengah'], $row2['atas']);
$ux[$row['id']][$row2['id']] = $u;
$bg = "ratakanan";
if(isset($_GET['gaji']) && ($row2['id']==$_GET['gaji']))
$bg .= " bg".$row2['id'];
?>
<td class="<?php echo $bg;?>"><?php echo format_desimal(
$u,2);?></td>
<?php
}
?>


</tr>
<?php
 }
?>
 </table>
<br />

 <h2><strong>QUERY</strong></h2>
<form action="" method="GET">
<select name="usia">
 <option value="1" <?php if(isset($_GET['usia']))
cek_selected($_GET['usia'],1); ?>>Usia Muda</option>
<option value="2" <?php if(isset($_GET['usia']))
cek_selected($_GET['usia'],2); ?>>Usia Parobaya</option>
<option value="3" <?php if(isset($_GET['usia']))
cek_selected($_GET['usia'],3); ?>>Usia Tua</option>
</select>
<select name="opr">
<option value="OR" <?php if(isset($_GET['opr']))
cek_selected($_GET['opr'],"OR"); ?>>OR</option>
 <option value="AND" <?php if(isset($_GET['opr']))
cek_selected($_GET['opr'],"AND"); ?>>AND</option>
 </select>
<select name="gaji">
<option value="6" <?php if(isset($_GET['gaji']))
cek_selected($_GET['gaji'],6); ?>>Gaji Rendah</option>
 <option value="7" <?php if(isset($_GET['gaji']))
cek_selected($_GET['gaji'],7); ?>>Gaji Sedang</option>
<option value="8" <?php if(isset($_GET['gaji']))
cek_selected($_GET['gaji'],8); ?>>Gaji Tinggi</option>
</select>
 <input type="submit" value="Submit">
<form>

<br />
<br />

<h2><strong>HASIL</strong></h2>
<?php

 if (isset($_GET['opr'])) {
$opr = $_GET['opr'];
$usia = $_GET['usia'];
$gaji = $_GET['gaji'];


$sql ="SELECT id,nama FROM tb_emp";
$hasil =mysql_query($sql);

while($row=mysql_fetch_assoc($hasil)) {

 //ambil data derajat keanggotaan
$c1 = $ux[$row['id']][$usia];
$c2 = $ux[$row['id']][$gaji];

//tentukan operasi
 if ($opr=="OR") $cc= max($c1,$c2);
else $cc= min($c1,$c2);

//tampilkan
if ($cc > 0) echo $row['nama']." : [".format_desimal($cc,2).
"]<br />";
 } //end while
}

?>


</body>
</html>