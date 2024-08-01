# HotelBookingSystem

# Install

1. Go to this website to download Eclipse: https://www.eclipse.org/downloads/
**Using Eclipse will be much easier to perfome testing compare to other compiler.**
2. Go to  this website to download VMware: https://www.vmware.com/info/workstation-player/evaluation
VMware is a vitual machine is a virtualization and cloud computing software provider. 
User can us VMware to gain asses to MacOs and WindowsXp to Windows 11.

# Prerequisite
**Junit4 and Jar files must be installed and set up properly**

# Set Up

# Deployment
How to deploy the JAVA program after download from GitHub
1.	Download the archive file containing your project code.
2.	Extract the archive to a specified directory.
3.	Import the extracted project into the Eclipse workspace.
4.	Build the project using Eclipse.
Here’s how you can create a GitHub Actions workflow to accomplish this:
![image](https://github.com/user-attachments/assets/5d274ff3-1c37-4d50-85e4-60462b532b37)
Explanation:
1.	Download Project Archive:
o	Downloads the archive file from a specified URL. Adjust the URL to where your archive is located.
2.	Extract Project Archive:
o	Extracts the contents of the archive to a directory on the GitHub Actions runner. Adjust the extraction path as needed.
3.	Install Eclipse:
o	Downloads and installs Eclipse, and creates a symbolic link to the eclipse executable.
4.	Build with Eclipse:
o	Import the Project: Imports the extracted project into the Eclipse workspace. Adjust the import path as needed.
o	Build the Project: Uses Eclipse command-line tools to build the project.
5.	List files:
o	Lists files in the bin directory to verify that the JAR file was created successfully.
Notes:
•	Replace URL: Ensure you replace https://example.com/path/to/your/archive.zip with the actual URL of your project archive.
•	Update Paths: Adjust /path/to/extracted/project to match the location where you want to extract the project and where the JAR file should be located after the build.
•	Workspace Directory: /tmp/workspace is used here as a temporary workspace directory. You can customize this path based on your requirements.
This workflow handles downloading, extracting, importing, and building your Java project using Eclipse in a GitHub Actions pipeline.

# Test Description

Junit is a widely used testing framework for Java programming. It helps developer swrite and run tests for their code, ensuring that individual units of functionality work as intended.

Installed jar file
1.	Provide the jar file
2.	Install the jar file in your own laptop or PC it will use after this.
