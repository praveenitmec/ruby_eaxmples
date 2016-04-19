module Enumerable
   def my_each
    return self unless block_given?
    for i in self
      yield self[i]
    end
   end

   def my_each_with_index
    return self unless block_given?
    for i in 0...length
      yield(self[i], i)
    end
   end

  def my_select
    return self.to_enum if !block_given?
    result = []
    for i in self
      result << i if yield i
    end
    return result
  end

  def my_all
    count = 0
    for i in self
      if block_given?
        count + =1 unless yield i
      else
        count + =1 unless i
      end
    end
    return count = 0 ? true : false
  end
end

[1,2,3].my_each{|a| puts a}


