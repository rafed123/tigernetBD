drop table revenue;
drop table courseSchedule;
drop table batch;
drop table course;
drop table student;
drop table employee;
drop table users;

create TABLE users
(
	email varchar(100) not null,
	name varchar(100) not null,
	password varchar(50) not null,
	role varchar(20) not null,
	accountStatus varchar(10) not null default 'inactive',
	CONSTRAINT userPK PRIMARY KEY(email)
);

INSERT INTO users values('bsse0707@iit.du.ac.bd','Nafis Faisal','nafis','Teacher','active');
INSERT INTO users values('bsse0709@iit.du.ac.bd','Md. Reshad Mollick','mou','Teacher','active');
INSERT INTO users values('bsse0727@iit.du.ac.bd','Afrina Sharmin','mahi','Accountant','active');
INSERT INTO users values('bsse0731@iit.du.ac.bd','Moumita Asad','mou','Course Manager','active');
INSERT INTO users values('bsse0733@iit.du.ac.bd','Rafed Muhammad Yasir','rafed','Teacher','active');

INSERT INTO users values('moumita.asad@yahoo.com','Moumita','mou','Student','active');

create TABLE employee
(
	email varchar(100) not null,
	salary DOUBLE not null,
	salaryReceivedDate DATETIME,
	CONSTRAINT employeePK PRIMARY KEY(email),
	CONSTRAINT employeeFK foreign key(email) references users(email)
);
 
INSERT INTO employee(email,salary) values('bsse0727@iit.du.ac.bd','15000');

create TABLE student
(
	email varchar(100) not null,
	currentStatus varchar(10) not null default 'inactive',
	CONSTRAINT studentPK PRIMARY KEY(email),
	CONSTRAINT studentFK foreign key(email) references users(email)
);

INSERT INTO student values('moumita.asad@yahoo.com','active');

create TABLE course
(
	name varchar(50) not null,
	fee FLOAT not null,
	CONSTRAINT coursePK PRIMARY KEY(name)
);

INSERT INTO course values('HTML', '700');
INSERT INTO course values('CSS', '700');
INSERT INTO course values('Javascript','1000');
INSERT INTO course values('PHP','12000');
INSERT INTO course values('MySQL','500');
INSERT INTO course values('Wordpress','2000');
INSERT INTO course values('Web designing','1000');
INSERT INTO course values('Server administration','1000');

create TABLE batch
(
	id bigint not null AUTO_INCREMENT,
	studentEmail varchar(100) not null,
	courseName varchar(50) not null,
	paymentAmount FLOAT not null,
	paymentDate DATETIME not null,
	CONSTRAINT batchPK PRIMARY KEY(id),
	CONSTRAINT batchFK foreign key(studentEmail) references users(email),
	CONSTRAINT batchFK2 foreign key(courseName) references course(name)
);

INSERT INTO batch(studentEmail,courseName,paymentAmount,paymentDate) values('moumita.asad@yahoo.com','Wordpress','500','2017-10-02');

create TABLE courseSchedule
(
	courseName varchar(50) not null,
	day varchar(10) not null,
	teacherEmail varchar(100) not null,
	duration varchar(30) not null,
	CONSTRAINT courseSchedulePK PRIMARY KEY(day,duration),
	CONSTRAINT courseScheduleFK foreign key(teacherEmail) references users(email),
	CONSTRAINT courseScheduleFK2 foreign key(courseName) references course(name)
);

create TABLE revenue
(
	id bigint not null AUTO_INCREMENT,
	category varchar(30) not null,
	amount double not null,
	dateOfEntry DATETIME not null,
	CONSTRAINT batchPK PRIMARY KEY(id)
);

