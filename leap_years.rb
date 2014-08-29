 def find_leap_years(year1,year2)
   (year1..year2).each do |year|
       if year%4==0 and (!(year%100==0)||(year%400==0))
       puts year
       end
     end
   end
   
#jubrad
def leap_years( y1, y2 )
	(y1..y2).each do |yr|
		if yr%4==0 && yr%100 != 0 || yr%400 == 0
			puts yr
		end
	end
end
