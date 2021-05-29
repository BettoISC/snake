require 'ruby2d'

class SnakeAppWindow

    def initialize(title, width, height)
        @title = title
        @width = width
        @height = height 
        @main_window = Window       
    end
    
    def start        
        _set_window() 
        _start_main_loop()       
        _show_window()
    end

    private

    def _set_window
        @main_window.set({:title => @title, :width => @width, :height => @height})                        
    end
    
    def _show_window
        @main_window.show
    end

    def _start_main_loop
        s = Square.new(x: 50, y: 50, size:100, color: 'blue')   
        s.add 
        s.z = 1
        @main_window.update do 
            s.x += 1
            s.y += 1
        end
    end
    
end