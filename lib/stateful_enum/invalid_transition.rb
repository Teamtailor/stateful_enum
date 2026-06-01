module StatefulEnum
  class InvalidTransition < StandardError
    attr_reader :state
    attr_reader :event

    def initialize(state, event)
      @state, @event = state, event
      super("Invalid transition from state `#{@state}` via event `#{@event}`")
    end
  end
end
