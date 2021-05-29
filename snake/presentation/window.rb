require 'ruby2d'

class SnakeAppWindow

    def initialize(state, title)
        @state = state        
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
        @main_window.update do             
            @state.draw()
        end
    end
    
end