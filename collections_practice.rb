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
  container = []
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
  first_wa
end
