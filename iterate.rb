require "csv";
# require "pry";
# binding.pry;


records = []
# CSV deletes as it accesses data
CSV.foreach("./input1.csv", headers: true) do |row|
  records.push row.to_h
end

def grade(number)
  case number
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end
end

# puts records.length
puts "Average by student:"
records.each do |record|
  avg = (record["Project 1"].to_i + record["Project 2"].to_i + record["Quiz"].to_i)/3;
  puts " #{record['Student']}: #{avg} #{grade(avg)}"
end

puts "Average by assignment:"
project1_sum = records.reduce(sum=0) do |sum, assignment|
  sum += (assignment["Project 1"].to_i);
end

project1_avg = project1_sum / 3;
puts " Project 1: #{project1_avg} #{grade(project1_avg)}"


project2_sum = records.reduce(sum=0) do |sum, assignment|
  sum += (assignment["Project 2"].to_i);
end

project2_avg = project2_sum / 3;
puts " Project 2: #{project2_avg} #{grade(project2_avg)}"

quiz_sum = records.reduce(sum=0) do |sum, assignment|
  sum += (assignment["Quiz"].to_i);
end

quiz_avg = quiz_sum / 3;
puts " Quiz: #{quiz_avg} #{grade(quiz_avg)}"
