(1..10).each do |i|
  user = User.new
  user.name = "User #{i}"
  user.email = "user#{i}@doinhome.com.br"
  user.password = "senha123"
  user.phone = "(84) 99819-8816"
  user.is_admin = (i % 2 == 0) ? true : false
  user.save
end

(1..10).each do |i|
  task = Task.new
  task.title = "Task #{i}"
  task.description = "This is task #{i}"
  task.status = 1
  task.difficulty = 5
  task.close_date = Date.today+i.days
  task.close_limit_date = Date.today+(2*i.days)
  task.user_id = 1
  task.save
end

score = Score.new
score.user = User.first
score.task = Task.all[0]
score.points = 10
score.save

score = Score.new
score.user = User.first
score.task = Task.all[1]
score.points = 15
score.save

score = Score.new
score.user = User.last
score.task = Task.all[2]
score.points = 10
score.save
