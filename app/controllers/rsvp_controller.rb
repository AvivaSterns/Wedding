class RSVPController < ApplicationController
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
params.require(:contact).permit(:name, :email, :content)
end
end