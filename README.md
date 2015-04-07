# comp4115-pa3

#############
#			#
# PART TWO  #
#			#
#############

	#Area
		mysql> select calc_area(4);
		+--------------+
		| calc_area(4) |
		+--------------+
		|           50 |
		+--------------+
		1 row in set (0.00 sec)

		mysql> mysql> select calc_area(66);
		+---------------+
		| calc_area(66) |
		+---------------+
		|         13685 |
		+---------------+
		1 row in set (0.00 sec)

		mysql> select calc_area(66.2);
		+-----------------+
		| calc_area(66.2) |
		+-----------------+
		|         13767.8 |
		+-----------------+
		1 row in set (0.00 sec)

		mysql> select calc_area(1.2);
		+----------------+
		| calc_area(1.2) |
		+----------------+
		|            4.5 |
		+----------------+
		1 row in set (0.00 sec)

	#Time
		mysql> select calculate_time(10800);
		+-----------------------+
		| calculate_time(10800) |
		+-----------------------+
		| 3:0:0                 |
		+-----------------------+
		1 row in set (0.00 sec)

		mysql> select calculate_time(7350);
		+----------------------+
		| calculate_time(7350) |
		+----------------------+
		| 2:2:30               |
		+----------------------+
		1 row in set (0.00 sec)

		mysql> select calculate_time(8230);
		+----------------------+
		| calculate_time(8230) |
		+----------------------+
		| 2:17:10              |
		+----------------------+
		1 row in set (0.00 sec)

		mysql> select calculate_time(7320);
		+----------------------+
		| calculate_time(7320) |
		+----------------------+
		| 2:2:0                |
		+----------------------+
		1 row in set (0.00 sec)

#############
#			#
# PART FOUR #
#			#
#############

	#Procedure: Name
		mysql> call names('Bouloucos');$$
		+---------------+-----------+
		| first_name    | last_name |
		+---------------+-----------+
		| Cristinel     | Bouloucos |
		| Vishv         | Bouloucos |
		| Kazuhide      | Bouloucos |
		| Oguz          | Bouloucos |
		| Gennady       | Bouloucos |
		| ......		|			|

		195 rows in set (0.08 sec)

		Query OK, 0 rows affected (0.08 sec)


		mysql> call names('Sachin');$$
		+------------+---------------+
		| first_name | last_name     |
		+------------+---------------+
		| Sachin     | Peot          |
		| Sachin     | Bach          |
		| Sachin     | Kisuki        |
		| Sachin     | Conry         |
		| ....		 |				 |

		232 rows in set (0.09 sec)

		Query OK, 0 rows affected (0.09 sec)

	#Procedure: Average
		mysql> call daAvg('d009');
		    -> $$
		+----------------------+
		| avg(salaries.salary) |
		+----------------------+
		|           58770.3665 |
		+----------------------+
		1 row in set (0.19 sec)

		Query OK, 0 rows affected (0.19 sec)

		mysql> call daAvg('d001');$$
		+----------------------+
		| avg(salaries.salary) |
		+----------------------+
		|           71913.2000 |
		+----------------------+
		1 row in set (0.18 sec)

		Query OK, 0 rows affected (0.18 sec)


	#Procedure: Gender
		mysql> call gender('F');
	    	-> $$
		+---------------+
		| count(emp_no) |
		+---------------+
		|        120051 |
		+---------------+
		1 row in set (0.07 sec)

		mysql> call gender('M');$$
		+---------------+
		| count(emp_no) |
		+---------------+
		|        179973 |
		+---------------+
		1 row in set (0.06 sec)

		Query OK, 0 rows affected (0.06 sec)