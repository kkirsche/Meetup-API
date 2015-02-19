require 'net/http'
require 'json'

module MeetupApi
  # The MeetupApi::API2 allows us to interact with the meetup API
  module API2
    MEETUP_HOST = 'https://api.meetup.com'
    # == get_rsvps
    # Allows us to return a Hash object representing the RSVP's of an event.
    #
    # == Parameters
    #
    # initialize takes a required +api_key+ parameter.
    #
    # +api_key+ is a String
    #
    # == Example
    #
    #    MeetupApi::Client.new 'my_api_key0123456789'
    def get_rsvps(event_id, order_by = 'name')
      uri = URI("#{MEETUP_HOST}/2/rsvps.json?key=#{@api_key}&event_id=#{event_id}&order=#{order_by}")
      response = JSON.parse(Net::HTTP.get(uri))

      response
    end
  end
end
