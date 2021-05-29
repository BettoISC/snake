require 'ruby2d'

module Model
    class Coord < Struct.new(:x, :y)

        def initialize(x, y)
            super(x, y)   
            @fig = Square.new(x: @x, y: @y, color: 'red')
        end

        def draw(state)
            @fig.x = (x * state.grid.ratio)
            @fig.y = (y * state.grid.ratio)
            @fig.size = state.grid.ratio            
        end      

        def set_color(new_color)
            @fig.color = new_color
        end

    end
end