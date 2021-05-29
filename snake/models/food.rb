module Model
    class Food < Coord            
    
        def draw(state)
            set_color('random')
            super(state)                      
        end
    end
end