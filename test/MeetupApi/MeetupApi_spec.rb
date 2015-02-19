require 'minitest_helper'

class TestMeetupApi < Minitest::Test
  describe 'Meetup API', 'General maintance tests' do
    it 'should test that it has a version number' do
      refute_nil ::MeetupApi::VERSION
    end
  end

  describe 'Meetup Client', 'The top level client which interacts with the Meetup API' do
    it 'should initialize without error' do
      client = MeetupApi::Client.new 'api_key'

      client.class.must_equal MeetupApi::Client
    end

    it 'should set the API key passed to it when initialized' do
      client = MeetupApi::Client.new 'api_key'

      client.api_key.must_equal 'api_key'
    end
  end
end
