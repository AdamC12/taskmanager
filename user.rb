# frozen_string_literal: true

class User
  attr_accessor :name, :projects

  def initialize(name)
    @name = name
    @projects = []
  end

  def add_project(project, role)
    project.add_user_to_team(self, role)
    @projects << project
  end

  def remove_project(project_name)
    @projects.reject! { |project| project.name == project_name }
  end

  def to_s
    projects_string = @projects.map do |project|
      project.formatted_for_user(self)
    end.join("\n\n")

    "User: #{@name}\nProjects:\n\n#{projects_string}"
  end
end
