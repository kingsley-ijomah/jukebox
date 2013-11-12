require 'song.rb'
require 'playlist.rb'

Given(/^I read from "(.*?)"$/) do |songFile|
  @playlist = PlayList.new
  @playlist.importPlayList(songFile)
end

Then(/^I should have a total of (\d+) songs in my playlist$/) do |total|
  expect(@playlist.totalSongs).to eq(total.to_i)
end