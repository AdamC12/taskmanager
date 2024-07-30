require_relative 'task'
require_relative 'project'
require_relative 'user'

user = User.new("Alice")

first_project = Project.new("Get to challenger")
task1 = Task.new("Review robs review vods", "So i can learn from them", "20-08-24")
task2 = Task.new("Try to emulate robs heimerdinger", "Practice heimerdinger in solo queue, acting as if I was Rob", "20-08-24")
first_project.add_task(task1)
first_project.add_task(task2)


second_project = Project.new("Go outside")
task1 = Task.new("Stand up from computer", "Do everything possible to step away from the computer", "20-08-24")
second_project.add_task(task1)

user.add_project(first_project, "Supervisor")
user.add_project(second_project, "Lead")

puts user