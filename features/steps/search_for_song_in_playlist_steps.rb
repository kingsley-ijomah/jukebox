require 'playlist.rb'
require 'song.rb'

Given(/^that I have the following songs:$/) do |table|
  # table is a Cucumber::Ast::Table
  @playlist = PlayList.new
  table.hashes.each do | song |
  	@playlist.append(Song.new(song['name'], song['artist'], song['duration']))
  end
end

When(/^I search for song index (\d+)$/) do |index|
  @song = @playlist[index.to_i]
end

Then(/^it should give me name: "(.*?)", artist: "(.*?)", duration: "(.*?)"$/) do |name, artist, duration|
	expect(@song.name).to eq(name)
	expect(@song.artist).to eq(artist)
	expect(@song.duration).to eq(duration)
end

Then(/^if I search for song index (\d+)$/) do |index|
  @song = @playlist[index.to_i]
end

Then(/^I expect name: "(.*?)", artist: "(.*?)", duration: "(.*?)"$/) do |name, artist, duration|
	expect(@song.name).to eq(name)
	expect(@song.artist).to eq(artist)
	expect(@song.duration).to eq(duration)
end

When(/^I search for song by name: '(.*?)'$/) do | name |
	@song = @playlist[name]
end

Then(/^it should give me result matching name: "(.*?)", artist: "(.*?)", duration: "(.*?)"$/) do | name, artist, duration |
	expect(@song.name).to eq(name)
	expect(@song.artist).to eq(artist)
	expect(@song.duration).to eq(duration)
end