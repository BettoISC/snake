require 'ruby2d'

class SnakeAppWindow

    def initialize(state, title)
        @state = state
        @ratio = ratio
        @title = title
        @main_window = Window       
    end
    
    def start        
        _set_window() 
        _start_main_loop()       
        _show_window()
    end

    private

    def _set_window
        @main_window.set({:title => @title, :width => @state.grid.width * @state.grid.ratio, :height => @state.grid.height * @state.grid.ratio})                        
    end
    
    def _show_window
        @main_window.show
    end

    def _start_main_loop
        s = Square.new(x: 50, y: 50, size: @ratio, color: 'blue')   
        s.add         
        @main_window.update do 
            s.x += 1
            s.y += 1
        end
    end
    
end