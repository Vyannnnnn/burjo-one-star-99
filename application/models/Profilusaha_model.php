
<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Profilusaha_model extends CI_Model
{
    public function getProfilUsaha()
    {
        $query = $this->db->query("SELECT * FROM profil_usaha");
        return $query->result_array();
    }

    public function getMetodePembayaran()
    {
        $query = $this->db->query("SELECT * FROM metode_pembayaran");
        return $query->result_array();
    }

    public function get_metode_by_id($id)
    {
        $query = $this->db->query("SELECT * FROM metode_pembayaran WHERE id_metode = $id");
        return $query->row();
    }

    public function tambah_metode_pembayaran()
    {
        $data = [
            'nama_merchant' => htmlspecialchars($this->input->post('nama_merchant', true)),
            'kode_pembayaran' => htmlspecialchars($this->input->post('kode_pembayaran', true)),
            'atas_nama' => htmlspecialchars($this->input->post('atas_nama', true)),
        ];
        $this->db->insert('metode_pembayaran', $data);
    }

    public function edit_metode_pembayaran()
    {
        $data = [
            'nama_merchant' => htmlspecialchars($this->input->post('nama_merchant', true)),
            'kode_pembayaran' => htmlspecialchars($this->input->post('kode_pembayaran', true)),
            'atas_nama' => htmlspecialchars($this->input->post('atas_nama', true)),
        ];
        $this->db->where('id_metode', $this->input->post('id_metode'));
        $this->db->update('metode_pembayaran', $data);
    }

    public function hapus_metode_pembayaran($id)
    {
        $this->db->where('id_metode', $id);
        $this->db->delete('metode_pembayaran');
    }

    public function edit_profil_usaha()
    {
        $pathFUsaha = "assets/dataresto/foto_usaha/";
        $current_usaha = $this->input->post('current_id');
        $getDataGambar = $this->db->query("SELECT * FROM profil_usaha WHERE id = $current_usaha");

        foreach ($getDataGambar->result_array() as $gambar) {
            $gambar1_old = $gambar['foto_usaha_1'];
            $gambar2_old = $gambar['foto_usaha_2'];
            $gambar3_old = $gambar['foto_usaha_3'];
        }

        if ($_FILES['foto_usaha_1']['size'] != 0) {
            $file_name1 = $_FILES['foto_usaha_1']['name'];
            $newfile_name1 = str_replace(' ', '', $file_name1);
            $config['upload_path']          = './assets/dataresto/foto_usaha';
            $newName = date('dmYHis') .  $newfile_name1;
            $config['file_name']         = $newName;
            $config['max_size']             = 10100;
            $config['allowed_types']        = 'jpg|png|jpeg';
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('foto_usaha_1')) {
                if ($gambar1_old != "1.jpg") {
                    unlink($pathFUsaha . $gambar1_old);
                }
                $data = [
                    'foto_usaha_1' => $newName
                ];

                $this->db->where('id', $current_usaha);
                $this->db->update('profil_usaha', $data);
            }
        }


        $data = [
            'nama_usaha' => htmlspecialchars($this->input->post('nama_usaha', true)),
            'deskripsi' => htmlspecialchars($this->input->post('deskripsi', true)),
            'alamat' => htmlspecialchars($this->input->post('alamat', true)),
            'nomor_telepon' => htmlspecialchars($this->input->post('nomor_telepon', true)),
            'email' => htmlspecialchars($this->input->post('email', true)),
            'instagram' => htmlspecialchars($this->input->post('instagram', true)),
        ];

        $this->db->where('id', $current_usaha);
        $this->db->update('profil_usaha', $data);
    }
}
