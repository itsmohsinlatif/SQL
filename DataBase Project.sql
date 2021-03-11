create database db_DataBaseProject2

create table tb_Employee(
	emp_id varchar(20) primary key,
	emp_name varchar(50),
	phone_no bigint,
	Job_id varchar(20) foreign key references tb_Job(job_id)
)

insert into tb_Employee values('E_1', 'Usman',    122398, 'J_1')
insert into tb_Employee values('E_2', 'Numan',    122332, 'J_2')
insert into tb_Employee values('E_3', 'Ali',      122312, 'J_2')
insert into tb_Employee values('E_4', 'Zaman',    122343, 'J_2')
insert into tb_Employee values('E_5', 'Sharjeel', 122312, 'J_3')

create table tb_Employee_History(
	emp_id varchar(20) foreign key references tb_Employee(Emp_id),
	emp_name varchar(50),
	phone_no bigint,
	Job_id varchar(20) foreign key references tb_Job(job_id)
)


create table tb_Job(
	job_id varchar(20) primary key,
	job_disc varchar(50),
	salary int
)

insert into tb_Job values('J_1','Clerk',     30000)
insert into tb_Job values('J_2','Agent',     28000)
insert into tb_Job values('J_3','Sr. Agent', 40000)


create table tb_Job_History(
	job_id varchar(20) foreign key references tb_job(job_id),
	job_disc varchar(50),
	salary int
)

create table tb_seller(
	seller_id varchar(20) primary key,
	seller_name varchar(50),
	seller_address varchar(50),
	phone_no bigint,
	CNIC varchar(15),
	Emp_id varchar(20) foreign key references tb_Employee(emp_id)
)

insert into tb_seller values('S_1', 'Zohaib', 'Lahore',      123534, '35404-9185320-7','E_3')
insert into tb_seller values('S_2', 'Saim',   'Raiwind',     123546, '35404-9186123-9','E_2')
insert into tb_seller values('S_3', 'Hashim', 'Kasoor',      123512, '35404-9181512-6','E_3')
insert into tb_seller values('S_4', 'Saqib',  'Lahore',      123598, '35404-9181251-5','E_3')
insert into tb_seller values('S_5', 'Farhan', 'FarooqAbad',  123556, '35404-9181455-7','E_3')
insert into tb_seller values('S_6', 'Muaaz',  'Sheikhupura', 123534, '35404-9182456-7','E_4')
insert into tb_seller values('S_7', 'Subhan', 'Multan',      123543, '35404-9185325-9','E_5')
insert into tb_seller values('S_8', 'Zain',   'Faisalabad',  123566, '35404-9185325-7','E_1')
insert into tb_seller values('S_9', 'Hammad', 'Quetta',      123555, '35404-9185434-9','E_3')
insert into tb_seller values('S_10', 'Rameez', 'Islamabad',   123533, '35404-9181234-7','E_4')

create table tb_seller_History(
	seller_id varchar(20) foreign key references tb_seller(seller_id),
	seller_name varchar(50),
	seller_address varchar(50),
	phone_no bigint,
	CNIC varchar(15),
	Emp_id varchar(20) foreign key references tb_Employee(emp_id)
)

create table tb_Property(
	Property_id varchar(20) primary key,
	Property_type varchar(20),
	Property_Location varchar(50),
	[Area in marla] int,
)

insert into tb_Property values('P_1', 'Living',     'Behria town',    5 )
insert into tb_Property values('P_2', 'Commercial', 'Valencia town',  7 )
insert into tb_Property values('P_3', 'Living',     'Lahore',         20)
insert into tb_Property values('P_4', 'Commercial', 'Wapda town',     10)
insert into tb_Property values('P_5', 'Living',     'LDA',            50)
insert into tb_Property values('P_6', 'Living',     'Fazaia scheme',  3 )
insert into tb_Property values('P_7', 'Commercial', 'Raiwind',        19)
insert into tb_Property values('P_8', 'Living',     'Lake city',      6 )
insert into tb_Property values('P_9', 'Living',     'Behria Orchard', 5 )
insert into tb_Property values('P_10', 'Living',     'Township',       9 )
insert into tb_Property values('P_11', 'Commercial', 'Iqbal town',     4 )
insert into tb_Property values('P_12', 'Commercial', 'Model town',     7 )
insert into tb_Property values('P_13', 'Living',     'Model town',     17)
insert into tb_Property values('P_14', 'Commercial', 'Behria town',    8 )


create table tb_Property_History(
	Property_id varchar(20) foreign key references tb_Property(Property_id),
	Property_type varchar(20),
	Property_Location varchar(50),
	[Area in marla] int,
)

create table assign_seller_property(
	Property_id varchar(20) primary key
	foreign key (Property_ID) references tb_Property(Property_id),
	Seller_id varchar(20) foreign key references tb_seller(seller_id),
	Price int,
	Seller_Date Date
)

insert into assign_seller_property values('P_1', 'S_1', 230000, '2019-01-01')
insert into assign_seller_property values('P_2', 'S_2', 880000, '2019-01-02')
insert into assign_seller_property values('P_3', 'S_3', 670000, '2019-01-03')
insert into assign_seller_property values('P_4', 'S_2', 660000, '2019-01-04')
insert into assign_seller_property values('P_5', 'S_3', 610000, '2019-01-05')
insert into assign_seller_property values('P_6', 'S_4', 510000, '2019-01-06')
insert into assign_seller_property values('P_7', 'S_5', 540000, '2019-01-07')
insert into assign_seller_property values('P_8', 'S_6', 420000, '2019-01-08')
insert into assign_seller_property values('P_9', 'S_7', 320000, '2019-01-09')
insert into assign_seller_property values('P_10', 'S_8', 120000, '2019-01-10')
insert into assign_seller_property values('P_11', 'S_9', 230000, '2019-01-11')
insert into assign_seller_property values('P_12', 'S_10', 540000, '2019-01-12')
insert into assign_seller_property values('P_13', 'S_1', 340000, '2019-01-13')
insert into assign_seller_property values('P_14', 'S_5', 450000, '2019-01-14')
insert into assign_seller_property values('P_15', 'S_10', 500000, '2019-01-15')

create table tb_Buyer(
	Buyer_id varchar(20) primary key,
	Buyer_name varchar(50),
	Buyer_address varchar(50),
	phone_no bigint,
	CNIC varchar(15),
	Emp_id varchar(20) foreign key references tb_Employee(emp_id)
)

insert into tb_Buyer values('B_1', 'Hanzala',   'Lahore',      121234, '35404-9185310-7','E_1')
insert into tb_Buyer values('B_2', 'Azeem',     'Raiwind',     121346, '35404-9186151-9','E_1')
insert into tb_Buyer values('B_3', 'Mohsin',    'Kasoor',      123512, '35404-9181232-6','E_4')
insert into tb_Buyer values('B_4', 'Junaid',    'Lahore',      423598, '35404-9181121-5','E_2')
insert into tb_Buyer values('B_5', 'Adnan',     'FarooqAbad',  413556, '35404-9181245-7','E_4')
insert into tb_Buyer values('B_6', 'Sakhawat',  'Sheikhupura', 122334, '35404-9182516-7','E_1')
insert into tb_Buyer values('B_7', 'Umais',     'Multan',      123243, '35404-9185515-9','E_4')

create table tb_Buyer_History(
	Buyer_id varchar(20) foreign key references tb_Buyer(Buyer_id),
	Buyer_name varchar(50),
	Buyer_address varchar(50),
	phone_no bigint,
	CNIC varchar(15),
	Emp_id varchar(20) foreign key references tb_Employee(emp_id)
)

create table assign_Buyer_property(
	Property_id varchar(20) primary key
	foreign key (Property_ID) references tb_Property(Property_id),
	Buyer_id varchar(20) foreign key references tb_Buyer(Buyer_id),
	Price int,
	Buyer_Date Date
)

insert into assign_buyer_property values('P_7', 'B_5', 540000, '2019-02-01')
insert into assign_buyer_property values('P_8', 'B_3', 420000, '2019-02-02')
insert into assign_buyer_property values('P_2', 'B_2', 880000, '2019-02-03')
insert into assign_buyer_property values('P_1', 'B_2', 230000, '2019-02-04')
insert into assign_buyer_property values('P_5', 'B_5', 610000, '2019-02-05')
insert into assign_buyer_property values('P_3', 'B_6', 670000, '2019-02-06')
insert into assign_buyer_property values('P_12', 'B_7', 540000, '2019-02-10')
insert into assign_buyer_property values('P_13', 'B_1', 340000, '2019-02-18')

create table tb_revenue(
	seller_revenue float,
	buyer_revenue float,
	total_revenue float,
	revenue_date date,
	Property_id varchar(20) foreign key references tb_Property(Property_id)
)

create table tb_commission(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Commision_Seller float not null,
	Commision_Buyer float not null,
)

insert into tb_commission(Commision_Seller, Commision_Buyer) values(0.05, 0.03)

create table tb_expences(
	Expences_title varchar(50),
	Expences int,
	Expences_date Date
)

insert into tb_expences values('Light Bill',2000, '2019-02-05')
insert into tb_expences values('Internet Bill',3000 , '2019-02-18')
insert into tb_expences values('Maintanance', 2000, '2019-02-10')

create table tb_accounts(
	Debit float,
	Credit float,
	Profit as (Credit - Debit),
    [Date] date
)

--Calender (For 365 days from today)--
CREATE TABLE [Calendar]
(
    [CalendarDate] DATE
)

DECLARE @StartDate DATE
DECLARE @EndDate DATE
SET @StartDate = GETDATE()-365
SET @EndDate = DATEADD(d, 365, @StartDate)

WHILE @StartDate <= @EndDate
      BEGIN
             INSERT INTO [Calendar]
             (
                   CalendarDate
             )
             SELECT
                   @StartDate

             SET @StartDate = DATEADD(dd, 1, @StartDate)
      END


--View for sum of salaries--
create view V_Salaries 
As
select sum(salary) as salary from tb_job, tb_Employee 
where tb_job.job_id = tb_Employee.Job_id

--View for accounts1--
create view V_Accounts1
As
select distinct * from tb_revenue

--View for Accounts--
create view V_Accounts
As
select sum(total_revenue) as total_revenue, revenue_date from V_Accounts1
group by revenue_date

--View for Expences--
create view V_Expences
As
select sum(Expences)as Expences, Expences_date from tb_expences
group by Expences_date

--Trigger for Accounts Table--
create trigger tr_accounts
on tb_revenue
After insert
As	
	Begin try
		Begin Transaction

			Declare @Max_Date Date 
			Declare @Min_Date Date
			Set @Max_Date = (select top 1 revenue_date from tb_revenue order by revenue_date desc)  
			Set @Min_Date = (select top 1 revenue_date from tb_revenue order by revenue_date asc)
	
			insert into tb_accounts(Debit, Credit, [Date]) 
			SELECT 0, 0, CalendarDate FROM Calendar
			WHERE CalendarDate >= @Min_Date AND
			CalendarDate <= @Max_Date  

			update tb_accounts set Credit = 
			(select total_revenue from V_Accounts where revenue_date = [Date])
			where [Date] in (select revenue_date from tb_revenue)
	
			update tb_accounts set Debit = (select * from V_Salaries) 
			where [Date] like '________01'

			update tb_accounts set Debit = (select Expences from V_Expences where Expences_date = [Date])      
			where [Date] in (select Expences_date from V_Expences)

		commit transaction
	end try
	begin catch
		rollback transaction
	end catch

--Trigger for revenue--
create Trigger tr_revenue
On assign_Buyer_property
After insert 
As
	insert into tb_revenue(buyer_revenue,seller_revenue,total_revenue,revenue_date,Property_id) 
	select Price*(select top 1 Commision_Buyer from tb_commission order by ID desc), 
	Price*(select top 1 Commision_Seller from tb_commission order by ID desc), 
	(Price*(select top 1 Commision_Buyer from tb_commission order by ID desc)+
	Price*(select top 1 Commision_Seller from tb_commission order by ID desc)), 
	Buyer_Date, Property_id 
	from assign_Buyer_property

---------Trigger for Employee_History_Table--------
Create trigger tr_Employee_History
On tb_Employee
After insert 
As
	insert into tb_Employee_History 
	select * from tb_Employee	


Create trigger tr_Employee_History_u
On tb_Employee
After update 
As
	insert into tb_Employee_History 
	select * from tb_Employee	



--------Trigger for Job History---------
Create trigger tr_Job_History
On tb_Job
After insert 
As
	insert into tb_Job_History 
	select * from tb_Job	

Create trigger tr_Job_History_u
On tb_Job
After update 
As
	insert into tb_Job_History 
	select * from tb_Job	

--------Trigger for Seller History---------
Create trigger tr_Seller_History
On tb_Seller
After insert 
As
	insert into tb_seller_History 
	select * from tb_seller	

	-----------------Trigger for seller update history--------------------------

Create trigger tr_Seller_History_u
On tb_Seller
After update
As
	insert into tb_seller_History 
	select * from tb_seller	


--------Trigger for Property History---------
Create trigger tr_Propert_History
On tb_Property
After insert 
As
	insert into tb_Property_History 
	select * from tb_Property

Create trigger tr_Propert_History_u
On tb_Property
After update 
As
	insert into tb_Property_History 
	select * from tb_Property


--------Trigger for Buyer History---------
Create trigger tr_Buyer_History
On tb_Buyer
After insert 
As
	insert into tb_Buyer_History 
	select * from tb_Buyer

Create trigger tr_Buyer_History_u
On tb_Buyer
After update 
As
	insert into tb_Buyer_History 
	select * from tb_Buyer
	
--Procedure for insertion in commission table--
create procedure pr_insert_commission
	@Commission_Seller float,
	@Commission_Buyer float
	AS
	Begin
		insert into tb_commission(Commision_Seller, Commision_Buyer)
		values(@Commission_Seller, @Commission_Buyer)
	End

exec pr_insert_commission 0.05, 0.03

----------Procedure for Empployee + Job-----------
create procedure pr_Employee_job
As
Begin
	select E.emp_name, job_disc from tb_Job,
	(select emp_name, Job_id from tb_Employee) as E
	where E.Job_id = tb_Job.job_id
End

exec pr_Employee_job


create view v_monthly_accounts
As
	select distinct * from tb_accounts

--------procedure for monthly accounts---------
create procedure monthly_accounts
@User int
As
Begin
	if(@User = (select top 1 month(CalendarDate) from Calendar order by CalendarDate desc))
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, @User as Month from v_monthly_accounts
		where [Date] like year(getdate())-1						
	end
	else if(@User = 1)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '1'as Month from v_monthly_accounts
		where [Date] like '[___01_____]%' 
	end
	else if(@User = 2)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '2'as Month from v_monthly_accounts
		where [Date] like '[___02_____]%' 
	end
	else if(@User = 3)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '3'as Month from v_monthly_accounts
		where [Date] like '[___03_____]%' 
	end
	else if(@User = 4)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '4'as Month from v_monthly_accounts
		where [Date] like '[___04_____]%' 
	end
	else if(@User = 5)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '5'as Month from v_monthly_accounts
		where [Date] like '[___05_____]%' 
	end
	else if(@User = 6)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '6'as Month from v_monthly_accounts
		where [Date] like '[___06_____]%' 
	end
	else if(@User = 7)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '7'as Month from v_monthly_accounts
		where [Date] like '[___07_____]%' 
	end
	else if(@User = 8)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '8'as Month from v_monthly_accounts
		where [Date] like '[___08_____]%' 
	end
	else if(@User = 9)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '9'as Month from v_monthly_accounts
		where [Date] like '[___09_____]%' 
	end
	else if(@User = 10)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '10'as Month from v_monthly_accounts
		where [Date] like '[___10_____]%' 
	end
	else if(@User = 11)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '11'as Month from v_monthly_accounts
		where [Date] like '[___11_____]%' 
	end
	else if(@User = 12)
	begin
		select sum(Profit) as Profit, sum(Debit) as Debit, sum(Credit) as Credit, '12'as Month from v_monthly_accounts
		where [Date] like '[___12_____]%' 
	end
	else
	begin
		print 'Cheak the month spellings again'
	end
End
 
exec monthly_accounts 4


---------Procedure for generating invoice--------
create procedure pr_Invoice
@P_ID varchar(20)
As
Begin
	if(@P_ID in (select Property_id from assign_Buyer_property))
	begin
		select  B.Property_id, B.Property_type, B.Property_Location, B.Price, B.[Area in marla],
		Buyer_name, B.Buyer_Date from tb_Buyer,
		(select A.Buyer_id, A.Property_ID,Property_type, Property_Location, [Area in marla], A.Price, A.Buyer_Date from tb_Property, 
		(select Property_ID, Buyer_id, Price, Buyer_Date from assign_Buyer_property
		 where Property_ID = @P_ID)as A
		 where tb_Property.Property_Id = A.Property_ID)as B
		 where B.Buyer_id = tb_Buyer.Buyer_id
	end
	else
	begin
		PRINT 'Property is not still not saled or Property not found'
	end

End

exec pr_Invoice 'P_5'

---------------Revenue--------------------
create procedure pr_revenue
As
Begin
	select distinct * from tb_revenue 
	order by Property_id asc
End

exec pr_revenue

----------Revenue for specific date---------
create procedure pr_revenue1
@Date date
As
begin
	if(@Date in (select revenue_date from tb_revenue))
	begin
		select distinct * from tb_revenue where revenue_date = @Date
	end
	else
	begin 
		print 'Check the syntex of date "YYYY-MM-DD" or there is no revenue on this date'
	end
End

exec pr_revenue1 '2019-02-04'

--------------Available property----------------
create procedure pr_available_property
As
Begin
	select Property_id,Property_Location,Property_type, [Area in marla] from tb_Property 
	where tb_Property.Property_id not in (select Property_id from assign_Buyer_property) 
End

exec pr_available_property

--------------Sold Property---------------------
create procedure pr_sold_property
As
Begin
	select tb_Property.Property_id, Property_type, Property_Location, [Area in marla], A.Price, A.Buyer_Date from tb_Property,
	(select Property_id, Price, Buyer_Date from assign_Buyer_property) as A
	where A.Property_id = tb_Property.Property_id
	order by Property_id asc
End

exec pr_sold_property

-------------Which employee is dealing with given seller or buyer--------
create procedure pr_Employee_deals
@ID varchar(20)
As
Begin
	
	if(@ID in (select seller_id from tb_seller))
	begin
		select distinct B.seller_id, B.seller_name, B.emp_id, B.emp_name from tb_seller,
		(select seller_id, seller_name, A.emp_name, A.emp_id from tb_seller,
		(select emp_name, emp_id from tb_Employee)as A
		where tb_seller.emp_id = A.emp_id)as B
		where @ID = B.seller_id
	end

	else if(@ID in (select buyer_id from tb_buyer))
	begin
		select distinct B.buyer_id, B.buyer_name, B.emp_id, B.emp_name from tb_buyer,
		(select buyer_id, buyer_name, A.emp_name, A.emp_id from tb_buyer,
		(select emp_name, emp_id from tb_Employee)as A
		where tb_buyer.emp_id = A.emp_id)as B
		where @ID = B.buyer_id
	end
	
	else if(@ID in (select seller_name from tb_seller))
	begin
		select distinct B.seller_id, B.seller_name, B.emp_id, B.emp_name from tb_seller,
		(select seller_id, seller_name, A.emp_name, A.emp_id from tb_seller,
		(select emp_name, emp_id from tb_Employee)as A
		where tb_seller.emp_id = A.emp_id)as B
		where @ID = B.seller_name
	end
	
	else if(@ID in (select buyer_name from tb_buyer))
	begin
		select distinct B.buyer_id, B.buyer_name, B.emp_id, B.emp_name from tb_buyer,
		(select buyer_id, buyer_name, A.emp_name, A.emp_id from tb_buyer,
		(select emp_name, emp_id from tb_Employee)as A
		where tb_buyer.emp_id = A.emp_id)as B
		where @ID = B.buyer_name
	end
	else
	begin
		print 'Person not found'
	end
End

exec pr_Employee_deals 'Hanzala'

-----------Which Employee deal which seller----------
create procedure pr_E_S
As
Begin
	select seller_id, seller_name, A.Emp_id, A.emp_name from tb_seller,
	(select Emp_id, Emp_name from tb_employee)as A
	where tb_seller.Emp_id = A.emp_id
End

exec pr_E_S

-----------Which Employee deal which buyer----------
create procedure pr_E_B
As
Begin
	select buyer_id, buyer_name, A.Emp_id, A.emp_name from tb_buyer,
	(select Emp_id, Emp_name from tb_employee)as A
	where tb_buyer.Emp_id = A.emp_id
End

exec pr_E_B

------------Employee who deals most sellers----------
create procedure pr_Empolyee_most_sellers
As
Begin
	select B.emp_id, B.emp_name, B.Customers, job_disc, salary from tb_job,
	(select top 1 A.emp_id, Job_id,emp_name,A.Customers from tb_Employee,
	(select Emp_id,count(Emp_id) Customers from tb_seller
	group by Emp_id)as A
	where A.Emp_id = tb_Employee.emp_id order by A.Customers desc)as B
	where B.Job_id = tb_job.job_id
end

exec pr_Empolyee_most_sellers

------------Employee who deals most buyers----------
create procedure pr_Empolyee_most_buyer
As
Begin
	select B.emp_id, B.emp_name, B.Customers, job_disc, salary from tb_job,
	(select top 1 A.emp_id, Job_id,emp_name,A.Customers from tb_Employee,
	(select Emp_id,count(Emp_id) Customers from tb_buyer
	group by Emp_id)as A
	where A.Emp_id = tb_Employee.emp_id order by A.Customers desc)as B
	where B.Job_id = tb_job.job_id
end

exec pr_Empolyee_most_buyer

------------Which seller is owner of this property-------
------------Which one property is of this seller--------
create procedure pr_property_seller
@User varchar(20)
As
Begin 
	if(@User in (select Property_id from assign_seller_property))
	begin
		select A.seller_id, seller_name, phone_no, seller_address from tb_seller,
		(select seller_id from assign_seller_property 
		where Property_id = @User)as A
		where A.Seller_id = tb_seller.seller_id
	end
	else if(@User in (select Seller_id from assign_seller_property))
	begin
		select A.Property_id, Property_type, Property_Location, [Area in marla] from tb_Property,
		(select Property_id from assign_seller_property 
		where Seller_id = @User) as A
		where A.Property_id = tb_Property.Property_id
	end
	else 
	begin
		print 'Not found, cheak your ID again'
	end
End

exec pr_property_seller 'P_8'

select distinct * from tb_revenue


-----------My contribution---------------------
-------------Propcedure to delete the job----------------

create procedure del_job     --against logic
@job_desc varchar(20)
as
begin
	if(@job_desc in(select job_id from tb_Job))
	delete from tb_Job where tb_Job.job_id = @job_desc

	else if(@job_desc in (select job_disc from tb_Job))
	delete from tb_Job where tb_Job.job_disc = @job_desc

end

--exec del_job 'J_1'

---------------------Procedure to update the salary of job ------------------- 
create procedure update_job_salary
@job_desc varchar(20),
@salary int
as
begin
	if(@job_desc in(select job_id from tb_Job))
		update tb_Job
		set salary = @salary
		where tb_Job.job_id = @job_desc
	else if(@job_desc in(select job_disc from tb_Job))
		update tb_Job
		set salary = @salary
		where tb_Job.job_disc = @job_desc
	else
		print 'Wrong Input or not found in databse!'

end

exec update_job_salary 'J_2',50005

select * from tb_Job


------------------Promotion procedure----------------------
create procedure emp_promotion
@emp_id varchar(50),
@job_id varchar(50)
as begin
	if(@emp_id in(select emp_id from tb_Employee))
	update tb_Employee
	set Job_id = @job_id
	where tb_Employee.emp_id = @emp_id
	else if(@emp_id in(select emp_name from tb_Employee))
	update tb_Employee
	set Job_id = @job_id
	where tb_Employee.emp_name = @emp_id

end

exec emp_promotion 'E_1','J_1'
select * from tb_Employee





end

