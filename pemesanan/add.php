<html>

<head>
    <title>Add Users</title>
</head>

<body>
    <a href="index.php">Go to Home</a>
    <br /><br />

    <form action="add.php" method="post" name="form1">
        <table width="25%" border="0">
            <tr>
                <td>id</td>
                <td><input type="number" name="id"></td>
            </tr>
            <tr>
                <td>id_lapangan</td>
                <td><input type="number" name="id_lapangan"></td>
            </tr>
            <tr>
                <td>nama_lapangan</td>
                <td><input type="text" name="nama_lapangan"></td>
            </tr>
            <tr>
                <td>jenis_lapangan</td>
                <td><input type="text" name="jenis_lapangan"></td>
            </tr>
            <tr>
                <td>harga_normal</td>
                <td><input type="number" name="harga_normal"></td>
            </tr>
            <tr>
                <td>harga_weekend</td>
                <td><input type="number" name="harga_weekend"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Submit" value="Add"></td>
            </tr>
        </table>
    </form>

    <?php

    // Check If form submitted, insert form data into users table.
    if (isset($_POST['Submit'])) {
        $id = $_POST['id'];
        $id_lapangan = $_POST['id_lapangan'];
        $nama_lapangan = $_POST['nama_lapangan'];
        $jenis_lapangan = $_POST['jenis_lapangan'];
        $harga_normal = $_POST['harga_normal'];
        $harga_weekend = $_POST['harga_weekend'];

        // include database connection file
        include_once("config.php");

        // Insert user data into table
        $result = mysqli_query($mysqli, "INSERT INTO tabel_lapangan (id,id_lapangan,nama_lapangan,jenis_lapangan,harga_normal,harga_weekend) VALUES('$id','$id_lapangan','$nama_lapangan','$jenis_lapangan','$harga_normal','$harga_weekend')");

        // Show message when user added
        echo "User added successfully";
        header("Location: index.php");
    }
    ?>
</body>

</html>