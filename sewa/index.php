<?php
// Create database connection using config file
include_once("config.php");

// Fetch all users data from database
$result = mysqli_query($mysqli, "SELECT * FROM tabel_sewa ORDER BY id DESC");
$user_data = mysqli_fetch_array($result);

include("../menu.php");
?>

<html>

<head>
    <title>Homepage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
    <div class="container">
        <div>
            <a type="button" href="add.php" class="btn btn-primary m-5 float-end">Add data</a>
        </div>

        <table class="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>nama_penyewa</th>
                    <th>tanggal_sewa</th>
                    <th>hari_sewa</th>
                    <th>metode_bayar</th>
                    <th>status</th>
                    <th>harga</th>
                    <th>durasi_sewa</th>
                </tr>
            </thead>
            <tbody>

                <?php
                $no = 1;
                while ($user_data = mysqli_fetch_array($result)) {
                ?>
                    <tr>
                        <td> <?= $no ?></td>
                        <td> <?= $user_data['nama_penyewa'] ?></td>
                        <td> <?= $user_data['tanggal_sewa'] ?></td>
                        <td> <?= $user_data['hari_sewa'] ?></td>
                        <td> <?= $user_data['metode_bayar'] ?></td>
                        <td> <?= $user_data['status'] ?></td>
                        <td> <?= $user_data['harga'] ?></td>
                        <td> <?= $user_data['durasi_sewa'] ?></td>
                        <td>
                            <a href="edit.php?id=<?= $user_data['id'] ?>" type="button" class="btn btn-info">Edit</a>
                            <a href="delete.php?id=<?= $user_data['id'] ?>" type="button" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                <?php
                    $no++;
                }
                ?>
            </tbody>

        </table>
    </div>
    <script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>