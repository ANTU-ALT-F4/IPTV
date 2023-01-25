#EXTM3U url-tvg="http://lichphatsong.xyz/schedule/epg.xml" tvg-shift=0 m3uautoload=1
</br></br>

<?php
include './config.php';

$truyvan = "SELECT iptv_group.Name as GName,logo,iptv.name as Name,server,catchup_source,lichphatsong FROM iptv,iptv_group WHERE iptv.id_group = iptv_group.id";
$return = mysqli_query($conn, $truyvan);
while ($row = mysqli_fetch_array($return)) {
?>


#EXTINF:0 tvg-id="<?php echo $row['lichphatsong']; ?>" group-title="<?php echo $row['GName']; ?>" tvg-logo="<?php echo $row['logo']; ?>" catchup="append" catchup-days="2" catchup-source="<?php echo $row['catchup_source']; ?>" ,<?php echo $row['Name']; ?>       
#EXTVLCOPT:http-user-agent="HuyKhang TV"
<?php echo $row['server']; ?>

<?php
}
?>

