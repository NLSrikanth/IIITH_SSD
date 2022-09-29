select CONCAT (e1.Fname, " ",  e1.Minit, " ", e1.LName), d1.Mgr_ssn, d1.Dnumber, d1.Dname from DEPARTMENT d1, EMPLOYEE e1 WHERE 
e1.Ssn = d1.Mgr_ssn
AND EXISTS (
    SELECT 'X' FROM EMPLOYEE e2, WORKS_ON w2 
    where d1.Dnumber = e2.Dno
    and e2.Ssn = w2.Essn
    group by e2.Ssn
    having SUM(w2.Hours) < 40
);