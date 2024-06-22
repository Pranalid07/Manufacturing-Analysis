use project1;
select count(*)  from project;

select * from project;

----- Total Manufactured Quantity -------
SELECT sum(`Manufactured Qty`) AS `Total Manufactured Qunatity` FROM project;

----- Total Processed Quantity -------
SELECT sum(`Processed Qty`) AS `Total Processed  Qunatity` FROM project;

----- Total Rejected Quantity -------
SELECT sum(`Rejected Qty`) AS `Total Rejected Qunatity` FROM project;

----- Total Wastage Quantity -------
SELECT sum(`Rejected Qty`) / sum(`processed Qty`) AS `Total Wastage Qunatity` FROM project;

  ------ Employee Wise Rejected Qty -------
SELECT  `Emp Name` , sum(`Rejected Qty`) FROM project group by `Emp Name`;

------- Machine Wise Rejected Qty --------
SELECT  `Machine Name` , sum(`Rejected Qty`) FROM project group by `Machine Name`;

-------- Manufacture Vs Rejected---------
select sum(`Manufactured Qty`),sum(`Rejected Qty`) from project;

-------- Department Wise Manufacture Quantity Vs Rejected Quantity -----
SELECT  `Department Name` , sum(`manufactured Qty`),sum(`rejected qty`) FROM project 
group by `Department Name`;

-------- Department and Buyer Wise Manufacture Quantity Vs Rejected Quantity -----
SELECT  `Department Name` ,`Buyer`, sum(`manufactured Qty`),sum(`rejected qty`) FROM project 
group by `Department Name`,`Buyer`;

------ YEAR AND MONTH WISE MANUFACTURED QTY ---------
 select year(`SO DocDate F`) as 'year',
 month(`SO DocDate F`) as 'month',
 sum(`manufactured qty`) as 'Total manufactured Qunatity'
 from project
 group by year(`SO DocDate F`), month(`SO DocDate F`)
 order by year(`SO DocDate F`), month(`SO DocDate F`);
 
 ----- Delivery status wise manufactured quanity-----
select `Delivery Period`,sum(`Manufactured Qty`) from project
group by 1;

----- Brandwise manufactured and rejected quanity--------
select `Buyer` as Brand_name,sum(`Rejected Qty`),sum(`Manufactured Qty`) from project
group by 1
order by 1;

-------- Opeartion wise manufactured/rejected quanity----- 
select `Operation Name`	,sum(`Rejected Qty`),sum(`Manufactured Qty`) from project
group by 1
order by 1;




