
<main id="main">

  <section id="about" class="about">
    <div class="container">
<br>
<br>
      <div class="section-title">
        <br>
        <h2>TENTANG <?= $nama_usaha ?></h2>
      </div>
<center>
      <div class="col-lg-6">
          <img style="width: 50%;" src="<?php echo base_url('assets/dataresto/foto_usaha/' . $foto_usaha_1) ?>" />
        </div> 
        <br>
      <div class="col-lg-6 pt-4 pt-lg-0">
        <p><?= $deskripsi ?></p>
        </div>
      </div>
    </center>
  </section>

  <section id="about" class="about">
    <div class="container">
      <div class="section-title">
        <h2>Informasi <?= $nama_usaha ?></h2>
        <p>Selamat Datang di Burjo One star 99</p>
            <p>Alamat : <?= $alamat ?></p>
            <p></i>No Telepon : <?= $nomor_telepon ?></p>
            <p></i>Instagram : <a href="https://instagram.com/<?= $instagram ?>">@<?= $instagram ?></a></p>
      </div>
    </div>
  </section>

</main>