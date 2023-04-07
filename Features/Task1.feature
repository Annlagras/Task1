Feature:Seller add profile details 
As a seller
I want the feature to add my profile details
So that
The people seeking for some skills can look into my details.


	Scenario: seller adds profile details successfully
	Given the seller is on the profile page
	When the seller adds their profile details
	Then the deatils should be saved
	And the seller should see their updated profile details on the profile page

	Scenario: seller edits profile details successfully
	Given  the seller is on the profile page
	And the seller has existing profile details
	When the seller edits their profile details
	Then the details should be saved
	And the seller should see the updated profile details on the profile page

	Scenario: seller cancels profile details edit
	Given the seller is on the profile page
	And the seller has existing profile details
	When the seller tries to edit the profile details
	And then cancels the edit
	Then the previous details should still be saved
	And the seller should see their previous profile details on the page

	Scenario: seller forgets to fill in required profile field
	Given the seller is on the profile page
	When the seller tries to save their profile details without filling in a required field
	Then an error message should be displayed
	And the details should be saved

	Scenario: seller tries to add invalid value to profile details
	Given the seller is on the profile page
	When the seller tries to add invalid value to one of the profile fields
	Then an errror message should be displayed
	And the profile details should not be saved

	Scenario: seller views their own profile page
    Given the seller is logged in
    When the seller goes to their profile page
    Then the seller should see their own profile details

	Scenario: Customer views seller profile page
    Given a customer is browsing the marketplace
    When the customer visits a seller's profile page
    Then the customer should see the seller's profile details


