# app/controllers/events_controller.rb
class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def create_event_a
    user_id = current_user.id # Adjust this based on your authentication setup
    IterableService.create_event_a(user_id)
    redirect_to root_path, notice: 'Event A created successfully'
  end

  def create_event_b
    IterableService.create_event_b(current_user.id)
    IterableService.send_email_notification(current_user.email, 'Event B')
    redirect_to root_path, notice: 'Event B created, and email notification sent'
  end
end