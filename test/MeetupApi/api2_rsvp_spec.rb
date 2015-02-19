require 'minitest_helper'

class TestMeetupApi < Minitest::Test
  describe 'API2 RSVP', 'Methods used to interact with the API2 RSVP endpoints' do
    it 'should return a hash of RSVP responses' do
      response_value = '{ "results": [ { "response": "yes", "member": { "name": "Test", "member_id": 111 } } ] }'

      Net::HTTP.stub :get, response_value do
        client = MeetupApi::Client.new 'api_key'
        response = client.get_rsvps '220244231'
        response.class.must_equal Hash
      end
    end
  end
end
