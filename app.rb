require 'pry'

class Building
    
    attr_accessor :name, :tenants
    attr_reader :address, :floors
    @@all = []

    def initialize(name, tenants, address, floors)
        @name = name
        @tenants = tenants
        @address = address
        @floors = floors
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average
        total_tenants = all.reduce(0) {|total, building| total += building.tenants}
        total_tenants / all.length
    end

    def placard
        puts "Name: #{self.name} Address: #{self.address}"
    end

    def tenants_per_floor
        average = self.tenants / self.floors
        puts "There is an average of #{average} tenants per floor."
    end

end

building1 = Building.new("Building 1", 100, "25 Dowling Drive", 10)
building2 = Building.new("Building 2", 60, "27 Valley Road", 5)
building3 = Building.new("Building 3", 200, "3456 Berry Street", 10)

binding.pry
0
