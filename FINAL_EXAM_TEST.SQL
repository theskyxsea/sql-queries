SQL> SELECT * FROM EMP WHERE SAL*12 > 15000 AND COMM > SAL;

no rows selected


SQL> SELECT ENAME FROM EMP WHERE LENGTH(ENAME)-LENGTH(REPLACE(ENAME,'NA'))=4;

no rows selected


SQL> SELECT MAX(SAL),MIN(SAL) FROM EMP GROUP BY JOB;

  MAX(SAL)   MIN(SAL)
---------- ----------
      1300        800
      1600       1250
      5000       5000
      2975       2450
      3000       3000
      
      
SQL> SELECT DNAME FROM EMP NATURAL JOIN DEPT WHERE JOB= 'SALESMAN';

DNAME
--------------
SALES
SALES
SALES
SALES


SQL> SELECT E1.ENAME FROM EMP E1 , EMP E2 WHERE E1.MGR=E2.EMPNO AND E2.ENAME='SCOTT';

ENAME
----------
ADAMS



SQL> SELECT * FROM EMP WHERE JOB!='MANAGER' AND SAL>ALL(SELECT SAL FROM EMP WHERE JOB='MANAGER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20



SQL> SELECT * FROM EMP WHERE JOB!='MANAGER' AND SAL>ANY(SELECT SAL FROM EMP WHERE JOB='MANAGER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      
      
SQL> SELECT DNAME , LOC FROM EMP E1 , EMP E2 , DEPT D WHERE E1.MGR=E2.EMPNO AND E2.ENAME='CLARK' AND E1.DEPTNO=D.DEPTNO;

DNAME          LOC
-------------- -------------
ACCOUNTING     NEW YORK



SQL> SELECT SAL+NVL(SAL,0) "TOTAL SALARY" FROM EMP;

TOTAL SALARY
------------
        1600
        3200
        2500
        5950
        2500
        5700
        4900
        6000
       10000
        3000
        2200
        1900
        6000
        2600

14 rows selected.



SQL> SELECT LAST_DAY(sYSDATE)-(SELECT SYSDATE FROM DUAL) FROM DUAL;

LAST_DAY(SYSDATE)-(SELECTSYSDATEFROMDUAL)
-----------------------------------------
                                       13
                                       
                                       
SQL> SELECT ENAME FROM EMP GROUP BY ENAME HAVING COUNT(ENAME)>1;

no rows selected


SQL> SELECT * FROM EMP WHERE HIREDATE>(SELECT MIN(HIREDATE) FROM EMP)+(365*2);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      
      
SQL> SELECT * FROM EMP WHERE LENGTH(ENAME)-LENGTH(REPLACE(ENAME,'R'))=2;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
//OR
SQL> SELECT * FROM EMP WHERE INSTR(ENAME,'R',1,2)>=1;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      
      

SQL> SELECT * FROM EMP WHERE INSTR(ENAME,'%')>0;

no rows selected
//OR
SQL> SELECT * FROM EMP WHERE LENGTH(ENAME)-LENGTH(REPLACE(ENAME,'%'))>0;

no rows selected
//OR
SQL> SELECT * FROM EMP WHERE ENAME LIKE '%#%%' ESCAPE '#';

no rows selected



SQL> SELECT * FROM EMP WHERE ENAME LIKE '_#_%' ESCAPE '#';

no rows selected
//OR
SQL> SELECT * FROM EMP WHERE INSTR(ENAME,'_')=2;

no rows selected
//OR
SQL> SELECT * FROM EMP WHERE SUBSTR(ENAME,2,1)='_';

no rows selected



SQL> SELECT * FROM EMP WHERE ENAME LIKE '%#_%#_%' ESCAPE '#';

no rows selected
//OR
SQL> SELECT * FROM EMP WHERE SUBSTR(ENAME,2,1)='_';

no rows selected
//OR
SQL> SELECT * FROM EMP WHERE INSTR(ENAME,'_')>0 AND INSTR(ENAME,'_',1,2)>0;

no rows selected


SQL> SELECT MAX(SAL) FROM EMP WHERE DEPTNO!=30 GROUP BY JOB HAVING MAX(SAL)>1500 ORDER BY MAX(SAL);

  MAX(SAL)
----------
      2975
      3000
      5000



SQL> SELECT MAX(SAL) FROM EMP WHERE INSTR(ENAME,'S')=LENGTH(ENAME) GROUP BY JOB;

  MAX(SAL)
----------
      1100
      2975



SQL> SELECT MAX(SAL) FROM EMP WHERE SAL BETWEEN 5000 AND 10000 GROUP BY DEPTNO HAVING SUM(SAL)<10000;

  MAX(SAL)
----------
      5000
      
      
SQL> SELECT MAX(SAL) , SUM(SAL) FROM EMP WHERE INSTR(JOB,'_')=0 GROUP BY DEPTNO HAVING SUM(SAL) NOT BETWEEN 5000 AND 9000;

  MAX(SAL)   SUM(SAL)
---------- ----------
      2850       9400
      3000      10875



SQL> SELECT * FROM EMP WHERE TO_CHAR(HIREDATE,'DAY')='FRIDAY' AND TO_CHAR(HIREDATE,'MM') BETWEEN 04 AND 10;

no rows selected



SQL> SELECT EMPNO , SAL+(SAL*0.35), DNAME , LOC , DEPTNO FROM EMP NATURAL JOIN DEPT WHERE SAL>(SELECT SAL FROM EMP WHERE ENAME = 'ALLEN') AND LOC IN ('NEW YORK' , 'CHOCAGO');

     EMPNO SAL+(SAL*0.35) DNAME          LOC               DEPTNO
---------- -------------- -------------- ------------- ----------
      7782         3307.5 ACCOUNTING     NEW YORK              10
      7839           6750 ACCOUNTING     NEW YORK              10




SQL> SELECT (SELECT SYSDATE FROM DUAL)-HIREDATE FROM EMP;

(SELECTSYSDATEFROMDUAL)-HIREDATE
--------------------------------
                      14884.9265
                      14819.9265
                      14817.9265
                      14778.9265
                      14599.9265
                      14749.9265
                      14710.9265
                      12570.9265
                      14549.9265
                      14619.9265
                      12536.9265
                      14533.9265
                      14533.9265
                      14482.9265

14 rows selected.

SQL> SELECT (SELECT TO_CHAR(SYSDATE,'YYYY') FROM DUAL)-TO_CHAR(HIREDATE,'YYYY') FROM EMP;
//OR
(SELECTTO_CHAR(SYSDATE,'YYYY')FROMDUAL)-TO_CHAR(HIREDATE,'YYYY')
----------------------------------------------------------------
                                                              41
                                                              40
                                                              40
                                                              40
                                                              40
                                                              40
                                                              40
                                                              34
                                                              40
                                                              40
                                                              34
                                                              40
                                                              40
                                                              39

14 rows selected.




SQL> SELECT E3.HIREDATE FROM EMP E1 , EMP E2 , EMP E3 WHERE E1.MGR=E2.EMPNO AND E2.MGR=E3.EMPNO AND E1.ENAME='SMITH';

HIREDATE
---------
02-APR-81
