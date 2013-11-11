require 'playlist.rb'

Given(/^I added these songs to playlist by calling append method$/) do |table|
  # table is a Cucumber::Ast::Table
  @mixed_playlist = PlayList.new
  table.hashes.each do | song |
  	@mixed_playlist.append(song)
  end
end

When(/^I check total playlist I expect (\d+) songs$/) do |total|
  expect(@mixed_playlist.songs.length).to eq(total.to_i)
end