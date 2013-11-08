require 'Song.rb'

class KaraokeSong < Song
	attr_reader :result

	def initialize(name, artist, duration, lyrics)
		super(name, artist, duration)
		@lyrics = lyrics
	end

	def to_s
		@result = "KS: #{@name}--#{@artist} (#{@duration}) [#{@lyrics}]"
	end
end