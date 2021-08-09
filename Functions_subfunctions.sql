SQL> select * from emp1;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 Smith      CLERK           7902 17-DEC-80        800                    20
      7499 Allen      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 Ward       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 Jones      MANAGER         7839 02-APR-81       2975                    20
      7654 Martin     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 Blake      MANAGER         7839 01-MAY-81       2850                    30
      7782 Clark      MANAGER         7839 09-JUN-81       2450                    10
      7788 Scott      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 Turner     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 Adams      CLERK           7788 23-MAY-87       1100                    20
      7900 James      CLERK           7698 03-DEC-81        950                    30
      7902 Ford       ANALYST         7566 03-DEC-81       3000                    20
      7934 Miller     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

SQL> update emp1 set ename = 'KING TSXS' where sal = (select max(sal) from emp1);

1 row updated.

SQL> select * from emp1;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 Smith      CLERK           7902 17-DEC-80        800                    20
      7499 Allen      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 Ward       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 Jones      MANAGER         7839 02-APR-81       2975                    20
      7654 Martin     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 Blake      MANAGER         7839 01-MAY-81       2850                    30
      7782 Clark      MANAGER         7839 09-JUN-81       2450                    10
      7788 Scott      ANALYST         7566 19-APR-87       3000                    20
      7839 KING TSXS  PRESIDENT            17-NOV-81       5000                    10
      7844 Turner     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 Adams      CLERK           7788 23-MAY-87       1100                    20
      7900 James      CLERK           7698 03-DEC-81        950                    30
      7902 Ford       ANALYST         7566 03-DEC-81       3000                    20
      7934 Miller     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

SQL> update emp1 set sal = round(sal,-3);

14 rows updated.

SQL> select * from emp1;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 Smith      CLERK           7902 17-DEC-80       1000                    20
      7499 Allen      SALESMAN        7698 20-FEB-81       2000        300         30
      7521 Ward       SALESMAN        7698 22-FEB-81       1000        500         30
      7566 Jones      MANAGER         7839 02-APR-81       3000                    20
      7654 Martin     SALESMAN        7698 28-SEP-81       1000       1400         30
      7698 Blake      MANAGER         7839 01-MAY-81       3000                    30
      7782 Clark      MANAGER         7839 09-JUN-81       2000                    10
      7788 Scott      ANALYST         7566 19-APR-87       3000                    20
      7839 KING TSXS  PRESIDENT            17-NOV-81       5000                    10
      7844 Turner     SALESMAN        7698 08-SEP-81       2000          0         30
      7876 Adams      CLERK           7788 23-MAY-87       1000                    20
      7900 James      CLERK           7698 03-DEC-81       1000                    30
      7902 Ford       ANALYST         7566 03-DEC-81       3000                    20
      7934 Miller     CLERK           7782 23-JAN-82       1000                    10

14 rows selected.

SQL> update emp1 set sal = sal+comm where comm is not null;

4 rows updated.

SQL> alter table emp1 drop column comm;

Table altered.

SQL> select * from emp1;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ----------
      7369 Smith      CLERK           7902 17-DEC-80       1000         20
      7499 Allen      SALESMAN        7698 20-FEB-81       2300         30
      7521 Ward       SALESMAN        7698 22-FEB-81       1500         30
      7566 Jones      MANAGER         7839 02-APR-81       3000         20
      7654 Martin     SALESMAN        7698 28-SEP-81       2400         30
      7698 Blake      MANAGER         7839 01-MAY-81       3000         30
      7782 Clark      MANAGER         7839 09-JUN-81       2000         10
      7788 Scott      ANALYST         7566 19-APR-87       3000         20
      7839 KING TSXS  PRESIDENT            17-NOV-81       5000         10
      7844 Turner     SALESMAN        7698 08-SEP-81       2000         30
      7876 Adams      CLERK           7788 23-MAY-87       1000         20
      7900 James      CLERK           7698 03-DEC-81       1000         30
      7902 Ford       ANALYST         7566 03-DEC-81       3000         20
      7934 Miller     CLERK           7782 23-JAN-82       1000         10

14 rows selected.

SQL> update emp1 set deptno= trim(0 from deptno);

14 rows updated.

SQL> select * from emp1;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ----------
      7369 Smith      CLERK           7902 17-DEC-80       1000          2
      7499 Allen      SALESMAN        7698 20-FEB-81       2300          3
      7521 Ward       SALESMAN        7698 22-FEB-81       1500          3
      7566 Jones      MANAGER         7839 02-APR-81       3000          2
      7654 Martin     SALESMAN        7698 28-SEP-81       2400          3
      7698 Blake      MANAGER         7839 01-MAY-81       3000          3
      7782 Clark      MANAGER         7839 09-JUN-81       2000          1
      7788 Scott      ANALYST         7566 19-APR-87       3000          2
      7839 KING TSXS  PRESIDENT            17-NOV-81       5000          1
      7844 Turner     SALESMAN        7698 08-SEP-81       2000          3
      7876 Adams      CLERK           7788 23-MAY-87       1000          2
      7900 James      CLERK           7698 03-DEC-81       1000          3
      7902 Ford       ANALYST         7566 03-DEC-81       3000          2
      7934 Miller     CLERK           7782 23-JAN-82       1000          1

14 rows selected.
