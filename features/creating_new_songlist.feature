Feature: Creating new song list
	In order to create a list of songs for play
	As a user
	I want to be able to add, remove songs from the playlist

Scenario: Creating song list
	Given I added these songs to playlist by calling append method
		| name             | artist          | duration |
		| Tell Me How Come | Morgan Hwritage | 2:20     |
		| Golden Brown     | The Stranglers  | 1:00     |
		| The River Sings  | Enya            | 2:00     |
		| Killer Queen     | Queen           | 3:20     |
		| The Logical Song | Scooter         | 2:00     |
	When I check total playlist I expect 5 songs

Scenario: Removing songs from end of play list
	Given that I have already added 5 songs
	And the last song is currently 'The Logical Song' by 'Scooter'
	When I remove the last song in the play list
	Then I expect total songs left to be 4 songs
	And the last song to be 'Killer Queen' by 'Queen'