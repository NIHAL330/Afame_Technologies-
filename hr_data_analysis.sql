create database hrdata;
use hrdata;
select * from hr_data;

-- Remove unnecessary columns
ALTER TABLE hr_data
DROP COLUMN EmployeeCount,
DROP COLUMN Over18,
DROP COLUMN StandardHours;

-- Rename columns
ALTER TABLE hr_data
CHANGE COLUMN DailyRate Daily_Rate INT,
CHANGE COLUMN EducationField Education_Field VARCHAR(255),
CHANGE COLUMN EmployeeNumber Employee_Number INT,
CHANGE COLUMN EnvironmentSatisfaction Environment_Satisfaction INT,
CHANGE COLUMN HourlyRate Hourly_Rate INT,
CHANGE COLUMN JobInvolvement Job_Involvement INT,
CHANGE COLUMN JobRole Job_Role VARCHAR(255),
CHANGE COLUMN JobSatisfaction Job_Satisfaction INT,
CHANGE COLUMN MaritalStatus Marital_Status VARCHAR(255),
CHANGE COLUMN MonthlyIncome Monthly_Income INT,
CHANGE COLUMN MonthlyRate Monthly_Rate INT,
CHANGE COLUMN NumCompaniesWorked Num_Companies_Worked INT,
CHANGE COLUMN PercentSalaryHike Percent_Salary_Hike INT,
CHANGE COLUMN PerformanceRating Performance_Rating INT,
CHANGE COLUMN RelationshipSatisfaction Relationship_Satisfaction INT,
CHANGE COLUMN StockOptionLevel Stock_Option_Level INT,
CHANGE COLUMN TotalWorkingYears Total_Working_Years INT,
CHANGE COLUMN TrainingTimesLastYear Training_Times_Last_Year INT,
CHANGE COLUMN WorkLifeBalance Work_Life_Balance INT,
CHANGE COLUMN YearsAtCompany Years_At_Company INT,
CHANGE COLUMN YearsInCurrentRole Years_In_Current_Role INT,
CHANGE COLUMN YearsSinceLastPromotion Years_Since_Last_Promotion INT,
CHANGE COLUMN YearsWithCurrManager Years_With_Curr_Manager INT;

ALTER TABLE hr_data
CHANGE COLUMN ï»¿Age Age int,
CHANGE COLUMN BusinessTravel Business_Travel varchar(255),
CHANGE COLUMN DistanceFromHome Distance_From_Home int;

-- sanitizing specific columns.
select trim(Business_Travel) from hr_data;

-- Eliminate the dataset's NaN values.
select * from hr_data where null = "NaN";


