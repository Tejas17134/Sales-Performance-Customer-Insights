create database SalesAnalysis;

use SalesAnalysis;


select * from [dbo].[SalesAnalysis];

select sum(Sales) as TotalSales,
       sum(Profit) as TotalProfit
from [dbo].[SalesAnalysis];



select Region,sum(Sales) as TotalSales
from  [dbo].[SalesAnalysis]
group by Region
order by TotalSales DESC;


select Category,sum(Sales) as TotalSales
from  [dbo].[SalesAnalysis]
group by Category
order by TotalSales DESC;


select TOP 10 Product_Name,sum(Profit) as TotalProfit
from  [dbo].[SalesAnalysis]
group by Product_Name
Order by TotalProfit DESC;



Select Product_Name,sum(Profit) as TotalProfit
from  [dbo].[SalesAnalysis]
group by Product_Name
having sum(Profit) < 0;


select format(Order_Date,'yyyy-MM') as Month,
sum(Sales) as Monthly_Sales,sum(Profit) as Monthly_Profit from [dbo].[SalesAnalysis]
group by format(Order_Date,'yyyy-MM')
Order by Month ;


select * 
from [dbo].[SalesAnalysis]
where region = 'West'
and profit > 0;


Select Region,sum(Profit) as TotalProfit
from [dbo].[SalesAnalysis]
group by Region
order by TotalProfit DESC;


select region,sum(Quantity) as TotalQuantity
from [dbo].[SalesAnalysis]
group by region
order by TotalQuantity DESC;




