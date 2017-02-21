require 'pry'

class HashDepth

  def find_depth(hash)
    check = hash.values.any? { |value| value.instance_of?(Hash) }
    if check
      2
    else
      1
    end
  end

end
