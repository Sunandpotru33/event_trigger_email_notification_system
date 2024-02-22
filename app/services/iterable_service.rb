# app/services/iterable_service.rb

class IterableService
  include HTTParty
  base_uri 'https://api.iterable.com/api'
  headers 'Api-Key' => ENV['ITERABLE_API_KEY']


  def self.create_event_a(user_id)
    # Implement logic to create Event A using the iterable.com API
    user = find_user(user_id)
    create_event(user, 'eventA')
  end

  def self.create_event_b(user_id)
    # Implement logic to create Event B using the iterable.com API
    # This method should associate the event with the user identified by user_id
    # ...

    # For example, you might make a POST request to Iterable API to create Event B
    # Replace 'YOUR_EVENT_B_ENDPOINT' with the actual Iterable API endpoint for creating Event B
    response = post('/api/events', body: { user_id: user_id }.to_json, headers: { 'Content-Type' => 'application/json' })

    # if we need to track the event status then we can go with endpoint type POST API /api/events/track

    if response.success?
      puts 'Event B created successfully!'
    else
      puts "Failed to create Event B. Error: #{response.body}"
    end
  end

  def self.send_email_notification(user_email, event_name)
    # Implement logic to send email notification for Event B using the iterable.com API
    # ...
    options = {
      body: {
        email: user_email,
        campaignId: 'YOUR_CAMPAIGN_ID', # Replace with your Iterable campaign ID for Event B
        dataFields: {
          event: event_name
        }
      }.to_json,
      headers: { 'Content-Type' => 'application/json' }
    }

    response = post('/commerce/trigger', options)

    if response.success?
      puts 'Email sent successfully!'
    else
      puts "Failed to send email. Error: #{response.body}"
    end
  end

  def self.find_user(user_id)
    ::User.find(user_id)
  end


  def self.create_event(user, event_name)
    # Implement logic to create an event for a user using the iterable.com API
    # Example: iterable.track(user.email, event_name)
    begin
      iterable.track(user.email, event_name)
    rescue StandardError => e
      Rails.logger.error("Failed to create event: #{e.message}")
    end
  end
end