
--Juan David Oviedo Rodriguez 230171013
--------------------------------------------------------------------------------------------------------------------------------------------
-- a)Proyecte el id del departamento con la cantidad de empleados que hay en él
SELECT DEPARTMENT_ID, COUNT(EMPLOYEE_ID) FROM EMPLOYEES GROUP BY DEPARTMENT_ID
-- b)Averigüe cual es el departamento con la cantidad máxima de empleados.
SELECT MAX(COUNT(EMPLOYEE_ID)) EMPLEADOS FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
-- c)Proyecta los departamentos con la lista de los meses en que los empleados cumplen aniversario de contratación. La lista va al frente del código del departamento y está separada por comas.
SELECT TO_CHAR(HIRE_DATE, 'MON') ||','||DEPARTMENT_ID FROM EMPLOYEES;
-- d)Seleccione los empleados que cumplen aniversario de trabajo en el mes de mayo y proyecte su email, nombre, día y mes de ingreso a trabajar.
SELECT EMAIL, FIRST_NAME||' '||LAST_NAME, TO_CHAR(HIRE_DATE, 'DD-MON') FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE, 'MM') = '05';
-- e)Seleccione los empleados cuyo nombre y apellido inicien por la misma letra y proyecte el ID, nombre y apellido todo en mayúsculas.
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES  WHERE SUBSTR(FIRST_NAME, 1, 1) = SUBSTR(LAST_NAME, 1, 1);
-- f)Seleccione los empleados que ingresaron a trabajar en el mismo mes del mes actual 
SELECT 'Estimad@ '|| FIRST_NAME ||' es para nosotros un gusto que hayas compartido con nosotros durante los ultimos '||
(SELECT TO_CHAR(SYSDATE, 'DD') FROM DUAL)||
 ' dias. Queremos expresarte que 
  puedes contar con nosotros y que contamos 
  contigo. Por favor pasa el '|| LAST_DAY(SYSDATE)|| ' Por el salon principal para la celebracion'
FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE, 'MON') = (SELECT TO_CHAR(SYSDATE, 'MON') FROM DUAl);

-- g) id, nombre, apellido, salario y experiencia (1, 2, 3 o 4)
SELECT FIRST_NAME, LAST_NAME, SALARY,
      CASE
      WHEN TRUNC((SYSDATE - HIRE_DATE) / 365.25) BETWEEN 0 AND 5 THEN 'Experiencia 1'
      WHEN TRUNC((SYSDATE - HIRE_DATE) / 365.25) BETWEEN 5 AND 10 THEN 'Experiencia 2'
      WHEN TRUNC((SYSDATE - HIRE_DATE) / 365.25) BETWEEN 10 AND 15 THEN 'Experiencia 3'
      WHEN TRUNC((SYSDATE - HIRE_DATE) / 365.25) > 15 THEN 'Experiencia 4'
      END
FROM EMPLOYEES;

-- h) Fechas de cumplimiento de aniversario
SELECT E.EMPLOYEE_ID ID, E.FIRST_NAME NOMBRE, E.HIRE_DATE FECHA_INICIO, ADD_MONTHS(E.HIRE_DATE,12) FECHA_DESPUES_DE_UN_AÑO, TO_CHAR(E.HIRE_DATE, 'DD') ||' DE '|| TO_CHAR(E.HIRE_DATE, 'MONTH') FECHA_CUMPLE_AÑO,
next_day(E.HIRE_DATE, 'VIERNES') VIERNES_SIGUIENTE
FROM EMPLOYEES E;

-- i) año completo de calendario de pagos
SELECT e.department_id, TO_CHAR(ADD_MONTHS( e.hire_date, 1 ), 'MON') AS mes FROM employees e;

-- j) ¿Que hace el Query?
-- realiza una consulta para la sumatoria de salarios por meses y nivel del departamento creando la tabla donde se una muestra la tabla
-- k) ¿Que hace el Query?
-- realiza un registro para cada apellido y listado de apellidos separados por ; con la fecha de ingreso
-- l) ¿Que hace el query y en que terminos selecciona?
-- Concatena el nombre con el apellido y crea un alias denominado "employee"
