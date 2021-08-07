SQL> select ename "Name" , sal "Old Salary" , sal*0.1+sal "After Hike Salary" from emp;

Name       Old Salary After Hike Salary
---------- ---------- -----------------
SMITH             800               880
ALLEN            1600              1760
WARD             1250              1375
JONES            2975            3272.5
MARTIN           1250              1375
BLAKE            2850              3135
CLARK            2450              2695
SCOTT            3000              3300
KING             5000              5500
TURNER           1500              1650
ADAMS            1100              1210
JAMES             950              1045
FORD             3000              3300
MILLER           1300              1430

14 rows selected.
