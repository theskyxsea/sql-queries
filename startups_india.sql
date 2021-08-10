SQL> SELECT * FROM PB1;

     SR_NO STARTDATE STARTUP_NAME         INDUSTRY_VERTICAL    SUBVERTICAL          CITY                 INVESTORNAME         INVESTMENTTYPE           AMOUNT
---------- --------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- ----------
         1 09-JAN-20 BYJU?S               WELLNESS             E-LEARNING           BENGALURU            TIGER GLOBAL         PRIVATE EQUITY ROUND  200000000
         2 13-JAN-20 SHUTTL               TRANSPORTATION       APP BASED SHUTTLE    GURGAON              SUSQUEHANNA GROWT    SERIES C                8048394
         3 09-JAN-20 MAMAEARTH            E-COMMERCE           RETAILER OF BABY     BENGALURU            SEQUOIA CAPITAL      SERIES B               18358860
         4 02-JAN-20 WEALT                FINTECH              ONLINE INVESTMENT    NEW DELHI            VINOD KHATUMAL       PRE-SERIES A            3000000
         5 02-JAN-20 FASHOR               FASHION AND APPAREL  EMBROILED CLOTHES    MUMBAI               SPROUT VENTURE       SEED ROUND              1800000
         6 13-JAN-20 PANDO                WELLNESS             OPEN-MARKET          CHENNAI              CHIRATAE VENTURES    SERIES A                9000000
         7 10-JAN-20 ZOMATO               HOSPITALITY          ONLINE FOOD DELIV    GURGAON              ANT FINANCIAL        PRIVATE EQUITY ROUND  150000000
         8 12-DEC-19 ECOZEN               HOSPITALITY          AGRITECH             PUNE                 SATHGURU CATALYZE    SERIES A                6000000
         9 06-DEC-19 CARDEKHO             E-COMMERCE           AUTOMOBILE           GURGAON              PING AN GLOBAL       SERIES D               70000000
        10 03-DEC-19 DHRUVA SPACE         HOSPITALITY          SATELLITE COMMUNI    BENGALURU            MUMBAI ANGELS        SEED                   50000000
        11 13-DEC-19 RIVIGO               TECHNOLOGY           LOGISTICS SERVICE    GURGAON              SAIF PARTNERS        SERIES F               20000000
        12 17-DEC-19 HEALTHIANS           TRANSPORTATION       FOOD SOLUTIONS       BENGALURU            PAYTM, NPTK          SERIES B               12000000
        13 16-DEC-19 LICIOUS              E-COMMERCE           ONLINE MEAT          BENGALURU            VERTEX GROWTH        SERIES B               30000000
        14 16-DEC-19 INCRED               FINANCE              NON-BANKING FINAN    MUMBAI                                    DEBT FUNDING            5900000
        15 14-DEC-19 TRELL                VIDEO                EXPERIENCE DISCOV    BENGALURU            RUIZHENG INVESTMENT  SEED ROUND              2000000
        16 11-DEC-19 REIN GAMES           GAMING               REAL MONEY BASED     NOIDA                MANIPAL EDUCATION    SEED ROUND             50000000
        17 20-DEC-19 LENSKART.COM         E-COMMERCE           ONLINE EYEWEAR       FARIDABAD            SOFTBANK VISION      SERIES G              231000000
        18 13-NOV-19 FRESHWORKS           SOFTWARE             BUSINESS AND CUST    SAN FRANCISCO        SEQUOIA, CAPITALG    SERIES H              150000000
        19 14-NOV-19 MISTERS              WELLNESS             MEN?S HEALTH         GURGAON              SAUCE.VC, RAIN       SERIES B                 486000
        20 13-NOV-19 SUNSTONE EDUVERS     HOSPITALITY          ELEARNING            GURGAON              PRIME VENTURE        SEED                    1500000

20 rows selected.

SQL> SELECT COUNT(STARTUP_NAME) FROM PB1 WHERE CITY = 'BENGALURU';

COUNT(STARTUP_NAME)
-------------------
                  6

SQL> SELECT COUNT(STARTUP_NAME) FROM PB1 WHERE CITY='BENGALURU' AND INVESTMENTTYPE='SERIES B';

COUNT(STARTUP_NAME)
-------------------
                  3

SQL> SELECT SUM(AMOUNT) FROM PB1 WHERE CITY='GURGAON';

SUM(AMOUNT)
-----------
  250034394

SQL> SELECT COUNT(DISTINCT(INDUSTRY_VERTICAL)) FROM PB1;

COUNT(DISTINCT(INDUSTRY_VERTICAL))
----------------------------------
                                11
