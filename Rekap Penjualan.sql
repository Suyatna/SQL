CREATE TABLE rekappenjualan(
    id_rekap int PRIMARY KEY AUTO_INCREMENT,
    Tgl_rekap varchar(10) NOT null,
    id_beli int,
    CONSTRAINT foreign_id_beli FOREIGN KEY (id_beli) REFERENCES membeli(id_beli)
    )ENGINE=INNODB