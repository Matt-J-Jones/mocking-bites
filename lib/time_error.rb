require 'date'
require 'json'
require 'net/http'

class TimeError
  # Returns difference in seconds between server time
  # and the time on this computer
  def initialize(responder)
    @responder = responder # Net::HTTP
  
  def error
    return get_server_time - Time.now
  end

  private

  def get_server_time
    text_response = @responder.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end