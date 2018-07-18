class Hero
  attr_accessor :name, :power, :biography
  
  def initialize(hero_hash)
    @name = hero_hash[:name]
    @power = hero_hash[:power]
    @biography = hero_hash[:biography]
  end
  
end