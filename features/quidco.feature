Feature:Join us
	@joinus
	Scenario: Join us on Quidco
		Given the user is on the launch page of the app
		When the user clicks on the join us tab
		And again clicks on join us tab
		Then user enters First name
		Then user enters Last name
		Then user enters email address
		Then user enters password
		Then user clicks on join us tab 