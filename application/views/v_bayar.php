<div class="row">
	<div class="col-sm-6">
		<div class="card card-primary">
			<div class="card-header">
				<h3 class="card-title">No Rekening Toko</h3>
			</div>
			<div class="card-body">

				<p>Silahkan Transfer Uang Ke No Rekening Di Bawah Ini Sebesar : <h1 class="text-primary">Rp. <?= number_format($pesanan->total_bayar, 0) ?>.-</h1>
				</p><br>
				<table class="table">
					<tr>
						<th>Bank</th>
						<th>No Rekening</th>
						<th>Atas Nama</th>
					</tr>
					<?php foreach ($rekening as $key => $value) { ?>
						<tr>
							<td><?= $value->nama_bank ?></td>
							<td><?= $value->no_rek ?></td>
							<td><?= $value->atas_nama ?></td>
						</tr>
					<?php } ?>
				</table>
				
				<a href="<?= base_url('pesanan_saya/submit/' . $pesanan->id_transaksi) ?>" class="btn btn-sm btn-flat btn-warning">submit</a>
			</div>
		</div>
	</div>
	

</div>
