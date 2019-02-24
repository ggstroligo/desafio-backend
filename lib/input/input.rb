module Input
  
  def self.valid_option? option, valid_options=0..8
    if is_number? option
      true if option.to_i.between?(valid_options.first, valid_options.last)
    end
  end
  
  def self.is_number? value
    true if value && value.to_i.to_s == value
  end
  
end