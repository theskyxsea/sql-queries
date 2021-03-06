SQL> SELECT ENAME FROM EMP WHERE SAL= ((SELECT MAX(SAL) FROM EMP)- (SELECT MIN(NULLIF(((SELECT MAX(SAL) FROM EMP)-SAL),0)) FROM EMP));

ENAME
----------
SCOTT
FORD

SQL> SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*)>2 AND SUM(SAL)>9000;

    DEPTNO
----------
        30
        20
        
SQL> SELECT COUNT(*), AVG(SAL) , DEPTNO FROM EMP WHERE SAL > NVL(COMM,0) GROUP BY DEPTNO;

  COUNT(*)   AVG(SAL)     DEPTNO
---------- ---------- ----------
         5       1630         30
         5       2175         20
         3 2916.66667         10

SQL> SELECT JOB , SUM(SAL) FROM EMP GROUP BY JOB;

JOB         SUM(SAL)
--------- ----------
CLERK           4150
SALESMAN        5600
PRESIDENT       5000
MANAGER         8275
ANALYST         6000

SQL> SELECT HIREDATE FROM EMP GROUP BY HIREDATE HAVING COUNT(*) >= 3;

no rows selected
