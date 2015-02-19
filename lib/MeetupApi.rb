require 'MeetupApi/version'
require 'MeetupApi/api2'

module MeetupApi
  # == MeetupApi
  # MeetupApi::Client class is used to interact with
  # the Meetup API.
  #
  # == Parameters
  #
  # Initilization takes a required +api_key+ parameter.
  #
  # +api_key+ is a String
  #
  # == Example
  #
  #    MeetupApi::Client.new 'my_api_key0123456789'
  class Client
    attr_reader :api_key
    # == initialize
    # Allows us to create an instance of the Meetup API client.
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
    def initialize(api_key)
      @api_key = api_key
    end
    include API2
  end
end
