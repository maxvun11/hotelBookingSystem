# HotelBookingSystem

# Install

1. Go to this website to download Eclipse: https://www.eclipse.org/downloads/
   - **Using Eclipse will be much easier to perfome testing compare to other compiler.**
2. Go to  this website to download VMware: https://www.vmware.com/info/workstation-player/evaluation
   - VMware is a vitual machine is a virtualization and cloud computing software provider. 
User can us VMware to gain asses to MacOs and WindowsXp to Windows 11.
3. Remember to downlaod the Jar files.

# Prerequisite
**Junit4 and Jar files must be installed and set up properly**

# Set Up
1. Import all the files into Eclipse.
![image](https://github.com/user-attachments/assets/b5752be5-eaea-4a4e-bfb6-750a1766d60c)
2. Make sure that the JUnit libary version is on JUnit4.
![image](https://github.com/user-attachments/assets/95b84bc7-fe58-4280-8ae0-3afe5df62493)

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

##Installed jar file
1.	Provide the jar file
2.	Install the jar file in your own laptop or PC it will use after this.

## Set Up The Enviroment
1.	Eclipse contains the JUnit package to create a JUnit tes.

2.	The library can be added during the creation of class using the wizard. If we want to add it later, **right-click** on project name in the packges explorer and select **Build Path -> Add Libraries**.
![image](https://github.com/user-attachments/assets/5da46566-24ef-4ee4-bce4-274429f08a5b)
3.	Select the JUnit form the list. Click **[Next]**
![image](https://github.com/user-attachments/assets/0288ba8d-2d59-4246-bb49-c72719cd6cc2)
4. Select JUnit 4 and then **[Finish]**, You should see the JUnit library has been added into the project in the package explorer.
![image](https://github.com/user-attachments/assets/ff830a7a-9848-42e1-8870-c158917313ec)
5. The jar file can be added during the creation of class using the wizard. If we want to add it later, right-click on project name in the package explorer and select confugure build path.
![image](https://github.com/user-attachments/assets/8d641f0a-0085-469a-a1a3-fb98a15bf484)
6.	Select Add External JARs at **right hand side.**
![image](https://github.com/user-attachments/assets/f9a94ef2-16ec-4a2b-a6b4-f4bbe483eba3)
7.	select **All** the jar file then click **open**.
![image](https://github.com/user-attachments/assets/a10ba630-5674-4daa-9a32-6fcbb2efc103)
8.	After that, we can see the jar that we selected was show in the library. Then click **Apply and Close** at right bottom.
![image](https://github.com/user-attachments/assets/e0915705-e8be-4cfa-beca-a82099c6eb39)
9.	You also may check the library and jar file that add at left hand side.
10.	Once we set up the testing environment , we are able to conduct unit testing, integration testing and test suite

## Unit Test
Unit testing is a software testing technique where individual components or functions of a program are tested in isolation to ensure they work as expected. These tests are typically automated and focus on verifying the correctness of specific parts of the code, often called "units."

1.	The @RunWith(JUnitParamsRunner.class) annotation is used in JUnit testing to specify a custom runner class that will execute the test class. In this case, the JUnitParamsRunner is a runner provided by the JUnitParams library, which is used to support parameterized tests in JUnit.

2.	To make the methd will run in test, there is must be add @Test befor ethe method.

3.	Example code:
//test the setRoomsWishToBook
    @Test
    @Parameters({"guest, 1, 1", "normal, 2, 2", "VIP, 3, 3"})
    public void setRoomWishToBookWithValid(String member_type, int count, int expectedResult) {
        User u = new User("TestUser", member_type); // Create a User object with a name and member type
        u.setRoomsWishToBook(count); 
        assertEquals(expectedResult, u.getRoomsWishToBook()); 
    }

 //test set name
    @Test
    @Parameters({"Jason,Jason","Emily,Emily"})
    public void setNameWithValid(String name,String expectedResult)
    {
    	//User u = new User("TestUser", "member");
    	u.setName(name);
    	String actualResult = u.getName();
    	assertEquals(expectedResult,actualResult);
    }

4.	To view the testing method is valid or invalid, we can click green icon for run. Then it weill shwo the result green color mean valid or successful, red color mean invalid or unsuccessful.
![image](https://github.com/user-attachments/assets/508194c3-1a79-4a66-be82-f2cba8b68379)
![image](https://github.com/user-attachments/assets/a527d434-524a-4ce8-9318-c2650606b907)

## Integration Test
1.	The @RunWith(JUnitParamsRunner.class) annotation is used in JUnit testing to specify a custom runner class that will execute the test class. In this case, the JUnitParamsRunner is a runner provided by the JUnitParams library, which is used to support parameterized tests in JUnit.

2.	For run the integration test , we will use the @Before and @After before annotation the test method.


3.	The @Before annotation in JUnit is used to specify a method that should be executed before each test method in the test class. This method is often used to set up the test environment, initialize data, or configure necessary resources to ensure that each test starts from a known and consistent state.


@Before
	public void setUpTests() {
		//this is to set up the availablerooms.txt file to 5,5,5 Before each test
		try {
	    	PrintWriter pw = new PrintWriter("availablerooms.txt");
	    	pw.println("5,5,5");
	    	pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

4.	The @After annotation in JUnit is used to specify a method that should be executed after each test method in the test class. This method is often used for cleanup activities or to reset the test environment to a consistent state, ensuring that tests do not interfere with each other.

@After
	public void afterTests() {
		try {
			//this is to reset the availablerooms.txt file to 5,5,5 after each test
	    	PrintWriter pw = new PrintWriter("availablerooms.txt");
	    	pw.println("5,5,5");
	    	pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	User vip1 = new User("xy","VIP");
	User vip2 = new User("as","VIP");
	User vip3 = new User("ch","VIP");
	User vip4 = new User("ws","VIP");
	User vip5 = new User("jason","VIP");
	User vip6 = new User("jasmine","VIP");
	User normal1 = new User("nor1", "normal");
	User normal2 = new User("nor2", "normal");
	User normal3 = new User("nor3", "normal");
	User normal4 = new User("nor4", "normal");
	User normal5 = new User("nor5", "normal");
	User normal6 = new User("nor6", "normal");
	User guest1 = new User("guest1", "guest");
	User guest2 = new User("guest2", "guest");
	User guest3 = new User("guest3", "guest");
	User guest4 = new User("guest4", "guest");
	User guest5 = new User("guest5", "guest");
	User guest6 = new User("guest6", "guest");
	

	//this test will mock the ConsoleUtilities class in order to fix the answer to "y" when user is prompted to cancel
	//booking
	//As usual, we will assume every user book the maximum allowed of rooms to truly test the reliability 
	//potential of the hotel room booking system
	@Test//no1
	@Parameters(method = "getParamsForTestBookingAndCancel")
	public void testBookingAndCancel(User[] users, User[] usersCancelBooking, User[] expectedRemainingUsersInWL, User[] usersBookingPendingStillTrue) {
		ConsoleUtilities cuMock = mock(ConsoleUtilities.class);
		when(cuMock.nextLine()).thenReturn("y");
	 	WaitingList wl = new WaitingList(cuMock);
	 		
	 	for(User user : users)
	 	{
	 		boolean bookingOutcome = user.bookRooms(user.getMaxRooms());
	 		if(!bookingOutcome)
	 		{
	 			wl.addWaiting(user, user.getMaxRooms());
	 		}
	 	}
	 	
	 	ArrayList<User> actualUsersLeftInWL = new ArrayList<User>();
	 	for(User user : usersCancelBooking)
	 	{
	 	/*
	 	* cancelOutcome will check if the user were placed in waiting list, 
	 	* if yes, it will remove the user from the WL and return a true boolean value
	 	* which will then be tested whether the user has been removed from the WL ArrayList
	 	* if no, it will return a false boolean value, and will proceed to cancel the successfully placed booking
	 	* which will then be tested whether their previous successfully placed booking pending status is set to false
	 	*/
	 		boolean cancelBookingFromWL = wl.removeWaiting(user);
	 		if(!cancelBookingFromWL)
	 		{
	 			for(int x = 0; x < user.getBookings().size(); x++) {
	 				user.getBookings().get(x).cancelBooking();
	 				assertFalse(user.getBookings().get(x).isPending());
	 			}
	 		}
	 	}
			if(wl.getVipWaiting().size()>0)
			{
				for(int x = 0; x < wl.getVipWaiting().size(); x++)
					actualUsersLeftInWL.add(wl.getVipWaiting().get(x));
			}
			if(wl.getMemberWaiting().size()>0)
			{
				for(int x = 0; x < wl.getMemberWaiting().size(); x++)
					actualUsersLeftInWL.add(wl.getMemberWaiting().get(x));
			}
			if(wl.getNormalWaiting().size()>0)
			{
				for(int x = 0; x < wl.getNormalWaiting().size(); x++)
					actualUsersLeftInWL.add(wl.getNormalWaiting().get(x));
			}
			User [] actualUsersLeftArray = new User[actualUsersLeftInWL.size()];
			actualUsersLeftArray = actualUsersLeftInWL.toArray(actualUsersLeftArray);
			assertArrayEquals(expectedRemainingUsersInWL, actualUsersLeftArray);
	 	for(int x = 0; x < usersBookingPendingStillTrue.length; x++)
	 	{
	 			assertTrue(usersBookingPendingStillTrue[x].getBookings().get(0).isPending());
	 	}
	}
	
	 private Object[] getParamsForTestBookingAndCancel() {
	    	return new Object[] {
	    			//1st parameter: the users that want to book rooms
	    			//2nd parameter: the selected users who want to cancel booking
	    			//3rd parameter: the remaining users who are still in Waiting List
	    			//4th parameter: the users whose successfully placed a booking, but didn't cancel
	    			new Object[] {
	    					new User[] {vip1, vip2, vip3, vip4, vip5, vip6}, 
	    					new User[] {vip5, vip6}, 
	    					new User[] {},
	    					new User[] {vip1, vip2, vip3, vip4}
	    			},
	    			new Object[] {
	    					new User[] {vip1, vip2, normal1, normal2, normal3, vip6, guest1, normal4, guest4, vip5}, 
	    					new User[] {guest1, vip6, normal4}, 
	    					new User[] {vip5, guest4},
	    					new User[] {vip1, vip2, normal1, normal2, normal3}
	    			}
	    	};
	    }
}
