require 'Song.rb'

Given(/^that I have added a song with name: "(.*?)", artist: "(.*?)" and duration: "(.*?)"$/) do |name, artist, duration|
  @song = Song.new(name, artist, duration)
end

When(/^I call: "(.*?)"$/) do |to_s|
  @result = @song.to_s
end

Then(/^I should get the following result:"(.*?)"$/) do |result|
  result
end