$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../lib/MeetupApi', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../lib/MeetupApi/api2', __FILE__)
require 'MeetupApi'

require 'minitest/autorun'
