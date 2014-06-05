class RsvpController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end

  def rsvp
    @rsvp = Rsvp.new(params[:rsvp])
    @rsvp.request = request
    if @rsvp.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end