# Python-Visualizations

#COVID-19 Data Visualization with Python and MySQL
As a data scientist, I have created a repository containing a collection of Python scripts for visualizing COVID-19 data using the Pandas and Matplotlib libraries, with the data cleaned and prepared using MySQL.

#Installation
To use these scripts, you will need to have Python (version 3.6 or later) and MySQL installed on your machine. You will also need to install the following Python packages using pip: pandas, matplotlib, and mysql-connector-python.

#Usage
To use the scripts, I first cloned this repository to my local machine by running the command git clone https://github.com/your-username/covid19-data-visualization.git in my terminal. Next, I made sure to have a MySQL server set up and running. I created a new database called covid19 and imported the provided CSV file covid19-data.csv into a table called covid_cases.

Once the database was set up, I used the Python scripts in the scripts directory to clean and visualize the data. Before running the scripts, I updated the connection settings in the config.py file to match my MySQL server configuration.

#Data Cleaning
To clean the data, I used the clean_data.py script in the scripts directory. This script read in the data from the covid_cases table and performed some basic cleaning and preparation. The script removed any rows with missing data, removed any duplicate rows, and converted the date column to a Pandas datetime object.

The cleaned data was then written to a new CSV file called cleaned_data.csv, which can be used for further analysis and visualization.

#Data Visualization
To visualize the cleaned data, I used the visualize_data.py script in the scripts directory. This script read in the cleaned data from the cleaned_data.csv file and created several different types of visualizations using the Matplotlib library. The script created line plots of the daily number of cases and deaths, a stacked bar chart of the total number of cases and deaths by country, and a scatter plot of the total number of cases and deaths by population.

The visualizations were saved to the output directory as PNG images.

**#Code Summary
This Python code reads in a CSV file containing cleaned medical data and creates various charts to visualize information about patients, such as their age group, race, zip code, lab test type, and the temporal distribution of COVID lab tests.

For the age chart, the patient_birth_date column is converted to a datetime object and used to calculate the age of each patient, which is then divided into four age groups. A bar chart is created to display the distribution of patient age groups.

For the race chart, a list of races is created, and the dataframe is filtered to include only those races. A bar chart is created to display the distribution of patient races, with the x-axis labels rotated by 45 degrees for better readability.

For the zip code chart, the current_address_zip column is used to count the number of patients in each zip code. Zip codes with counts less than 5 are removed, and a bar chart is created to display the distribution of patient zip codes.

For the lab test chart, the lab_test_type column is used to count the number of lab tests of each type, and a bar chart is created to display the distribution of lab test types.

For the temporal distribution of COVID lab tests, the lab_test_date column is converted to a datetime object, and the data is grouped by month to count the number of lab tests in each month. A line plot is created to visualize the temporal distribution, and the mean and median number of tests per month are computed and printed.
