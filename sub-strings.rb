def sub_string(string, string_array)
    hash = {}
    string_array.each do |key|
        n = 0
        string.split.each do |w|
            if w.downcase.include?(key)
                n++
                hash[key] = n
            end
        end
    end
    puts hash
end

sub_string("Labas", ["La", "bas"])
