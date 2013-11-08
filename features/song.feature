Feature: Managing songs
	In order to play songs on my jukebox
	I should be able to add songs to play

Scenario: Adding songs
	Given that I have added a song with name: "Romance", artist: "John Williams" and duration: "3:21"
	When I call: "to_s"
	Then I should get the following result: "Song: Romance--John Williams (3:21)"