$LOAD_PATH << "."

require "support"

class Decade
include Week
	@@no_of_years=10
	def no_of_months
		puts Week::FIRST_DAY
		#number=@@no_of_years*12
		puts "No. of months in 10 years = #{@@no_of_years * 12}"
	end
end
puts Week::FIRST_DAY
d1=Decade.new
d1.no_of_months
Week.weeks_in_months
Week.weeks_in_year
