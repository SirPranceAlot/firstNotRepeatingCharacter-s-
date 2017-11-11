def firstNotRepeatingCharacter(s)
    seen = Array.new()
    dupe = Array.new()
    non_dupe = Array.new()
    
    s.split("").each do |c|
      
      if !seen.include?(c) then
        seen.push(c)
      elsif seen.include?(c) && !dupe.include?(c) then
        dupe.push(c)
      end
    end
    
    s.split("").each do |nd|
      if !dupe.include?(nd) then
        non_dupe.push(nd)
      end
    end
    
    
    #puts s
    #puts "----"
    #puts seen
    #puts "----"
    #puts dupe
    #puts "----"
    #puts non_dupe
    
    if !non_dupe.empty? then
      return non_dupe[0]
    else
      return '_'
    end
end


s = "abacabad"

puts firstNotRepeatingCharacter(s)