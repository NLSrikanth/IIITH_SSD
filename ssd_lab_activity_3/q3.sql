select p2.Essn, count(p2.Pno) from WORKS_ON p2
where p2.Essn IN (
    select d1.Mgr_ssn from DEPARTMENT d1, PROJECT p1
    where d1.Dnumber = p1.Dnum
    and p1.Pname = "ProductY"
)
GROUP BY p2.Essn;