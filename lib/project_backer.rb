
class ProjectBacker

    attr_reader :project, :backer
    @@all = []

    def self.all
        @@all
    end
    
    def initialize(project, backer)
        @project = project
        @backer = backer
        @backer.projects << project
        @project.backers << backer
        self.save
    end
    
    def save
        @@all << self
    end
    
    
end    