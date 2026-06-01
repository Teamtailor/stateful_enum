module StatefulEnum
  class InvalidTransition < StandardError
    attr_reader :state
    attr_reader :event

    def initialize(state, event, message = nil)
      @state, @event = state, event
      super(["Invalid transition from state `#{@state}` via event `#{@event}`", message].compact.join(": "))
    end
  end
end
