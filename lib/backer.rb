
class Backer

    attr_reader :name, :projects
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @projects = []
        self.save
    end

    def save
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        @projects
    end


end