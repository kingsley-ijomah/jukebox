Feature: Adding New songs
	In order to play songs on my jukebox
	I should be able to add songs to play

Scenario: Adding songs
	Given that I have added a song with name: "Romance", artist: "John Williams" and duration: "3:21"
	When I call: "to_s"
	Then I should get the following result: "Song: Romance--John Williams (3:21)"

Scenario Outline: Reading each song details
	Given that I have added song details with name: "Turn The Page", artist: "The Streets" and duration: "3:16"
	When I read attribute <attribute>, it should show me <value>

	Examples:
	| attribute  | value           |
	| 'name'     | 'Turn The Page' |
	| 'artist'   | 'The Streets'   |
	| 'duration' | '3:16'          |