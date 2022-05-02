module Api
  module OrgAdmin
    class EventsController < BaseController
      def index
        events = Event.all
        render_success({ success: true, events: events })
      end
    
      def create
        event = Event.create!(event_params.merge(org_id: current_org.id))
        render_success({ success: true, event: event })
      end
    end

    private
    
    def event_params
      params.require(:event).permit(:name, :description, :capacity, :begins_at, :ends_at)
    end    
  end
end
