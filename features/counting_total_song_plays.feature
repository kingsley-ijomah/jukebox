Feature: Counting Total Song Plays
	In order to get the total number of times a song is played and total songs played
	As a user
	I want to play a song and take count of total times it is played and total songs played

Scenario: Number of times a song is played
	Given that I have a song name: "Rondo Alla Turca" artist: "Wolfgang Amadeus Mozart" duration: "3:29"
	When I check total plays before actually playing the song
	Then I should get a total plays of 0
	But if I play the song 4 times
	And play the song another 2 more times
	Then the total play should be 6 times in total
