select d1.Mgr_ssn, d1.Dnumber, 
(select count(*) FROM DEPENDENT dep where dep.essn = d1.Mgr_ssn) 
  from DEPARTMENT d1 where d1.Dnumber IN (
        select dl.Dnumber from DEPT_LOCATIONS dl
        group by dl.Dnumber
        having count(*) >= 2
);