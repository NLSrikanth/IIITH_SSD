CREATE OR REPLACE PROCEDURE getSum(
	n1 IN INT,
	n2 IN INT,
	result OUT INT
) AS
BEGIN
	result := n1 + n2;
    dbms_output.put_line(result);
END;