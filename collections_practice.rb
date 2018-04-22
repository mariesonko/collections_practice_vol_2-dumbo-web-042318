def begins_with_r (array)
 array.all? { |e| e.start_with? "r" }
end

def contain_a(array)
  array.select {|element| element.include? "a"}
end 
