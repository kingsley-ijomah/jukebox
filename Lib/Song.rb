class Song
	attr_reader :result, :name, :artist, :duration, :total

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
    end
end
