class Project
    attr_accessor :title

    def initialize(title)
        @title= title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end


    def backers
        backed = ProjectBacker.all.select {|project_backer| project_backer.project == self}
        backed.map {|b| b.backer}
    end
end