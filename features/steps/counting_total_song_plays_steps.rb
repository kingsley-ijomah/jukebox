require 'song.rb'

Given(/^that I have a song name: "(.*?)" artist: "(.*?)" duration: "(.*?)"$/) do |name, artist, duration|
  @song = Song.new(name, artist, duration)
end

When(/^I check total plays before actually playing the song$/) do
  @song_total = @song.total
end

Then(/^I should get a total plays of (\d+)$/) do |total|
  #@song_total.should eq(total.to_i)
  expect(@song.total).to be(total.to_i)
end

Then(/^if I play the song (\d+) times$/) do |total|
  for i in 0...total.to_i
    @song.play
  end
  expect(@song.total).to be(total.to_i)
end

Then(/^play the song another (\d+) more times$/) do |total|
  for i in 0...total.to_i
    @song.play
  end
end

Then(/^the total play should be (\d+) times in total$/) do |total|
  expect(@song.total).to be(total.to_i)
end

#============

Given(/^that I have a song with name: "(.*?)", artist: "(.*?)", duration: "(.*?)"$/) do |name, artist, duration|
  @song = Hash.new
  @song[artist] = Song.new(name, artist, duration)
end

When(/^I add another song with name: "(.*?)", artist: "(.*?)", duration: "(.*?)"$/) do |name, artist, duration|
  @song[artist] = Song.new(name, artist, duration)
end

When(/^I have not played any songs yet so total sum of all songs should be (\d+)$/) do |total|
  Song.reset_total
  expect(Song.total).to be(total.to_i)
end

When(/^I play play 'Beautiful Lady' by '(.*?)' (\d+) times$/) do |artist, total|
  for i in 0...total.to_i
    @song[artist].play
  end
end

When(/^I also play 'She Doesn\\'t Mind' by '(.*?)' (\d+) times$/) do |artist, total|
  for i in 0...total.to_i
    @song[artist].play
  end
end

Then(/^the total sum of all songs played should be (\d+) times$/) do |total|
  expect(Song.total).to be(total.to_i)
end