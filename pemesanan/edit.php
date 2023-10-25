<?php
// include database connection file
include_once("config.php");

// Check if form is submitted for user update, then redirect to homepage after update
if (isset($_POST['update'])) {

    //print_r($_POST);
    //die;

    $id = $_POST['id'];
    $id_lapangan = $_POST['id_lapangan'];
    $nama_lapangan = $_POST['nama_lapangan'];
    $jenis_lapangan = $_POST['jenis_lapangan'];
    $harga_normal = $_POST['harga_normal'];
    $harga_weekend = $_POST['harga_weekend'];


    // update user data
    $result = mysqli_query($mysqli, "UPDATE tabel_lapangan SET id_lapangan='$id_lapangan',nama_lapangan='$nama_lapangan',jenis_lapangan='$jenis_lapangan',harga_normal=$harga_normal,harga_weekend=$harga_weekend WHERE id='$id'");

    // Redirect to homepage to display updated user in list
    header("Location: index.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];

// Fetech user data based on id
$result = mysqli_query($mysqli, "SELECT * FROM tabel_lapangan WHERE id=$id");

while ($user_data = mysqli_fetch_array($result)) {
    $id_lapangan = $user_data['id_lapangan'];
    $nama_lapangan = $user_data['nama_lapangan'];
    $jenis_lapangan = $user_data['jenis_lapangan'];
    $harga_normal = $user_data['harga_normal'];
    $harga_weekend = $user_data['harga_weekend'];
}
?>
<html>

<head>
    <title>Edit User Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <?php include("../menu.php");?>
    <div class="container m-5">

    <form name="update_user" method="post" action="edit.php">
        <div class="mb-3">
            <label class="form-label">ID Lapangan</label>
            <input type="number" name="id_lapangan" class="form-control" value=<?= $id_lapangan ?>>
        </div>
        <div class="mb-3">
            <label class="form-label">Nama Lapangan</label>
            <input type="text" name="nama_lapangan" class="form-control" value=<?= $nama_lapangan ?>>
        </div>
        <div class="mb-3">
            <label class="form-label">Jenis Lapangan</label>
            <input type="text" name="jenis_lapangan" class="form-control" value=<?= $jenis_lapangan ?>>
        </div>
        <div class="mb-3">
            <label class="form-label">Harga Normal</label>
            <input type="number" name="harga_normal" class="form-control" value=<?= $harga_normal ?>>
        </div>
        <div class="mb-3">
            <label class="form-label">Harga Weekend</label>
            <input type="number" name="harga_weekend" class="form-control" value=<?= $harga_weekend?>>
        </div> 

        <input type="hidden" name="id" value=<?= $id ?>>

        <div class="mb-3">
            <button type="submit" name="update" value="Update" class="btn btn-success float-end">Update</button>
        </div>
    </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>