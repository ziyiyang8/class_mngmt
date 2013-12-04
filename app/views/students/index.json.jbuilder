json.array!(@students) do |student|
  json.extract! student, :id, :full_name, :title, :bio, :age
  json.url student_url(student, format: :json)
end
