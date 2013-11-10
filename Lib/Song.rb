class Song
	attr_reader :result, :name, :artist, :duration, :total

	@@total = 0

    def initialize(name, artist, duration)
    	@name = name
		@artist = artist
		@duration = duration
		@total = 0
    end

    def to_s
    	@result = "Song: #{@name}--#{@artist} (#{@duration})"
    end

    def play
    	@total += 1
    	@@total += 1
    end

    def Song.total
    	@@total
    end

    def Song.reset_total
    	@@total = 0
    end
end
