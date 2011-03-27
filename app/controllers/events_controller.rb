class EventsController < ApplicationController
  def new
    #TODO Нужно создать вьюхи и определиться с механизмом аутентификации пользователя - какой плагин взять - есть devise, restful authentication, другие решения - можно посмотреть на railscasts.com
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
  
    if @event.save
      flash[:notice] = 'Event was successfully created.'
      redirect_to(@event) 
    else
      render :action => "new" 
    end
  end

  def index
    @events = Event.all
  end
end
