# Crowdfunding_ETL Project

For the ETL mini project, working in pairs was essential for building an ETL pipeline which used Python, Pandas, and either Python dictionary 
methods or regular expressions. Extraction and transforming the data were also important steps of this project. After we transformed the data, four CSV 
files were created and were then used to create an ERD and a table schema. Finally, CSV file data was uploaded into a Postgres database.

The instructions for this mini project were divided into the following subsections:

- Create the Category and Subcategory DataFrames.
  
-- Extracted and transformed the crowdfunding.xlsx Excel data to create a category DataFrame that had the following columns:

- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories.

- A "category" column that contains only the category titles.

-- Exported the category DataFrame as category.csv and saved it to our GitHub repository. Extracted and transformed the crowdfunding.xlsx Excel data to 
create a subcategory DataFrame that had the following columns:

- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories.

- A "subcategory" column that contains only the subcategory titles. Exported the subcategory DataFrame as subcategory.csv and saved it to your GitHub repository.

- Create the Campaign DataFrame.

-- Extracted and transformed the crowdfunding.xlsx Excel data to create a campaign DataFrame that had the following columns:

- The "cf_id" column.

- The "contact_id" column.

- The "company_name" column.

- The "blurb" column, renamed to "description."

- The "goal" column, converted to the float data type.

- The "pledged" column, converted to the float data type.

- The "outcome" column.

- The "backers_count" column.

- The "country" column.

- The "currency" column.

- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format.

- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format.

- The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame.

- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame.
  Exported the campaign DataFrame as campaign.csv and saved it to our GitHub repository.

- Create the Contacts DataFrame.

-- Had two options to choose from when it came to extracting and transforming the data from the contacts.xlsx Excel data, ultimately we did both.

- Option 1: Use Python dictionary methods:

Imported the contacts.xlsx file into a DataFrame. Iterated through the DataFrame, converting each row to a dictionary.
Then iterated through each dictionary, doing the following:

Extracted the dictionary values from the keys by using a Python list comprehension. Added the values for each row to a new list.
Created a new DataFrame that contained the extracted data. Split each "name" column value into a first and last name, and placed each in a new column.
Cleaned and exported the DataFrame as contacts.csv and saved it in our GitHub repository.

- Option 2: Use regular expressions.

Imported the contacts.xlsx file into a DataFrame. Extracted the "contact_id", "name", and "email" columns by using regular expressions.
Created a new DataFrame with the extracted data. Converted the "contact_id" column to an integer type.
Split each "name" column value into a first and a last name, and placed each in a new column. Lastly we cleaned and then exported the DataFrame 
as contacts.csv and saved it to our GitHub repository.

- Create the Crowdfunding Database.

-- Inspected the four CSV files, and then sketched an ERD of the tables by using QuickDBDLinks to an external site. Used the information from the ERD to 
create a table schema for each CSV file. Saved the database schema as a Postgres file named crowdfunding_db_schema.sql, and saved it to your GitHub repository.
Created a new Postgres database, named crowdfunding_db. Used the database schema, created the tables in the correct order to handle the foreign keys.
Verifed the table creation by running a SELECT statement for each table. Afterwards Imported each CSV file into its corresponding SQL table and 
checked that each table had the correct data by running a SELECT statement for each.

*Technologies used: Microsoft Visual Studio Code, QuickDBD and PgAdmin 4
  
*Authors of project: Iman Najar & Robert Takan

  
