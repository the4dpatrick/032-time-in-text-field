(1..4).each do |num|
  Task.create!(name: "Task #{num}", due_at: num.day.from_now)
end
