require_relative '../models/models'
module State
    class Game < Struct.new(:grid, :food, :snake)
        def draw
                        
        end
    end
    
    def self.get_state
        State::Game.new(
            Model::Grid.new(width: 800, height: 600),
            Model::Food.new(Model::Coord.new(20, 20)),
            Model::Snake.new([Model::Coord.new(1, 0), Model::Coord.new(0, 0)])
        )        
    end
end