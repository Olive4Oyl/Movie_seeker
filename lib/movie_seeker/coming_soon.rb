class MovieSeeker::Coming_soon

	 attr_accessor :name, :description

	 @@all = []

	 def initialize(coming_soon)
	 	coming_soon.each do |key, value|
			self.send("#{key}=", value) 
		end
		@@all << self
	end

	def self.all
		@@all
	end

	def self.create_coming_soon(coming_soon)
		coming_soon.each do |hash|
		MovieSeeker::Coming_soon.new(hash)
		end
  	end



end