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
	When I check total playlist I expect 5
