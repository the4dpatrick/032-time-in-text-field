(1..4).each do |num|
  Task.create!(name: "Task #{num}", due_at: Time.now + (86400 * num))
end
