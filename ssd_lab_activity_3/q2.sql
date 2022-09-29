select rs.* from (
    select CONCAT (e1.Fname, " ",  e1.Minit, " ", e1.LName),
    (select count(*) from EMPLOYEE e3 where e3.Super_ssn = e1.Ssn) as emp_count
    FROM EMPLOYEE e1 where e1.Ssn IN (select e2.Super_ssn from EMPLOYEE e2)
) rs
order by rs.emp_count asc;