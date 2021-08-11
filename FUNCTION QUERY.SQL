SQL> select concat(ename,concat(' worning as ',concat(job,concat(' earns ', concat(sal,concat(' in dept ',deptno)))))) from emp where ename = 'SCOTT';

CONCAT(ENAME,CONCAT('WORNINGAS',CONCAT(JOB,CONCAT('EARNS',CONCAT(SAL,CONCAT('INDEPT',DEPTNO))))))
-------------------------------------------------------------------------------------------------------------------------------
SCOTT worning as ANALYST earns 3000 in dept 20

SQL> SELECT LENGTH('HELLLLL')-LENGTH(REPLACE('HELLLLL','L')) FROM DUAL;

LENGTH('HELLLLL')-LENGTH(REPLACE('HELLLLL','L'))
------------------------------------------------
                                               5

SQL> select * from emp where LENGTH(JOB)-LENGTH(replace(JOB,'MAN'))=3;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

7 rows selected.

SQL> select * from emp where LENGTH(JOB)-LENGTH(ltrim(JOB,'MAN'))>3;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

SQL> select * from emp where LENGTH(JOB)-LENGTH(rtrim(JOB,'MAN'))=3;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

SQL> select concat(LOWER(SUBSTR(ENAME,1,3)),UPPER(SUBSTR(ENAME,4))) FROM EMP;

CONCAT(LOW
----------
smiTH
allEN
warD
jonES
marTIN
blaKE
claRK
scoTT
kinG
turNER
adaMS
jamES
forD
milLER

14 rows selected.

SQL> Select concat (ename , concat(' is a ' , concat (job, ' gets salary 2000'))) from emp;

CONCAT(ENAME,CONCAT('ISA',CONCAT(JOB,'GETS
------------------------------------------
SMITH is a CLERK gets salary 2000
ALLEN is a SALESMAN gets salary 2000
WARD is a SALESMAN gets salary 2000
JONES is a MANAGER gets salary 2000
MARTIN is a SALESMAN gets salary 2000
BLAKE is a MANAGER gets salary 2000
CLARK is a MANAGER gets salary 2000
SCOTT is a ANALYST gets salary 2000
KING is a PRESIDENT gets salary 2000
TURNER is a SALESMAN gets salary 2000
ADAMS is a CLERK gets salary 2000
JAMES is a CLERK gets salary 2000
FORD is a ANALYST gets salary 2000
MILLER is a CLERK gets salary 2000

14 rows selected.

SQL> SELECT * FROM EMP WHERE TO_CHAR(HIREDATE,'DAY') = 'WEDNESDAY' ;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20

SQL> SELECT * FROM EMP WHERE MOD(TO_NUMBER(TO_CHAR(HIREDATE,'YYYY')),4)=0;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20

SQL> SELECT * FROM EMP WHERE TO_NUMBER(TO_CHAR(HIREDATE,'MM'))=5 AND TO_NUMBER(TO_CHAR(HIREDATE,'D'))=7;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      
SQL> SELECT CONCAT(LOWER(SUBSTR(ENAME,1,DECODE((MOD(LENGTH(ENAME),2)),0,LENGTH(ENAME)/2,(LENGTH(ENAME)+1)/2))),
  2  REVERSE(SUBSTR(ENAME,DECODE((MOD(LENGTH(ENAME),2)),0,(LENGTH(ENAME)/2)+1,((LENGTH(ENAME)+1)/2)+1))))
  3  FROM EMP;

CONCAT(LOWER(SUBSTR(
--------------------
smiHT
allNE
waDR
jonSE
marNIT
blaEK
claKR
scoTT
kiGN
turREN
adaSM
jamSE
foDR
milREL

14 rows selected.
