def triangle(a, b, c)
	p tr_array = [a, b, c]
	p max_number = tr_array.max
	p tr_array.delete(max_number)
	p tr_array
	p sum = 0

=begin
	 tr_array.each do |el| 
	 sum += el 
	 puts sum
	 end
	 

	if max_number >= sum
		puts max_number.class
		puts sum.class
		puts "INVALID"

	elsif a == b and a == c and b == c
		puts "EQUILATERAL"

	elsif a == b or a == c or b == c
		puts "ISOCELES"	
	else 
		puts "SCALENE"	
	end

#if a = b = c then equilateral

#if a = b or a = c or b = c then isosceles

# if no sides are equal then scalene

=end

end	


#triangle(1, 2, 3)
#triangle(5, 3, 4)
triangle(3, 3, 3)
#triangle(6, 6, 3)

5.triangle
