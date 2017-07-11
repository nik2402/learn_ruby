class Timer
	attr_accessor :seconds, :time_string
  #write your code here
  def initialize
  	@seconds = 0
  end

  def time_string

  	sec = @seconds%60
  	minutes = @seconds/60
  	hours = minutes/60
  	minutes = minutes - hours * 60 

  	if minutes.to_s.length == 1
  		minutes = "0" + minutes.to_s
  	else
  		minutes = minutes.to_s
  	end

	if hours.to_s.length == 1
  		hours = "0" + hours.to_s
  	else
  		hours = hours.to_s
  	end

	if sec.to_s.length == 1
  		sec = "0" + sec.to_s
  	else
  		sec = sec.to_s
  	end
  	puts  hours + ":" + minutes + ":" + sec
  	return hours + ":" + minutes + ":" + sec
  	
  end
end
