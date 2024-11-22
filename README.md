# Automation Test Exam - Robot Framework

This project activity is an automation framework using Robot framework and Python to run test scripts for the url https://automationinterface1.front.staging.optimy.net/en/.

## Project Structure

my_test_framework/
├── tests/
│   ├── assessment_tests.robot
│   ├── results/
├── resources/
│   └── variables.py
├── requirements.txt         a
├── README.md
                
 
## Prerequisites and Necessities

1. Python: Install Python to your device or machine.
2. pip: Install pip (this usually comes with Python)
3. Robot Framework and Selenium Library: Open terminal and input the following:
	pip install robotframework
	pip install robotframework-seleniumlibrary
4. WebDriver Manager: Install WebDriver Manager to your device using `pip install webdriver-manager`in the terminal.

## How to Run the Test Scripts
1. Clone the repository
   Open a terminal and input the following:
	git clone https://github.com/KlawMamba/automation-answer.git

	cd C:\Users\ASUS\Desktop\Automation\automation-answer
2. To run the test script, use this in the terminal with the corresponding name:
    robot -d results assessment_tests.robot

## Remarks
Note: If there are problems or issues on running the tests, please make sure to:
1. Check the version of the Chrome browser on your device or machine
2. Check if the WebDriver manager is correctly installed.

