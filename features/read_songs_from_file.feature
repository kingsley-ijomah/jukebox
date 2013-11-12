Feature: Read songs from flat files
	In order to find a song in a file
	As a user
	I should be able to read in lines of songs from stored file

Scenario: Read songs from file
	Given I read from "Lib/songFile.txt"
	Then I should have a total of 15 songs in my playlist