-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:16:01.684




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV char10()  NOT NULL,
    TenNV varchar(50)  NOT NULL,
    NgaySinh date  NOT NULL,
    GioiTinh char(10)  NOT NULL,
    Email varchar(50)  NOT NULL,
    MucLuong money  NOT NULL,
    MaPhong char(10)  NOT NULL,
    TPhongBan_MaPhong char(10)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);



-- Table: TPhongBan
CREATE TABLE TPhongBan (
    MaPhong char(10)  NOT NULL,
    TenPhong varchar(50)  NOT NULL,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (MaPhong)
);







-- foreign keys
-- Reference:  TNhanvien_TPhongBan (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongBan 
    FOREIGN KEY (TPhongBan_MaPhong)
    REFERENCES TPhongBan (MaPhong)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;






-- End of file.

