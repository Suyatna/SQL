CREATE TABLE pegawai(
    id_pegawai int PRIMARY KEY AUTO_INCREMENT,
    Nama varchar(10) NOT null,
    Alamat varchar(10) NOT null,
    No_Telp varchar(10) NOT null,
    id_rekap int,
    CONSTRAINT foreign_id_rekap FOREIGN KEY (id_rekap) REFERENCES rekappenjualan(id_rekap)
    )ENGINE=INNODB