# 🥅 Goals

Given system under [https://talent-recruitment.test.bluestonepim.com/index.html](https://talent-recruitment.test.bluestonepim.com/index.html)

The scenarios to test are as follows:

● User should able to login to the system

   ○ Criteria

   ■ Username and password cannot be blank
   ■ Username must be in email format

● User should be able to logout from the system

● User should be able to search data in the table

● User should be able to switch from light mode/dark mode

## ⚙️Setup

Download and install Python in your system [https://www.python.org/downloads/](https://www.python.org/downloads/)

Add Python to your System's Environment Path
![Screenshot 2022-10-28 214643](https://user-images.githubusercontent.com/20879031/198679102-f3f32ac7-d326-4ef5-bf91-2bd075343a3a.png)


Install the following libraries in your system

```bash
pip install selenium
```
```bash
pip install robotframework
```
```bash
pip install robotframework-seleniumlibrary
```
Now download PyCharm IDE [https://www.jetbrains.com/pycharm/download/](https://www.jetbrains.com/pycharm/download/)

Clone this repository. Open CMD and run the following command
```bash
git clone https://github.com/TheSRK/modern-ui-automation-using-cypress.git
```
Now open the downloaded folder from PyCharm

Go to PyCharm's File > Settings > Project: Robot_Practice > Python Interpreter
Click + sign, search below given packages and install those in your IDE
```bash
selenium
```
```bash
robotframework
```
```bash
robotframework-seleniumlibrary
```
Now install the IntelliBot plugin in your IDE.

Go to File > Settings > Plugins and then search IntelliBot #patched, install and restart your IDE


## ✔️Run tests
Run the following command
```python
robot Tests\*.robot 
```

