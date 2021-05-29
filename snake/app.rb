require_relative "controller/state"
require_relative "presentation/window"


initial_state = State::get_state()
app = SnakeAppWindow.new(initial_state, "Snake", 20)
app.start()