# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/LearnWithLlew/yourlanguage.starterproject/main/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#


iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install nodejs
refreshenv

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/LearnWithLlew/yourlanguage.starterproject.git C:\Code\yourlanguage.starterproject
cd C:\Code\yourlanguage.starterproject

# initialize and run tests
run_tests.bat

echo "Done!"
