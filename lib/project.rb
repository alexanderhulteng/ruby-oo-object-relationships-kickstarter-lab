class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |k| 
          k.project == self
        end
        project_backers.map do |k|
          k.backer
        end
      end




end