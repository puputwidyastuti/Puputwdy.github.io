<?php
require 'koneksi.php';
$id = $_GET['id'];

$result = mysqli_query($conn, "SELECT * FROM users WHERE id=$id");

$users = [];

while ($row = mysqli_fetch_assoc($result)) {
    $users[] = $row;
}

$users = $users[0];




if (isset($_POST["tambah"])) {
    $nama = htmlspecialchars($_POST["nama"]);
    $stok = htmlspecialchars($_POST["stok"]);
    $varian = htmlspecialchars($_POST["varian"]);
    $jenis = htmlspecialchars($_POST["jenis"]);

    $sql = "UPDATE users SET
            stok = '$stok',
            nama = '$nama',
            varian = '$varian',
            jenis = '$jenis'
            WHERE id = $id";

    $result = mysqli_query($conn, $sql);

    if ( $result ) {
        echo"
            <script>
                alert('Data berhasil diubah');
                document.location.href = 'index.php';
            </script>
        ";
    }else{
        echo"
            <script>
                alert('Data gagal diubah');
                document.location.href = 'edit.php';
            </script>
        ;
    }
}




?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Data</title>
</head>
<body>
    <h1>Edit Data</h1>
    <form action="" method="post">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <label for="stok">stok : </label>
        <input type="number" name="stok" value="<?php echo $users["stok"]; ?>" ><br><br>
        <label for="nama">Nama : </label>
        <input type="text" name="nama" value="<?php echo $users["nama"]; ?>"><br><br>
        <label for="varian">varian : </label>
        <input type="text" name="varian" value="<?php echo $users["varian"]; ?>"><br><br>
        <label for="jenis">jenis : </label>
        <input type="text" name="jenis" value="<?php echo $users["jenis"]; ?>"><br><br>
        <button type="submit" name="tambah">Edit</button>
    </form>
</body>
</html>