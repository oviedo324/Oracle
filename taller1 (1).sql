--Juan David Oviedo TallerSqlBasico Workshop 
--a Seleccionar el listado de todas las columnas de todos los empleados
select *  from employees e;
--b todas las columnas de todos los empleados ordenados por nombre y apellido
select *  from employees e order by e.first_name, e.last_name;
--c  empleados que el nombre empieza por K
Select * FROM employees e  WHERE e.first_name LIKE 'K%';
--d Seleccionar los empleados que su nombre empieza por la letra K y ordena su orden de presentación.
select *  FROM employees e  WHERE e.first_name  LIKE 'K%'  ORDER BY e.last_name;
--e Seleccionar el número (código), del departamento con la cantidad de empleados que hay en él.
Select department_id,Count(*) from employees group by department_id;
--f Averigüe cual es la máxima cantidad máxima de empleados que departamento alguno tenga
Select Max(Count(department_id))From employees Group by department_id;
--g Seleccionar el número y nombre del empleado con el nombre del departamento en el que trabaja.
select c.employee_id, c.first_name, d.department_name from employees c, departments d where c.department_id = d.department_id; 
--h Seleccionar el número, nombre y salario de los empleados que trabajan en el departamento SALES.
select c.employee_id, c.first_name, c.salary from employees c, departments d where c.department_id = d.department_id and UPPER(d.department_name)= 'SALES';
--I Igual a la anterior pero ordenado de mayor a menor salario.
select c.employee_id, c.first_name, c.salary from employees c, departments d where c.department_id = d.department_id and UPPER(d.department_name)= 'SALES' ORDER BY C.SALARY desc;
--j Seleccionar el número y nombre de cada empleado junto con su salario y grado salarial
select c.employee_id,c.first_name, c.salary ,s.grade from employees c, salgrade s where c.salary BETWEEN s.losal and s.hisal; 
--k Seleccionar los números, nombres y grados salariales de los empleados que tienen grados salariales 2, 4 o 5.
select c.employee_id,c.first_name, c.salary ,s.grade from employees c, salgrade s where c.salary BETWEEN s.losal and s.hisal and s.grade in (2,4,5);
--m Seleccionar el nombre del departamento con el promedio salarial ordenado de mayor a menor.
select d.department_name, Avg(e.salary) from employees e, departments d where e.department_id = d.department_id group by d.department_id order by d.department_name;
--n Seleccionar el número (código), del departamento con la cantidad de empleados del departamento con mayor número de empleados.
select department_id, Count(department_id) from employees group by department_id having Count(department_id) = (select max( Count (department_id)) from employees group by department_id);
--o  Seleccionar los jefes (manager), presentando el número (código), nombres y el ombre del departamento donde trabajan.
select DISTINCT m.employee_id , m.first_name, m.last_name , d.department_name from employees e, employees m, department d where e.manager_id = m.employee_id and m.department_id = d.department_id;
--pDeterminar los nombres de cada empleado junto con el grado salarial del mpleado, el grado salarial del jefe y la diferencia de grado salarial existente con su efe (grado del jefe – grado del empleado).
select e.first_name, e.last_name, se.grade g_emp, sm.grade g_mgr, sm.grade-se.grade g_dif from employees e, employees m, salgrade se, salgrade sm where e.salary between se.losal and se.hisal and m.salary BETWEEN sm.losal and sm.hisal and e.manager_id = m.employee_id;
--q Determinar los códigos y nombres de los distintos departamentos en donde hayal menos un empleado que gana más de 3000 (Que no hayan tuplas repetidas).
select DISTINCT d.department_id, d.department_name from employees e, departments d where  e.department_id = d.department_id and e.salary > 3000; 
--r Determinar los códigos y nombres de los distintos departamentos en donde hayal menos dos empleados distintos que ganan más de 2500
select d.department_id, d.department_name, Count( d.department_id) QTY from employees e, departments_id and e.salary > 2500 group by d.department_id,d.department_name  having Count(d.department_id) >= 2; 
--sDeterminar los números y nombres de los empleados que ganan más dinero quesu respectivo jefe.
select e.employee_id, e.first_name, e.last_name from employees e, employees m where e.manager_id = m.employees m where e.manager_id = m.employee_id and e.salary > m.salary;
--u Determinar los números y nombres de los departamentos en donde todos los mpleados ganan más de 3000.
select d.department_id, d.department_name from employees e, departments d where e.department_id = d.department_id group by d.department_id, d.department_name having Count(d.department_id) = (select Count (*) from employees sce where sce.department_id = d.department_id and sce.salary > 3000);
--vDeterminar los números y nombres de los departamentos en donde todos los  empleados ganan más de 3000 y existe al menos un jefe que gana más de 5000.
select d.department_id, d.department_name from employees e, employees m, departments d where e.department_id = d.department_id and e.manager_id = m.employee_id and  d.department_id in (select DISTINCT scm.department_id FROM employees scm where  scm.salary > 5000 and scm.employee_id in (select DISTINCT ssce.manager_id from employees ssce)) group by d.department_id, d.department_name having Count (d.department_id )= (select count (*) from employees sce where sce.department_id = d.department_id and sce.salary > 3000);
   
--w Determinar los números y nombres de los empleados que no son del  departamento 80 y que ganan más que cualquiera de los empleados del  departamento 80.
select * from employees where department_id <> 80 and salary > any (select se.salary from employees se where se.department_id=80) order by department_id; 

