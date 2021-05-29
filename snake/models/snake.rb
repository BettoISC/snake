module Model
    class Snake < Struct.new(:coords)
        def draw(state)
            coords.each do |coord|                
                coord.draw(state)
            end            
        end
    end    
end