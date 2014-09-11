class PusherController < ApplicationController
  
  def index
  end

  def create
     #Pusher["test_channel"].trigger("my_event", params[:text]+"<br />")
     Pusher["test_channel"].trigger("my_event", params[:text])
     render :text => "success"
  end

end
