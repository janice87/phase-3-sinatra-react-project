puts "🌱 Seeding spices..."

# Seed your database here
janice = User.create(name: "Janice", email: "janicecodes@gmail.com")

t1 = Todo.create(todo: "Review for bootcamp", user_id: 4)
t2 = Todo.create(todo: "30 mins of Yoga", user_id: 4)
t3 = Todo.create(todo: "Call Lucas's pediatrician", user_id: 4)

m1 = Mood.create(mood: "OK", date: "2022-07-21", win: "Took a walk during lunch", challenge: "Busy day at work", user_id: 4)

j1 = Journal.create(date: "2022-07-21", content: "Started working on my project for phase 3, busy day at work and managed to get a walk in.", user_id: 4)

puts "✅ Done seeding!"
