# frozen_string_literal: true

class User
  attr_accessor :name, :projects

  def initialize(name)
    @name = name
    @projects = []
  end

  def add_project(project)
    @projects << project
  end

  def remove_project(project_name)
    @projects.reject! { |project| project.name == project_name }
  end

  def to_s
    project_list = @projects.map(&:to_s).join("\n\n")
    "User: #{@name}\nProjects:\n#{project_list}"
  end
end
