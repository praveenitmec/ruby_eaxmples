class Truthy_falsy
  def self.check condition
    if condition
      p true
    else
      p false
    end
  end

  #truthy
  check 1
  check 0
  check([])
  check({})
  check "str"
  check ""
  check true

  #falsey or falsy
  check nil
  check false
end


