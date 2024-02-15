create table buy(

b_no bigint primary key auto_increment,

m_no bigint,

p_no bigint,

p_name varchar(20),

p_price varchar(45),

p_image varchar(50),

b_regdate timestamp default current_timestamp

);

​

create table product(

p_no bigint primary key auto_increment,

p_name varchar(50),

p_price varchar(10),

p_image varchar(50),

p_creator varchar(50),

p_regdate varchar(10),

p_readcount bigint,

p_etc varchar(500)

);

​

create table imagefile(

i_no bigint primary key auto_increment,

i_pno bigint,

i_name varchar(200),

i_uploadpath varchar(200)

);

​

create table member(

m_no bigint primary key auto_increment,

m_id varchar(12),

m_pw varchar(16),

m_pw2 varchar(16),

m_name varchar(5),

m_email varchar(50),

m_point varchar(10),

m_access bigint

);

​