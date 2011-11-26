module MealsHelper
	

	def count_calories(meal)
    total = 0
    meal.foods.each do |food| 
      food.nutrition_facts.each do |fact|
        # count the amount of Calories
        if fact.definition.Tagname == 'ENERC_KCAL' 
          total += fact.value(food.weight.amount)
	      end
      end
    end
    total
  end
end
