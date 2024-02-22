# spec/services/iterable_service_spec.rb

require 'rails_helper'
require 'vcr'

RSpec.describe IterableService, type: :service do
  describe '.create_event_a' do
    # it will run on the basis of the user so if user is not present on the iterable it will throw an error
    xit 'creates Event A using iterable.com API' do
      VCR.use_cassette('iterable_api_create_event_a') do
        user_id = 1 #  user ID for the testing purpose
        expect { IterableService.create_event_a(user_id) }.not_to raise_error
      end
    end
  end

  describe '.create_event_b' do
    it 'creates Event B using iterable.com API' do
      VCR.use_cassette('iterable_api_create_event_b') do
        user_id = 1 #  user ID for the testing purpose
        expect { IterableService.create_event_b(user_id) }.not_to raise_error
      end
    end
  end

  describe '.send_email_notification_for_event_b' do
    it 'sends email notification for Event B using iterable.com API' do
      VCR.use_cassette('iterable_api_send_email_event_b') do
        user_id = 1 #  user ID for the testing purpose
        user_email = 'test@example.com'
        expect { IterableService.send_email_notification(user_email, 'Event B') }.not_to raise_error
      end
    end
  end
end
