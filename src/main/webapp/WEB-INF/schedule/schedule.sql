/* schedule.sql */

show tables;

create table schedule (
	idx		int not null auto_increment primary key,
	mid		varchar(20) not null,											/* 회원 아이디(일정 검색시 필요)*/
	sDate	datetime not null,												/* 일정 등록 날짜 */
	part	varchar(10) not null,											/* 분류(1.모임, 2.업무, 3.학습 4.기타) */
	content text not null													/* 일정 상세 내역 */	
);

desc schedule;
drop table schedule;

insert into schedule values (default, 'hkd1234', '2023-05-17', '학습', 'JSP 주제발표');
insert into schedule values (default, 'hkd1234', '2023-05-18', '기타', '휴식 시간');
insert into schedule values (default, 'hkd1234', '2023-05-19', '모임', '프로젝트 뒷풀이');
insert into schedule values (default, 'hkd1234', '2023-05-22', '업무', 'JSP 프로젝트 발표준비');
insert into schedule values (default, 'hkd1234', '2023-05-23', '업무', 'JSP 프로젝트 발표준비');
insert into schedule values (default, 'hkd1234', '2023-05-24', '업무', 'JSP 프로젝트 발표');
insert into schedule values (default, 'hkd1234', '2023-06-04', '업무', 'JSP 프로젝트 최종 발표');
insert into schedule values (default, 'hkd1234', '2023-06-11', '업무', 'JSP 프로젝트 성적 발표');
insert into schedule values (default, 'kot5482', '2023-05-22', '업무', 'JSP 프로젝트 발표준비');
insert into schedule values (default, 'kot5482', '2023-05-23', '업무', 'JSP 프로젝트 발표');
insert into schedule values (default, 'kot5482', '2023-05-27', '업무', '기획 수정');
insert into schedule values (default, 'kot5482', '2023-05-28', '모임', '산책');
insert into schedule values (default, 'kot5482', '2023-06-03', '기타', '휴식 시간');
insert into schedule values (default, 'kot5482', '2023-06-04', '기타', '휴식 시간');
insert into schedule values (default, 'kot5482', '2023-06-14', '업무', 'JSP 프로젝트 최종 발표');
insert into schedule values (default, 'kot5482', '2023-06-15', '업무', 'JSP 프로젝트 성적 발표');

select * from schedule where mid = 'hkd1234' order by sDate desc;

select * from schedule where mid = 'hkd1234' and sDate='2023-05-17' order by sDate desc;
select * from schedule where mid = 'hkd1234' and date_format(sDate,'%Y-%m-%d')= '2023-05-17' order by sDate desc;
select * from schedule where mid = 'hkd1234' and sDate='2023-05' order by sDate desc;
select * from schedule where mid = 'hkd1234' and date_format(sDate, '%Y-%m')='2023-5' order by sDate desc;
select * from schedule where mid = 'hkd1234' and date_format(sDate, '%Y-%m')='2023-05' order by sDate desc;


select * from schedule where mid = 'hkd1234' and date_format(sDate, '%Y-%m')='2023-05' order by sDate desc, part;








