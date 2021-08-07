SQL> select sum(comm) from emp;

 SUM(COMM)
----------
      2200

SQL> select count(ename) from emp where job='SALESMAN';

COUNT(ENAME)
------------
           4

SQL> SELECT MAX(JOB) FROM EMP;

MAX(JOB)
---------
SALESMAN

SQL> SELECT AVG(SAL) FROM EMP;

  AVG(SAL)
----------
2073.21429

SQL> SELECT MIN(ENAME) FROM EMP;

MIN(ENAME)
----------
ADAMS
