<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
        <!-- Brand -->
        <div class="sidenav-header  align-items-center">
            <a class="navbar-brand" href="<?= base_url() ?>admin">
                <i class="text-primary"></i>
                <span class="h2 text-blue"> Burjo One Star 99</span>
            </a>
        </div>
        <div class="navbar-inner">
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Nav items -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url() ?>admin">
                            <i class="ni ni-tv-2 text-primary"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
                </ul>
                
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url() ?>makanan">
                            <i class="fa fa-utensils text-primary"></i>
                            <span class="nav-link-text">Makanan & Minuman</span>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url() ?>meja">
                            <i class="fa fa-table text-primary"></i>
                            <span class="nav-link-text">Manajemen Meja</span>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url() ?>pembayaran">
                            <i class="fa fa-edit text-primary"></i>
                            <span class="nav-link-text">Riwayat Pembayaran</span>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url() ?>penjualan">
                            <i class="fa fa-money-bill-wave text-primary"></i>
                            <span class="nav-link-text">Data Penjualan</span>
                        </a>
                    </li>
                </ul>
                <?php
                if ($this->session->userdata('jabatan') == "admin") {
                ?>
                <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>profilusaha">
                                <i class="fa fa-home text-primary"></i>
                                <span class="nav-link-text">Profil Usaha</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>profilusaha/edit">
                                <i class="fa fa-cog text-primary"></i>
                                <span class="nav-link-text">Edit Profil Usaha</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>admin/daftar_pegawai">
                                <i class="fa fa-people-carry text-primary"></i>
                                <span class="nav-link-text">Kelola Admin</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>profilusaha/metode_pembayaran">
                                <i class="fa fa-money-bill text-primary"></i>
                                <span class="nav-link-text">Metode Pembayaran</span>
                            </a>
                        </li>
                    </ul>
                <?php
                }
                ?>
            </div>
        </div>
    </div>
</nav>