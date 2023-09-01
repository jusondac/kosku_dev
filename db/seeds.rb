# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if CodeArea.all.empty?
  PROVINCE_CODE.each do |province|
    CodeArea.create(code: province[0], name: province[1])
  end

  REGENCIES_CODE.each do |regency|
    province = CodeArea.find_by_code(regency[1])
    CodeArea.create(code: regency[0], province_id: province.id, name: regency[2])
  end
end