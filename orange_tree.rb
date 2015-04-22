#!/usr/bin/ruby

#Exercise from section 13.6 from Chris Pine's _Learning_to_Program_ 2nd edition

class OrangeTree
	def initialize
		@height = 2 #height in feet
		@oranges = 0 #number of oranges on tree
		@age = 0 #age of tree in years
	
		puts "A tree is planted."
	end

	def count_the_oranges
		puts "There are #{@oranges} oranges on the tree."
	end

	def pick_an_orange
		if @oranges > 0
			@oranges = @oranges - 1
			puts "These oranges are tasty."
		else
			puts "There are no oranges left to pick."
		end 
	end

	def one_year_passes
		@age = @age + 1
		if @age < 3 
			@oranges = 0
			@height = @height + 2
		else
			@height = @height + 0.5
			#up to 200 oranges.  Some Gaussianish function for oranges
			@oranges = (200 * (Math.exp( -(@age-25.0)**2/(2*5.0**2) ))).floor  
		end
		if @age > 50
			puts "Your orange tree is no longer productive."
			@oranges = 0;
			exit
		end
	end

end

orange_tree = OrangeTree.new
30.times do
	orange_tree.one_year_passes
	orange_tree.count_the_oranges
	orange_tree.pick_an_orange
	orange_tree.pick_an_orange
end
