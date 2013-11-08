require 'KaraokeSong.rb'

Given(/^that I have created karaoke name: "(.*?)", artist: "(.*?)", duration: "(.*?)" with lyrics: "(.*?)"$/) do |name, artist, duration, lyrics|
  @karaoke = KaraokeSong.new(name, artist, duration, lyrics)
end

When(/^I call the following: "(.*?)"$/) do |to_s|
  @karaoke.to_s
end

Then(/^I should get the result: "(.*?)"$/) do |result|
  @karaoke.result.should == result
end