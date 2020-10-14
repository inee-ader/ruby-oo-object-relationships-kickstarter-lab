

class Project

    attr_reader :title, :backers
    @@all = []

    def self.all
        @@all
    end
    
    def initialize(title)
        @title = title
        @backers = []
        self.save
    end
    
    def save
        @@all << self
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        @backers
    end
    
end    