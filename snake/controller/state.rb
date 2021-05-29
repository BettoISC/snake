require_relative '../models/models'
module State
    class Game < Struct.new(:grid, :food, :snake)

        def draw            
            food.draw(self)
            snake.draw(self)                        
        end
    end
    
    def self.get_state
        State::Game.new(
            Model::Grid.new(40, 30, 20),
            Model::Food.new(20, 20),
            Model::Snake.new([Model::Coord.new(1, 0), Model::Coord.new(0, 0)])
        )        
    end
end