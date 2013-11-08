Feature: Managing Karaoke
	In order to add a new karaoke song with lyrics
	I should be able to create a new song through inherited method

Scenario: Create Karaoke Song
	Given that I have created karaoke name: "Baby Oku", artist: "Flavour", duration: "3:57" with lyrics: "odikwa very risky oh..."
	When I call the following: "to_s"
	Then I should get the result: "KS: Baby Oku--Flavour (3:57) [odikwa very risky oh...]"
