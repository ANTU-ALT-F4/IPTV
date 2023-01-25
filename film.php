<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Mục</title>
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
        include './config.php';
        if (isset($_POST['Save'])) {
            $error = array();
            $success = array();
            $showMess = false;

            $Name_Group = $_POST['Name_Group'];

            if (empty($_POST['Name_Group']))
                $error['Name_Group'] = 'Vui lòng nhập <b> Name_Group </b>';

            if (!$error) {
                $showMess = true;

                $insert = "INSERT INTO `iptv_group` (`id`, `Name`) VALUES (NULL, '$Name_Group')";
                mysqli_query($conn, $insert);
                $success['success'] = 'THÊM NHÓM THÀNH CÔNG.';
                echo '<script>setTimeout("window.location=\'film.php\'",1000);</script>';
            }
        }
        ?>
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
        <form class="form-inline" method="post" action="">
            <div class="form-group mb-2">
                <label readonly class="form-control-plaintext">Nhập tên nhóm</label>
            </div>
            <div class="form-group mx-sm-3 mb-2">
                <input type="text" class="form-control" name="Name_Group" placeholder="Name Group">
            </div>
            <button type="submit" name="Save" class="btn btn-primary mb-2">Save</button>
        </form>

        <div class="row">
            <div class="col-md-6">
                <a href="./IPTV.php">
                    <button class="card">
                        <div class="card-body">
                            <h5 class="card-title">Tất cả các kênh</h5>
                        </div>
                    </button>
                </a>
            </div>
            <div class="col-md-6">
                <a href="./chitietkenh.php?IDGROUP=">
                    <button class="card">
                        <div class="card-body">
                            <h5 class="card-title">Chi tiết kênh</h5>
                        </div>
                    </button>
                </a>
            </div>
            <?php
            $hienthinhom = "SELECT iptv_group.id, iptv_group.Name, COUNT(iptv.id) as tong FROM iptv,iptv_group WHERE iptv.id_group = iptv_group.id GROUP BY iptv_group.id,iptv_group.Name";
            $truyvan = mysqli_query($conn, $hienthinhom);
            while ($row = mysqli_fetch_array($truyvan)) {
            ?>
                <div class="col-md-6">
                    <button class="card">
                        <div class="card-body">
                            <a href="chitietkenh.php?IDGROUP=<?= $row['id']?>">
                                <h5 class="card-title"><?= $row['Name'] . '  ' . $row['tong'] ?></h5>
                            </a>
                        </div>
                    </button>
                </div>

            <?php } ?>
        </div>
    </div>
</body>

</html>