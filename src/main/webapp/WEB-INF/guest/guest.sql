/* guest.sql */
show tables;

create table guest (
	idx int not null auto_increment primary key, /* 1.방명록 고유 번호 */
	name varchar(20) not null, 					 /* 2.방명록 작성자 성명 */
	content text  not null,						 /* 3.방명록 내용 */
	email varchar(60),							 /* 4.메일 주소 */
	homePage varchar(60),						 /* 5.홈페이지 주소(블로그 주소)*/
	visitDate datetime default now(),			 /* 6.방문 일자 */
	hostIp varchar(30) not null					 /* 7.방문자 접속 IP */
);

desc guest;

insert into guest values (default,'관리자','방명록 서비스를 시작 합니다.', 'kot5482@icloud.com', default, default, '192.168.50.82');

select * from guest;

drop table guest;