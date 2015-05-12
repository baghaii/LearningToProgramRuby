#!/usr/bin/ruby

def profile block_description, &block
	prof = false 
	if prof
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}:  #{duration} seconds"
	end	
end

profile '25000 doublings' do
	number = 1
	25000.times do 
		number = number * 2
    end
	puts "#{number.to_s.length} digits"
end

profile '25000 doublings' do
	number = 1
	25000.times do
		number = number + number
	end
	puts "#{number.to_s.length} digits"
end
