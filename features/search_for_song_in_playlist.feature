Feature: Search for song in playlist
	In order to get a song I wish to play
	As a user
	I should be able to search by index, name or matching string

Scenario: Search by index or name
	Given that I have the following songs:
		| name               | artist       | duration |
		| Sexy And I Know It | LMFAO        | 3:20     |
		| Oliver Twist       | D'banj       | 3:55     |
		| Rewing             | Paolo Nutini | 4:19     |
	When I search for song index 1
	Then it should give me name: "Oliver Twist", artist: "D'banj", duration: "3:55"
	But if I search for song index 0
	Then I expect name: "Sexy And I Know It", artist: "LMFAO", duration: "3:20"
	When I search for song by name: 'Rewing'
	Then it should give me result matching name: "Rewing", artist: "Paolo Nutini", duration: "4:19"