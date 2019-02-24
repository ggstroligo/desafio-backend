module Input
  
  def self.valid_option? option, valid_range=0..8
    if is_number? option
      return true if option.to_i.between?(valid_range.first, valid_range.last)
    end
  end
  
  def self.is_number? value
    
    true if value && value.to_i.to_s == value
  end
  
end