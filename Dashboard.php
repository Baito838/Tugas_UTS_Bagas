<?php include('header.php'); ?>
<?php include('sidemenu.php'); ?>

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

        

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                </div>

            <!-- Content Row -->
            <div class="row">
<?php
include_once("connection.php");
$result_peserta = mysqli_query($mysqli, "select count(nim) as total_peserta from tab_peserta");
$total_peserta = mysqli_fetch_assoc($result_peserta);
if(empty($total_peserta)){ $t_peserta = "0"; }else{ $t_peserta = $total_peserta['total_peserta'];}

$result_panitia = mysqli_query($mysqli, "select count(nim) as total_panitia from tab_panitia");
$total_panitia = mysqli_fetch_assoc($result_panitia);
if(empty($total_panitia)){ $t_panitia = "0"; }else{ $t_panitia = $total_panitia['total_panitia'];}

?>
            <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-6 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Total Peserta</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $t_peserta; ?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fa-solid fa-beat-fade fa-user fa-2x text-black"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-6 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                    Total Panitia</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $t_panitia; ?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fa- fa-beat-fade fa-solid fa-people-group fa-2x text-black"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <br style="display: block;">
            <!-- Content Row -->
            <h3>Tata Tertib</h3>
            <table class="table align-middle table-row-dashed fs-6 gy-5" id="datatable">
					<thead>
						<tr class="text-start text-gray-400 fw-bolder fs-7 text-uppercase gs-0">
							<th class="min-w-15px">No.</th>
							<th class="min-w-225px">Nama Tata Tertib</th>
							
						</tr>
					</thead>
					<tbody class="fw-bold text-gray-600">
						<?php

						include_once("connection.php");
						$no = 0;
						$result = mysqli_query($mysqli, "SELECT * FROM tab_tata_tertib");
						while ($row = mysqli_fetch_array($result)) {
							$no++;
							echo "<tr>";
							echo "<td>" . $no . "</td>";
							echo "<td>" . $row['tata_tertib'] . "</td>";
							echo "</tr>";
						}
						?>
					</tbody>
					</tbody>
				</table>

            <!-- Content Row -->
        

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
    
    <script src="https://kit.fontawesome.com/308efbf9d4.js" crossorigin="anonymous"></script>
    <?php include('footer.php'); ?>