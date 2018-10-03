def my_bach
{ 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}
end
def get_first_name_of_season_winner(data, season)
  
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  name = ""
   data.each do |season_key, info_array|
   
  
   info_array.each do |ary_item|
     ary_item.each do |info_type_k, info|
          if info == occupation
            name = ary_item["name"]
end
end
     end
   end
   name
end


def count_contestants_by_hometown(data, hometown)
  num_in_ht = 0
   data.each do |season_key, info_array|
   
  
   info_array.each do |ary_item|
     ary_item.each do |info_type_k, info|
          if info == hometown
            num_in_ht += 1
          end
        end
      end
    end
    num_in_ht
end

def get_occupation(data, hometown)
   occupation = ""
   data.each do |season_key, info_array|
   
   info_array.each do |ary_item|
     ary_item.each do |info_type_k, info|
          if info == hometown
            if occupation.length == 0
              occupation = ary_item["occupation"].to_s
            end
          end
        end
      end
    end
    occupation
end

def get_average_age_for_season(data, season)
  ages = 0
  avg_age = 0
  num_of_ages = 0
   data.each do |season_key, info_array|
   if season_key.to_s == season 
  meow = season_key.to_s
   info_array.each do |ary_item|
     ary_item.each do |info_type_k, info|
          if info_type_k.to_s == "age"
            ages += info.to_f
            num_of_ages += 1
          end
          end
        end
      end
    end
    avg_age = (ages / num_of_ages).round
end