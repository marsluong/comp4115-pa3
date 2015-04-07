delimiter //
create procedure names(IN given_name varchar(100))
begin
select first_name, last_name from employees where first_name = given_name 
OR last_name = given_name;
end 
//
delimiter ;


delimiter //
create procedure daAvg(IN given_id char(4))
begin
select avg(salaries.salary) from salaries
join dept_emp on salaries.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_no = given_id;
end 
//
delimiter ;

delimiter //
create procedure gender(IN given char(1))
begin
select count(emp_no) from employees where gender = given;
end 
//
delimiter ;