# changes made,

# here I have created three different classes instead of the one, with a new Wizard and Spells. class. When 
# the player selects either a spell or character, this is used instead of the old hash. 
# The hash for the spells has been burned into an ara and serves only for the purpose of
# listing which spells are available

class Wizard
  attr_accessor :name, :stamina

  def initialize(attributes)
    @name = attributes[:name]
    @stamina = attributes[:stamina]
  end
end

class Spells
  attr_accessor :spell, :power

  def initialize(attributes)
    @spell = attributes[:spell]
    @power = attributes[:power]
  end
end


class DuelingClub
  
  def player_first
    @characters = ["Harry Potter", "Voldermort", "Dumbledore", "Hermione",
     "Ron Weasley"]

    puts "Welcome player one, please select a character"
    @characters.each do |names|
      puts names 
    end
    
    @player_one=gets.chomp
    
      if @player_one == "Harry Potter"
      @player_one_character = Wizard.new(name: "Harry Potter", stamina: 9)
    elsif @player_one == "Voldermort"
      @player_one_character = Wizard.new(name: "Voldermort", stamina: 8)
    elsif @player_one == "Dumbledore"
      @player_one_character = Wizard.new(name: "Dumbledore", stamina: 10)
    elsif @player_one == "Hermione"
      @player_one_character = Wizard.new(name: "Hermione", stamina: 7)
    else @player_one == "Ron"
      @player_one_character = Wizard.new(name: "Ron", stamina: 7)
    end

    puts "great, you selected #{@player_one_character.name}"

  end

  def player_second
      puts "Welcome player two, please select a character"
      @characters.each do |names|
        puts names 
      end
      
      @player_two=gets.chomp
      
      if @player_two == "Harry Potter"
        @player_two_character = Wizard.new(name: "Harry Potter", stamina: 9)
      elsif @player_two == "Voldermort"
        @player_two_character = Wizard.new(name: "Voldermort", stamina: 8)
      elsif @player_two == "Dumbledore"
        @player_two_character = Wizard.new(name: "Dumbledore", stamina: 10)
      elsif @player_two == "Hermione"
        @player_two_character = Wizard.new(name: "Hermione", stamina: 7)
      else @player_two == "Ron"
        @player_two_character = Wizard.new(name: "Ron", stamina: 7)
      end

      puts "great, you selected #{@player_two_character.name}"

    end

    def player_one_choice
    @spells = ["expelliarmus", "sectumsempra", "levicorpus"]

    puts "#{@player_one_character.name} please choose a spell from the following list #{@spells}"
    @one_choice = gets.chomp.downcase
    
      if @one_choice == "expelliarmus"
            @one_spell = Spells.new(spell: "expelliarmus", power: 2)
          elsif @one_choice == "sectumsempra"
            @one_spell = Spells.new(spell: "sectumsempra", power: 3)
          else @one_choice == "levicorpus"
            @one_spell = Spells.new(spell: "levicorpus", power: 1)
          end
    end

  def player_two_spell_choice_message
    "#{@player_two_character.name} please choose a spell from the following list #{@spells}"
  end

  def player_two_choice
    puts player_two_spell_choice_message
    @two_choice=gets.chomp.downcase
    
      if @two_choice == "expelliarmus"
          @two_spell = Spells.new(spell: "expelliarmus", power: 2)
        elsif @two_choice == "sectumsempra"
          @two_spell = Spells.new(spell: "sectumsempra", power: 3)
        else @two_choice == "levicorpus"
          @two_spell = Spells.new(spell: "levicorpus", power: 1)
      end     
  end 

  def casting
    puts "#{@player_one_character.name} has chosen #{@one_spell.spell}"
    puts "#{@player_two_character.name} has chosen #{@two_spell.spell}"
    puts "Are you ready to duel? (y/n)"
    reply = gets.chomp.downcase!
    if reply == "n"
      player_one_choice
    else
      duel
    end
  end

  def duel
    puts "Start the duel!"
    puts "#{@player_one_character.name}: '#{@one_spell.spell.upcase}!!!'"
    puts "#{@player_two_character.name}: '#{@two_spell.spell.upcase}!!!'"
    
    a =  (@player_one_character.stamina + @one_spell.power)
    b =  (@player_two_character.stamina + @two_spell.power)

    if a > b
      puts "#{@player_one_character.name} wins, bad luck #{@player_two_character.name}"
    elsif a < b
      puts "#{@player_two_character.name} wins, bad luck #{@player_one_character.name}"
    else 
      puts "It's a draw, you two are clearly too well matched!"
    end
  end
end

class Game < DuelingClub
  
    def run
  
    player_first

    player_second

    player_one_choice

    player_two_choice

    casting

    duel

  end
  
end

class Interface

  def run
    @club = DuelingClub.new
  end

  def puts_player_two_spell_choice_message
    puts @club.player_two_spell_choice_message
  end

  def get_a_thing
    thing = gets.chomp
    @club.do_a_thing(thing)
  end
end

  

Game.new.run

