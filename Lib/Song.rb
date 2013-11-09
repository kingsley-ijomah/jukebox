class Song
	attr_reader :result, :name, :artist, :duration

    def initialize(name, artist, duration)
    	@name = name
		@artist = artist
		@duration = duration
    end

    def to_s
    	@result = "Song: #{@name}--#{@artist} (#{@duration})"
    end
end
