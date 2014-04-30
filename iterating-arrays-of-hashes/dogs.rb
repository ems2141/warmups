class Dogs
  POOR = (0..5).to_a.sample
  AVERAGE = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe = {
        :name => {:first => "Joe", :last => "Smith"},
        :owner_quality => EXCELLENT
    }
    sarah = {
        :name => {:first => "Sarah", :last => "Smith"},
        :owner_quality => AVERAGE
    }
    andrew = {
        :name => {:first => "Andrew", :last => "Beter"},
        :owner_quality => AVERAGE
    }

    @dogs = [{:name => "Fido", :size => :large, :owner => joe},
             {:name => "Yapper", :size => :small, :owner => joe},
             {:name => "Bruiser", :size => :large, :owner => joe},
             {:name => "Tank", :size => :huge, :owner => sarah},
             {:name => "Beast", :size => :large, :owner => sarah},
             {:name => "Harleigh", :size => :medium, :owner => andrew},
             {:name => "Trixie", :size => :small, :owner => andrew},]
  end

  # only edit below this line

  def small_dogs
    small_dogs =[]
    @dogs.each do |dog|
      if dog[:size] == :small
        small_dogs << dog
      end
    end
    small_dogs
  end

  def huge_dog
    huge_dog =[]
    @dogs.each do |dog|
      if dog[:size] == :huge
        huge_dog << dog
      end
    end
    huge_dog.first
  end

  def large_dog_names
    large_dogs =[]
    large_dogs_names =[]

    @dogs.each do |dog|
      if dog[:size] == :large
        large_dogs << dog
      end
    end

    large_dogs.each do |name|
      large_dogs_names << name[:name]
    end
    large_dogs_names

  end

  def joes_large_dogs
    large_dogs =[]

    @dogs.each do |dog|
      if dog[:size] == :large && dog[:owner][:name][:first] == "Joe"
        large_dogs << dog[:name]
      end
    end

    large_dogs
  end

  def sizes
    dog_sizes = []
    @dogs.each do |dog|
      if !dog_sizes.include?(dog[:size])
        dog_sizes << dog[:size]
      end
    end
    dog_sizes
  end

  def owners
    dog_owners =[]
    @dogs.each do |dog|

    end
    dog_owners
  end

  def average_owners
    # only use the @dogs instance variable and constants
  end
end
