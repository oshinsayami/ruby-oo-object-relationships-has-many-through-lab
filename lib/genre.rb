class Genre

    attr_accessor :name

    @@all= []

    def initialize(name)
        @name= name
        @@all << self
   end

   def self.all
    @@all << self
   end

    def songs
        Song.all {|song| song.genre == self}
    end

    def artists
       songs.map { |a| a.artist}
    end
end