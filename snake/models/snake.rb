module Model
    class Snake < Struct.new(:coords)
        def draw(state)
            coords.each_entry do |coord|
                coord.draw(state)
            end            
        end
    end    
end