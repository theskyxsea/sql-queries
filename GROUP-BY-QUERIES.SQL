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

SQL> SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*)>2 AND SUM(SAL)>9000;

    DEPTNO
----------
        30
        20

SQL> SELECT COUNT(*), AVG(SAL) , DEPTNO FROM EMP WHERE SAL > COMM GROUP BY DEPTNO;

  COUNT(*)   AVG(SAL)     DEPTNO
---------- ---------- ----------
         3       1450         30

SQL> SELECT SAL FROM EMP GROUP BY SAL HAVING COUNT(SAL)>1;

       SAL
----------
      1250
      3000

SQL> SELECT ENAME FROM EMP GROUP BY ENAME HAVING COUNT(*)>1;

no rows selected

SQL> SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING AVG(SAL) > 2500 AND AVG(SAL) < 3000;

    DEPTNO
----------
        10

SQL> SELECT DEPTNO , COUNT(*) FROM EMP WHERE JOB IN ('MANAGER','ANALYST') AND SAL*12 LIKE '%0' GROUP BY DEPTNO;

    DEPTNO   COUNT(*)
---------- ----------
        30          1
        20          3
        10          1

SQL> SELECT DEPTNO , COUNT(*) FROM EMP WHERE JOB = 'CLERK' GROUP BY DEPTNO;

    DEPTNO   COUNT(*)
---------- ----------
        30          1
        20          2
        10          1

SQL> SELECT DEPTNO , MAX(SAL) FROM EMP WHERE JOB='MANAGER' GROUP BY DEPTNO;

    DEPTNO   MAX(SAL)
---------- ----------
        30       2850
        20       2975
        10       2450
        
 SQL> SELECT SAL , COUNT(*) FROM EMP GROUP BY SAL HAVING COUNT(*)>=2;

       SAL   COUNT(*)
---------- ----------
      1250          2
      3000          2

SQL> SELECT DEPTNO, COUNT(*) FROM EMP GROUP BY DEPTNO HAVING DEPTNO != 10;

    DEPTNO   COUNT(*)
---------- ----------
        30          6
        20          5

SQL> SELECT DEPTNO , COUNT(*) FROM EMP WHERE COMM IS NOT NULL GROUP BY DEPTNO;

    DEPTNO   COUNT(*)
---------- ----------
        30          4

SQL> SELECT DEPTNO , COUNT(*) FROM EMP WHERE JOB!='MANAGER' AND SAL>1600 GROUP BY DEPTNO;

    DEPTNO   COUNT(*)
---------- ----------
        20          2
        10          1

SQL> SELECT JOB , COUNT(*) FROM EMP WHERE MGR IS NOT NULL GROUP BY JOB;

JOB         COUNT(*)
--------- ----------
CLERK              4
SALESMAN           4
MANAGER            3
ANALYST            2

SQL> SELECT DEPTNO , HIREDATE , COUNT(*) FROM EMP GROUP BY DEPTNO , HIREDATE HAVING COUNT(*)>=2;

no rows selected

SQL> SELECT DEPTNO , SAL "SALARY" , COUNT(*) FROM EMP GROUP BY DEPTNO , SAL having count(*) >1;

    DEPTNO     SALARY   COUNT(*)
---------- ---------- ----------
        30       1250          2
        20       3000          2

SQL> SELECT JOB , MAX(SAL) FROM EMP WHERE ENAME NOT LIKE 'K%' GROUP BY JOB;

JOB         MAX(SAL)
--------- ----------
CLERK           1300
SALESMAN        1600
MANAGER         2975
ANALYST         3000

SQL> SELECT DEPTNO , COUNT(*) FROM EMP WHERE MGR=7839 GROUP BY DEPTNO;

    DEPTNO   COUNT(*)
---------- ----------
        30          1
        20          1
        10          1

SQL> SELECT DEPTNO , COUNT(*) FROM EMP WHERE LENGTH(ENAME)-LENGTH(LTRIM(ENAME,'AEIOU'))>=1 GROUP BY DEPTNO;

    DEPTNO   COUNT(*)
---------- ----------
        30          1
        20          1
