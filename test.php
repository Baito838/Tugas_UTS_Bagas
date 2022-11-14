<?php include('header.php'); ?>
<?php include('sidemenu.php'); ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Data Tables</title>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <script src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>


</head>

<body>


    <table id="tabel-data" class="table table-striped table-bordered" width="100%" cellspacing="0">
        <thead>
            <tr>
                <td>No.</td>
                <td>NIM</td>
                <td>NAMA</td>
                <td>PRODI</td>
                <td>KELAS</td>
                <td>SEMESTER</td>
                <td>EMAIL</td>
                <td>NO_HP</td>
                <td>ALAMAT</td>
                <td>JENIS KELAMIN</td>
                <td>FOTO</td>
                <td>AGAMA</td>
                <td>TEMPAT LAHIR</td>
                <td>TANGGAL LAHIR</td>
                <td>AKSI</td>
            </tr>
        </thead>
        <tbody>
            <?php
            include_once("connection.php");
            $no = 0;
            $result = mysqli_query($mysqli, "SELECT * FROM tab_peserta");
            while ($row = mysqli_fetch_array($result)) {
                $no++;
                echo "<tr>";
                echo "<td>" . $no . "</td>";
                echo "<td>" . $row['nim'] . "</td>";
                echo "<td>" . $row['nama'] . "</td>";
                echo "<td>" . $row['prodi'] . "</td>";
                echo "<td>" . $row['kelas'] . "</td>";
                echo "<td>" . $row['semester'] . "</td>";
                echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['no_hp'] . "</td>";
                echo "<td>" . $row['alamat'] . "</td>";
                echo "<td>";
                if ($row['jenis_kelamin'] == 1) {
                    echo "Laki-laki";
                } elseif ($row['jenis_kelamin'] == 2) {
                    echo "Perempuan";
                } else {
                    echo "Tak teridentifikasi";
                };
                echo "</td>";
                echo "<td>" . $row['foto'] . "</td>";
                echo "<td>" . $row['agama'] . "</td>";
                echo "<td>" . $row['tempat_lahir'] . "</td>";
                echo "<td>" . $row['tanggal_lahir'] . "</td>";
                echo "<td><a href=\"peserta_edit.php?nim=$row[nim]\">Edit</a> | 
                        <a href=\"peserta_pro_delete.php?nim=$row[nim]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>

    <script>
        $(document).ready(function() {
            $('#tabel-data').DataTable();
        });
    </script>


</body>

</html>