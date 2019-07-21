class Doctor

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end
end
