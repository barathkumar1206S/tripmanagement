create table package
(
package_id number(4) NOT NULL primary key,
Boarding_place VARCHAR2(40),
destination varchar2(40),
package_type varchar2(20),
amount number(20),
no_of_days number(20),
max_no_of_seats number(20)
);

create table registration
(
user_id number(4) NOT NULL primary key,
first_name  VARCHAR2(40),
last_name VARCHAR2(40),
gender VARCHAR2(10),
dob date,
phone_number number(10),
email VARCHAR2(25),
password VARCHAR2(10),
role VARCHAR2(20)
);

create table payments(
payment_id number(4)not null primary key,
from_date date,
payment_amount number(12,2),
trip_id	 NUMBER(4),
FOREIGN KEY (trip_id) REFERENCES trip(trip_id),
user_id number(4),
FOREIGN KEY (user_id) REFERENCES registration(user_id)
);

create  table trip(
trip_id	 NUMBER(4) not null primary key,
package_id number(4),
FOREIGN KEY (package_id) REFERENCES package(package_id),
start_date date,
end_date date,
Booked_passengers number(10),
trip_status varchar2(20)
);