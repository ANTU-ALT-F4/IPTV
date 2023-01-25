<?php
include "config.php";
if (isset($_POST['Save'])) {
    $error = array();
    $success = array();
    $showMess = false;

    $id_group = $_POST['id_group'];
    $Logo = $_POST['Logo'];
    $Name = $_POST['Name'];
    $Server = $_POST['Server'];


    if ($_POST['id_group'] == 0)
        $error['id_group'] = 'Vui lòng chọn <b> Group </b>';

    if (empty($_POST['Logo']))
        $error['Logo'] = 'Vui lòng nhập đường dẫn hình<b> Logo </b>';


    if (empty($_POST['Name']))
        $error['Name'] = 'Vui lòng nhập <b> Name </b>';

    if (empty($_POST['Server']))
        $error['Server'] = 'Vui lòng nhập <b> Server </b>';
    $catchup_source = $_POST['catchup_source'];
    $lichphatsong = $_POST['lichphatsong'];
    if (!$error) {
        $showMess = true;

        $insert = "INSERT INTO `iptv` (`id`, `id_group`, `logo`, `name`, `server`,`catchup_source`,`lichphatsong`) VALUES (NULL, '$id_group', '$Logo', '$Name', '$Server', '$catchup_source', '$lichphatsong')";
        mysqli_query($conn, $insert);
        $success['success'] = 'THÊM KÊNH THÀNH CÔNG.';
        if (isset($_REQUEST['IDGROUP'])) {
            $id_g = $_REQUEST['IDGROUP'];
            echo '<script>setTimeout("window.location=\'chitietkenh.php?IDGROUP='.$id_g.'\'",1000);</script>';
        }
        if (empty($_REQUEST['IDGROUP'])) {
            $id_g = $_REQUEST['IDGROUP'];
            echo '<script>setTimeout("window.location=\'chitietkenh.php\'",1000);</script>';
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết kênh</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <style>
        .container {
            margin: 25px auto;
        }
    </style>
</head>

<body>
    <div class="container">
        <?php
        // show error
        if (isset($error)) {
            if ($showMess == false) {
                echo "<div class='alert alert-danger alert-dismissible'>";
                echo "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                echo "<h4><i class='icon fa fa-ban'></i> Lỗi!</h4>";
                foreach ($error as $err) {
                    echo $err . "<br/>";
                }
                echo "</div>";
            }
        }
        ?>

        <?php
        // show error
        if (isset($success)) {
            if ($showMess == true) {
                echo "<div class='alert alert-success alert-dismissible'>";
                echo "<h4><i class='icon fa fa-check'></i> Thành công!</h4>";
                foreach ($success as $suc) {
                    echo $suc . "<br/>";
                }
                echo "</div>";
            }
        }
        ?>
        <form action="" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputState">Group</label>
                    <select name="id_group" class="form-control">
                        <?php
                        if (isset($_REQUEST['IDGROUP'])) {
                            $id_g = $_REQUEST['IDGROUP'];
                            $loadcbb = "SELECT * FROM `iptv_group` where id = '$id_g'";
                            $resurt = mysqli_query($conn, $loadcbb);
                            while ($row = mysqli_fetch_array($resurt)) {
                        ?>
                                <option value="<?= $row['id']; ?>" selected><?= $row['Name']; ?></option>
                            <?php }
                        }
                        if (empty($_REQUEST['IDGROUP'])) { ?>
                            <option value="0">Vui lòng chọn</option>
                            <?php

                            $loadcbb = "SELECT * FROM `iptv_group`";
                            $resurt = mysqli_query($conn, $loadcbb);
                            while ($row = mysqli_fetch_array($resurt)) {
                            ?>
                                <option value="<?= $row['id']; ?>"><?= $row['Name']; ?></option>
                        <?php }
                        } ?>
                    </select>

                </div>
                <div class="form-group col-md-6">
                    <label for="">Logo</label>
                    <input type="text" name="Logo" class="form-control" id="" placeholder="Logo">
                    <a href="https://antu-alt-f4.github.io/api-img/" target="_blank">img api</a>
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress">Name</label>
                <input type="text" class="form-control" name="Name" id="inputAddress" placeholder="Name">
            </div>

            <div class="form-group">
                <label for="inputAddress2">Nguồn phát lại: </label>
                <input type="text" class="form-control" name="catchup_source" id="inputAddress2" placeholder="catchup-source">
            </div>

            <div class="form-group">
                <label for="inputAddress2">Lịch Phát Sóng</label>
                <input type="text" class="form-control" name="lichphatsong" id="inputAddress2" placeholder="ID chứa lịch phát sóng">
            </div>

            <div class="form-group">
                <label for="inputAddress2">Server</label>
                <input type="text" class="form-control" name="Server" id="inputAddress2" placeholder="Server">
            </div>

            <button type="submit" name="Save" class="btn btn-primary">Save</button>
        </form>


        <div class="card-deck" style="margin-top: 75px;">
            <div class="row">
                <?php
                if (isset($_REQUEST['IDGROUP'])) {
                    $id_g = $_REQUEST['IDGROUP'];
                    $loadcbb = "SELECT iptv.id,iptv_group.Name,logo,iptv.name,server  FROM iptv,iptv_group WHERE iptv.id_group = iptv_group.id AND iptv.id_group = '$id_g'";
                    $resurt = mysqli_query($conn, $loadcbb);
                    while ($row = mysqli_fetch_array($resurt)) {
                ?>
                        <div class="col-md-4 col-sm-2 col-4 box">
                            <img class="card-img-top" src="<?= $row['logo'] ?>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"><?= $row['name'] ?></h5>
                            </div>
                        </div>
                    <?php } ?>

                    <?php
                }
                if (empty($_REQUEST['IDGROUP'])) {
                    $id_g = $_REQUEST['IDGROUP'];
                    $loadcbb = "SELECT iptv.id,iptv_group.Name,logo,iptv.name,server  FROM iptv,iptv_group WHERE iptv.id_group = iptv_group.id";
                    $resurt = mysqli_query($conn, $loadcbb);
                    while ($row = mysqli_fetch_array($resurt)) {
                    ?>
                        <div class="col-md-4 col-sm-2 col-4 box">
                            <img class="card-img-top" src="<?= $row['logo'] ?>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"><?= $row['name'] ?></h5>
                            </div>
                        </div>
                    <?php } ?>

                <?php
                }
                ?>


            </div>
        </div>
    </div>
</body>

</html>