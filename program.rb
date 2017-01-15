class Algorithm
  def self.filter(data,filter)
    filtered_data=data
    [:age,:salary,:weight,:height].each do |p|
      unless filter[p].nil?
        if filter[p].is_a? Integer
          filtered_data = filtered_data.select {|x| x[p] == filter[p]}
        elsif filter[p].is_a? Range
          filtered_data = filtered_data.select {|x| filter[p].cover? x[p]}
        end
      end
    end
    puts filtered_data
  end
end