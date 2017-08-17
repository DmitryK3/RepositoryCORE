class Mage
          attr_accessor :name, :spell
def enchant(target)
puts "#{@name} casts #{@spell} on #{target.name}!"
end end

merlin = Mage.new
merlin.name = "Merlin"
merlin.enchant(merlin)

morgana = Mage.new
morgana.name = "Morgana"
merlin.enchant(morgana)

merlin.spell = "asfk"
merlin.enchant(morgana)
morgana.spell = "Shrink"
morgana.enchant(merlin)