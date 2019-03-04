#Method1
def begins_with_r(array)
  flag = true
  array.each do |word|
  flag = false if word[0] != "r"
  end
  flag
end

#Method2
def contain_a(array)
  container = []
  array.each do |element|
    container << element if element.include? ("a")
  end
  container
end

#Method3
def first_wa(array)
  first_wa = nil
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
  first_wa
end

#Method4
def remove_non_strings(array)
  container = []
  array.each do |element|
    container << element if element.is_a?(String)
  end
  container
end

#Method5
def count_elements(array)
  array.each do |original|
  original[:count] = 0
  name = original[:name]
  array.each do |hash|
      if hash[:name] == name
        original[:count] += 1 
      end
    end
  end
  .uniq
  
  array.each_with_object(Hash.new(0)) { |array,counts| counts[array] += 1 }
end



def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end