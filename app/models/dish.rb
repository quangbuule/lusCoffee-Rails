class Dish < ActiveRecord::Base
  enum section: [
    :espresso,
    :ice_blended,
    :coffee_alternative,
    :cookie_cream,
    :smoothies,
    :soda,
    :italian_sorbet,
    :chocolate,
    :traditional_coffee
  ]

  attr_accessor :count

  def self.section_name(section)
    return {
      espresso: "Espresso",
      ice_blended: "Ice blended",
      coffee_alternative: "Coffee alternative",
      cookie_cream: "Cookie cream",
      smoothies: "Smoothies",
      soda: "Soda",
      italian_sorbet: "Italian sorbet",
      chocolate: "Chocolate",
      traditional_coffee: "Traditional coffee"
    }[section]
  end
end
