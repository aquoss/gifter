class EventsController < ApplicationController

  def create
    event = Event.new(event_params)
    if event.save
      flash[:notice] = "New event created!"
      redirect_to recipient_path(params[:id])
    else
      flash[:error] = event.errors.full_messages.join(". ")
      redirect_to recipient_path(params[:id])
    end
  end

  def destroy
    event = Event.find(params[:event_id])
    event.destroy
    flash[:notice] = "Event successfully deleted"
    redirect_to recipient_path(params[:id])
  end

  def event_params
    params.require(:event).permit(:occasion, :calendar_date, :recurring_yearly, :recipient_id)
  end

end
