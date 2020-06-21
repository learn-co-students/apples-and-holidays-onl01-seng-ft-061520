require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's 
  {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
  
   
  
    holiday_hash.each do |season, seasonal_hashes|
       if season = :winter 
        seasonal_hashes.each do |winter_holiday,supply_array|
          supply_array << supply
           
        end 
      end
  
    end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, seasonal_hashes|
    if season = :spring
      seasonal_hashes.each do |spring_holiday, supply_array|
        if spring_holiday = :memorial_day
          supply_array << supply 
        end 
      end     
      
    end 
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    
  holiday_hash.update[season].update({holiday_name => supply_array})

    

#return updated hash
end










def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten 

end






def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, seasonal_hashes|
      puts "#{season.capitalize}:"
    seasonal_hashes.each do |holiday, supplies|
   
      puts "  #{holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end 
  end 
end





def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_bbq = []
  holiday_hash.each do |season, seasonal_hashes|
        seasonal_hashes.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        
        holiday_bbq << holiday 
      end 
     end 
  end 
  holiday_bbq
end









