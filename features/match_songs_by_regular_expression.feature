Feature: Match songs by regular expression
	In order to find songs by partial string
	As a user
	I will search a playlist with patial string and get back matching songs

Scenario: Get matching artists
	Given that I populate playlist from "Lib/PlayList.txt"
	When I search for song having string "th" in artist name
	Then I expect to get 3 results back
	And I expect artists: "Thunder And Blazes", "On The Floor " and "Elizabethan Serenade"