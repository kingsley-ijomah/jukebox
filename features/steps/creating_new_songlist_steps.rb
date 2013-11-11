require 'playlist.rb'

Given(/^I added these songs to playlist by calling append method$/) do |table|
  # table is a Cucumber::Ast::Table
  @mixed_playlist = PlayList.new
  table.hashes.each do | song |
  	@mixed_playlist.append(song)
  end
end

When(/^I check total playlist I expect (\d+) songs$/) do |total|
  expect(@mixed_playlist.totalSongs).to eq(total.to_i)
end

Given(/^that I have already added (\d+) songs:$/) do |total, table|
  # table is a Cucumber::Ast::Table
  @playlist = PlayList.new
  table.hashes.each do | song |
  	@playlist.append(song)
  end
  expect(@playlist.totalSongs).to eq(total.to_i)
end

Given(/^the last song is currently '(.*?)' by '(.*?)'$/) do |name, artist|
  last_song = @playlist.getLastSong
  expect(last_song['name']).to eq(name)
  expect(last_song['artist']).to eq(artist)
end

When(/^I remove the last song in the play list$/) do
  @playlist.removeLast
end

Then(/^I expect total songs left to be (\d+) songs$/) do |total|
  expect(@playlist.totalSongs).to eq(total.to_i)
end

Then(/^the last song to be '(.*?)' by '(.*?)'$/) do |name, artist|
  @last_song = @playlist.getLastSong
  expect(@last_song['name']).to eq(name)
  expect(@last_song['artist']).to eq(artist)
end

Given(/^that I now have (\d+) songs left$/) do |total, table|
	@playlist = PlayList.new
	table.hashes.each do | song |
		@playlist.append(song)
	end
  expect(@playlist.totalSongs).to eq(total.to_i)
end

Given(/^the first song is currently '(.*?)' by '(.*?)'$/) do |name, artist|
  first_song = @playlist.getFirstSong
  expect(first_song['name']).to eq(name)
  expect(first_song['artist']).to eq(artist)
end

When(/^I remove the first song from the list$/) do
  @playlist.removeFirst
end

Then(/^I expect the first song to now be '(.*?)' by '(.*?)'$/) do |name, artist|
  first_song = @playlist.getFirstSong
  expect(first_song['name']).to eq(name)
  expect(first_song['artist']).to eq(artist)
end

Then(/^I expect the total songs now left to be (\d+)$/) do |total|
  expect(@playlist.totalSongs).to eq(total.to_i)
end