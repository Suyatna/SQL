CREATE database perpustakaan22;
use perpustakaan22;

CREATE TABLE  buku  (
  id_buku varchar(8) PRIMARY KEY,
  nama_buku varchar(15) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE  penulis  (
  id_penulis varchar(8) PRIMARY KEY,
  nama varchar(15) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE  detail_penulis  (
  id_detail_penulis int(11) PRIMARY KEY AUTO_INCREMENT,
  id_buku varchar(8),
  id_penulis varchar(8),
  CONSTRAINT fk_id_buku FOREIGN KEY (id_buku) REFERENCES buku (id_buku),
  CONSTRAINT fk_id_penulis FOREIGN KEY (id_penulis ) REFERENCES  penulis  ( id_penulis )
) ENGINE=InnoDB;

  -- tambah field kategori_buku
  alter TABLE buku
  ADD column kategori_buku varchar(20);

 

  -- tambah field Alamat
  alter TABLE penulis
  ADD column Alamat varchar(31);

  

  -- hapus kolom kategori_buku
  alter TABLE buku
  drop kategori_buku;

  

  -- ganti nama detail_penulis dengan detail_buku
  alter TABLE detail_penulis
  rename detail_buku;

  

  -- -hapus semua FOREIGN KEY
  alter TABLE detail_buku
  drop FOREIGN KEY fk_id_buku;

  alter TABLE detail_buku
  drop FOREIGN KEY fk_id_penulis;

      

  -- hapus PRIMARY KEY
  alter TABLE buku
  drop PRIMARY KEY;

  alter TABLE penulis
  drop PRIMARY KEY; 
  
  