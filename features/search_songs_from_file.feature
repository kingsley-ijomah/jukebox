Feature: Search songs from flat files
	In order to find a song in a file
	As a user
	I should be able to read in lines of songs from stored file

Scenario: Read songs from file
	Given given that I have "songFile" to read from
	When I search for "sun"
	Then I should find song with name "Sunshine" and artist "David Guetta"