<?php
require'koneksi.php';

$result = mysqli_query($conn, "SELECT * FROM users");

$users = [];

while ($row = mysqli_fetch_assoc($result)) {
    $users[] = $row;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <style>
        table tr th,table tr td {
            padding: 5px;
        }
    </style>
</head>
<body>
    <h1>ini halaman index</h1>
    <button><a href="tambah.php">Tambah Data</a></button>
    <table border=1px>
        <tr>
            <th>NO</th>
            <th>Stok</th>
            <th>Nama</th>
            <th>varian</th>
            <th>Jenis</th>
        </tr>
        <?php $i = 1; foreach ($users as $users):?>
        <tr>
            <td><?php echo $i ;?></td>
            <td><?php echo $users["stok"]; ?></td>
            <td><?php echo $users["nama"] ;?></td>
            <td><?php echo $users["varian"] ;?></td>
            <td><?php echo $users["jenis"] ;?></td>
            <td><a href="edit.php?id=<?php echo $users["id"]; ?>">Edit</a> 
            | <a href="hapus.php?id=<?php echo $users["id"]; ?>" onclick = "return confirm('And yakin ingin mengahpus data ini ?')">Hapus</a></td>
        </tr>
        <?php $i++; endforeach;?>
    </table>
    
</body>
</html>