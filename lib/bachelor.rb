def get_first_name_of_season_winner(data, season)
   data[season].each do |data_array|
     firstname = data_array["name"].split(" ")[0]
     return firstname
   end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["occupation"].include?(occupation)
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"].include?(hometown)
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"].include?(hometown)
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  data[season].each do |contestant|
    sum += contestant["age"].to_f
  end
  contestants = data[season].count
  average = sum / contestants
  return average.round
end
