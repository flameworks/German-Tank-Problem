def run(sample_count,sample_answer,run)
	final_results = []
	(0...run).each do |x|
		#create sample list
			initial_array = Array(1..sample_answer).shuffle!
			final_array = initial_array[0...sample_count]
		#Method 1: 
			a = final_array.max
			answer1 = a -1 + a/sample_count.to_f		
		#Method 2 Mine:
			individual_partitions = []
			y = 1
			final_array.sort!
			for x in final_array
				individual_partitions << x/y.to_f
				y+=1
			end
			answer2 = a-1+individual_partitions.min

			result = (answer1-sample_answer).abs<(answer2-sample_answer).abs #true to win
			result = "draw" if (answer1-sample_answer).abs.round(0) == (answer2-sample_answer).abs.round(0)

			final_results << result
	end	
	return (final_results.count(true)-final_results.count(false))/run.to_f
	return "Original Formula- #{final_results.count(true)} \n Suggested Formula-#{final_results.count(false)}"
end