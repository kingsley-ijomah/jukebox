require 'song.rb'

class PlayList < Song
	attr_reader :songs, :search_results

	def initialize
		@songs = Array.new
		@search_results = Array.new
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

	def search_by_name(search)
		search = search.downcase
		@songs.each do | song |
			if /#{search}/.match(song.name.downcase).to_s == search.to_s
				@search_results.push(song)
			end
		end
	end

	def importPlayList(path)
		lines = File.open(path)
		lines.each do | line |
			file, duration, name, artist = line.chomp.split(/\s*\|\s*/)
			@song = Song.new(name, artist, duration)
			append(@song)
		end
	end

	def [](key)
		return @songs[key] if key.kind_of?(Integer)
		return @songs.find { |aSong| aSong.name == key }
	end
end