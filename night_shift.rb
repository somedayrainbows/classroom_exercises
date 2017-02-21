
class NightShift
attr_reader :total_shifts

  def initialize
    @total_shifts = Hash.new(0)
  end

  def total_sorted_occurences(shifts)
    shifts.each do |name|
      @total_shifts[name] += 1
    end
    @total_shifts.sort_by { |name, all_shifts| all_shifts }.to_h
  end

  # def total_sorted_occurences
  #   @total_shifts = @total_shifts
  # end

  def shiftwork_summary(total_shifts)
    total_shifts.each do |name, all_shifts|
      if all_shifts == 1
        puts "#{name} worked #{all_shifts} night shift."
      else
        puts "#{name} worked #{all_shifts} night shifts."
      end
    end
  end

end


# night_shifts.each do |name|
#   night_shifts_hash[name] += 1
# end
# p night_shifts_hash

# extension
#iterate over each pair and determine descening value then if value > 1 print "#{key} worked #{value} night shifts." or if value == 1 print "#{key} worked #{value} night shift."

#sort by value
# sorted_night_shifts = night_shifts_hash.sort_by { |name, shifts| shifts }.to_h

# night_shifts = NightShift.new(["josh", "andrew", "sal", "casey", "beth", "ilana", "lauren", "sal", "casey", "casey", "nate", "beth", "nate", "nate", "casey", "casey", "casey", "andrew"])
# night_shifts.determine_occurences
