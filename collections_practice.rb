def begins_with_r (array)
 array.all? { |element| element.start_with? "r" }
end

def contain_a(array)
  array.select {|element| element.include? "a"}
end

def first_wa (array)
  array.find {|element| element[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select {|element| element.class == String }
end

def count_elements(array)
  names = array.uniq
  names.map do |name|
    name.merge ({:count => array.count{|element| element[:name] == name[:name]}})
end
end

def merge_data (keys, data)
  keys.collect do |key|
    key.merge (data[0][key[:first_name]].to_h)
  end
  end

  def find_cool (array)
    array.find {|element| element[:temperature] == "cool"}
  end
