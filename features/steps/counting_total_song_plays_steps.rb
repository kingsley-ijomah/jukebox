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

Given(/^that I have a song with name: "(.*?)", artist: "(.*?)", duration: "(.*?)"$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

When(/^I have another song with name: "(.*?)", artist: "(.*?)", duration: "(.*?)"$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

When(/^I play play 'Beautiful Lady' by 'Gyptian' (\d+) times$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I also play 'She Doesn\\'t Mind' by 'Sean Paul' (\d+) times$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^the total sum of all songs played should be (\d+) times$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end