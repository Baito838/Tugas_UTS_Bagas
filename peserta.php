<?php include('header.php'); ?>
<?php include('sidemenu.php'); ?>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap4.min.css">
</head>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Peserta</h1>
    <p class="mb-4"> </p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <div class="row justify-content-between align-items-center px-3">
                <h6 class="m-0 font-weight-bold text-primary d-inline">Data peserta</h6>
                <a href="peserta_add.php" class="btn btn-primary">Tambah</a>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table id="datatable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>NIM</th>
                            <th>NAMA</th>
                            <th>PRODI</th>
                            <th>KELAS</th>
                            <th>SEMESTER</th>
                            <th>EMAIL</th>
                            <th>NO_HP</th>
                            <th>ALAMAT</th>
                            <th>JENIS KELAMIN</th>
                            <th>FOTO</th>
                            <th>AGAMA</th>
                            <th>TEMPAT LAHIR</th>
                            <th>TANGGAL LAHIR</th>
                            <th>AKSI</th>
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
                            echo "<td> <img src='gambar/" . $row['foto'] . "' width='80px'> </td>";
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
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js">
    $(document).ready(function() {
        $('#datatable').dataTable({
            "pagingType": "full_numbers"
        });
    });
</script>

<script language="javascript" type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js">
    $(document).ready(function () {
    $('#datatable').DataTable();
});
</script>

<?php include('footer.php'); ?>