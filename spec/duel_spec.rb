require 'spec_helper'
require './spells/duel'

# THE WIZARD DUEL
# player one picks a name
# player two picks a name, these names are then stored

# player one is presented with a selection of spells, and chooses one

# player two is presented with a selection of spells, and chooses one

# these spells each have a hidden value, thus one spell will win

# the game says that one is a winner

# this will be best out of 3

puts "I'm running"

describe "#DuelingClub" do
  
  describe "#initialize" do
  end

  describe "#player_first" do
  end

  describe "#player_second" do
  end

  describe "#player_one_choice" do
  end  

  describe "#player_two_choice" do
  end 



  describe "#duel" do
    it "extracts the values of the hash" do
      @one_spell_hash = {"a" => 2}
      @value = @one_spell_hash.values
      @value = 2
    end

    it "adds the hash value with the stamina" do
      @stamina = 3
      @value = 3
      a = (@stamina + @value)
      a.should be 6
    end
    # this test is currently wrong, in that it actually tests nothing in the code, how would I make it right?
  end
    
  describe "#casting" do
  end

 





  



  end