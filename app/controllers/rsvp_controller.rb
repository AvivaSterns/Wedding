class RsvpController < ApplicationController

  def new
    @rsvp = Rsvp.new
  end
  
  def create
    @rsvp = Rsvp.new(secure_params)
    if @rsvp.valid?
    # TODO save data
    # TODO send message
    flash[:notice] = "Message sent from #{@rsvp.name}."
    redirect_to root_path
  else
    render :new
  end
end
  
private
  
  def secure_params
    params.require(:rsvp).permit(:first_name, :last_name, :email_address, :plus_one?, :guest_name, :message_for_the_bride_and_groom)
  end
end