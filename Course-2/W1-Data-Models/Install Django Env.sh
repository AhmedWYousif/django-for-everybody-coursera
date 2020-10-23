
# get version of django
python -m django --version

# C:/Users/Ahmed_Y/AppData/Local/Programs/Python/Python39/python -m venv tutorial-env
# Create Virual environment
python3 -m venv tutorial-env

# activate virual environment
source ./tutorial-env/Scripts/activate

# initalize git and ignore venv dir
git init 
echo 'tutorial-env' > .gitignore

# install django
python -m pip install Django

# check django version
python -m django --version

# gnerate packages installer
pip freeze > requirements.txt

# install packages
pip install -r requirements.txt 



