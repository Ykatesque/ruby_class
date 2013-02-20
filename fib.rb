

require 'benchmark'

def fibonacci(num)

	result = 0

	if num <= 1
		result = 1
	else
		result = fibonacci(num - 1) + fibonacci(num - 2)
		
	end

	result
	

end	



def fib(n)
  curr = 0
  succ = 1

  n.times do |i|
    curr, succ = succ, curr + succ
  end

  return curr
end




puts Benchmark.measure {fibonacci(40)} 
puts Benchmark.measure {fib(40)} 
#puts fib(158)
