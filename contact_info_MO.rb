module ContactInfo
  attr_accessor :first_name, :last_name, :city, :state, :zip_code

  def fullname
    return @first_name.capitalize() + " " + @last_name.capitalize()
  end

  def location
    csz = @city
    csz += ", #{@state}" if @state
    csz += ", #{@zip_code}" if @zip_code
    return csz
  end
end


