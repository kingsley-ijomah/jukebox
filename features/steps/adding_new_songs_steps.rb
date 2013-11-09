require 'Song.rb'

Given(/^that I have added a song with name: "(.*?)", artist: "(.*?)" and duration: "(.*?)"$/) do |name, artist, duration|
  @song = Song.new(name, artist, duration)
end

When(/^I call: "(.*?)"$/) do |to_s|
  @result = @song.to_s
end

Then(/^I should get the following result: "(.*?)"$/) do |result|
  @song.result.should == result
end

Given(/^that I have added song details with name: "(.*?)", artist: "(.*?)" and duration: "(.*?)"$/) do |name, artist, duration |
	@song = Song.new(name, artist, duration)
end

When(/^I read attribute 'name', it should show me '(.*?)'$/) do | result |
	@song.name.should eq(result)
end

When(/^I read attribute 'artist', it should show me '(.*?)'$/) do | result |
	@song.artist.should eq(result)
end

When(/^I read attribute 'duration', it should show me '(.*?)'$/) do | result |
	@song.duration.should eq(result)
end