class PlayList
	attr_reader :songs

	def initialize
		@songs = Array.new
	end

	def append(aSong)
		@songs.push(aSong)
	end

	def removeLast
		@songs.pop
	end

	def removeFirst
		@songs.shift
	end

	def getLastSong
		@songs[-1]
	end

	def getFirstSong
		@songs[0]
	end

	def totalSongs
		@songs.length
	end
end