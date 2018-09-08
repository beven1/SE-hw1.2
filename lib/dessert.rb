class Dessert
  def initialize(name, calories)
    # your code here
    if name.empty? == true
        raise ArgumentError, "empty array"
    else
        @name = name
    end
        
    if calories < 0
        raise ArgumentError, "price less than zero"
    else
        @calories = calories
    end
  end
  
  def name=(new_name)
    @name = new_name
  end
  
  def name
    return @name
  end
  
  def calories=(new_calories)
    @calories = new_calories
  end

  def calories
    return @calories
  end
  
  def healthy?
    if self.calories < 200
        return true
    else
        return false
    end
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    if flavor.empty? == true
        raise ArgumentError, "empty array"
    else
        @flavor = flavor
    end
    
    @calories = 5
    
    @name = "#{flavor} jelly bean"
    
  end

  def flavor=(new_flavor)
    @flavor = new_flavor
  end

  def flavor
    return @flavor
  end
  # your code here
  def delicious?
    puts self.flavor
    if self.flavor == "licorice"
        return false
    else
      super
    end
  end
end
