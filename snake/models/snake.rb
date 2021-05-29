module Model
    class Snake < Struct.new(:coords)

         
        def draw(state)
            coords.each do |coord|                
                coord.draw(state)
            end                                              
            move_snake()
        end

        
        private
        
        def move
            
            new_c = get_next_coord()
            
            
            new_coords = [new_c] + self.coords[0...-1]
            self.coords = new_coords
        end
        
        def get_next_coord
            last_coord = self.coords[-1]
            new_coord = [self.coords.first.x+([1, 0][0]), self.coords.first.y+([1, 0][1])]            
            new_coord = Model::Coord.new(new_coord[0], new_coord[1])
            last_coord.remove()
            return new_coord
        end
        
        def move_snake()
            
            
            move()
            sleep 0.5
        
        end
    end    
end