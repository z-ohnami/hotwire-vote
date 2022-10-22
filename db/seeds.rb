# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ApplicationRecord.transaction do
  Subject.delete_all

  subject1 = Subject.create!(title: '好きなラーメンは?')
  SubjectChoice.create!(subject_id: subject1.id, name: 'しょうゆ')
  SubjectChoice.create!(subject_id: subject1.id, name: 'みそ')
  SubjectChoice.create!(subject_id: subject1.id, name: 'しお')
  SubjectChoice.create!(subject_id: subject1.id, name: 'とんこつ')

  subject2 = Subject.create!(title: '好きな季節は?')
  SubjectChoice.create!(subject_id: subject2.id, name: '春')
  SubjectChoice.create!(subject_id: subject2.id, name: '夏')
  SubjectChoice.create!(subject_id: subject2.id, name: '秋')
  SubjectChoice.create!(subject_id: subject2.id, name: '冬')

  subject3 = Subject.create!(title: '好きなお風呂の温度は?')
  SubjectChoice.create!(subject_id: subject3.id, name: '39度')
  SubjectChoice.create!(subject_id: subject3.id, name: '40度')
  SubjectChoice.create!(subject_id: subject3.id, name: '41度')
  SubjectChoice.create!(subject_id: subject3.id, name: '42度')
end
