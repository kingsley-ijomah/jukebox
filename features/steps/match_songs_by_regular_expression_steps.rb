require 'PlayList'

Given(/^that I populate playlist from "(.*?)"$/) do |file|
  @playlist = PlayList.new
  @playlist.importPlayList(file)
end

When(/^I search for song having string "(.*?)" in artist name$/) do |artist|
  @playlist.search_by_name(artist)
end

Then(/^I expect to get (\d+) results back$/) do |total|
  expect(@playlist.search_results.length).to eq(total.to_i)
end

Then(/^I expect artists: "(.*?)", "(.*?)" and "(.*?)"$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end