class PlayList
	attr_reader :songs
	
	def initialize
		@songs = Array.new
	end

	def append(aSong)
		@songs.push(aSong)
	end
end