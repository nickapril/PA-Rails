# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lesson.delete_all
Instructor.delete_all
Subject.delete_all

Lesson.create(name: "Algebra", comment: "Usually offered every spring", official_id: 1, term: 1, code: "cosi166", description: "Introduction to basic algebra")
Lesson.create(name: "Programming in Java", comment: "Usually offered every fall", official_id: 2, term: 1, code: "cosi11a", description: "Introduction to basic programming in Java")

Instructor.create(official_id: 1, first_name: "Mark", last_name: "Brandanowitz", comment: "Teaches Computer Science", email: "mark@example.edu")
Instructor.create(official_id: 2, first_name: "Magnet", last_name: "Cermola", comment: "Teaches Mathematics", email: "mag@example.edu")

Subject.create(name: "Computer Science", official_id: 1, term: 1, abbreviation: "cosi", comment: "Department of Computer Science")
Subject.create(name: "Mathematics", official_id: 2, term: 1, abbreviation: "math", comment: "Department of Mathematics")

User.create(name: "Nick April", email: "nick@brandeis.edu", password:"foobar", password_confirmation: "foobar")
User.create(name: "Adi Berkowitz", email: "adi@brandeis.edu", password:"foobar", password_confirmation: "foobar")
