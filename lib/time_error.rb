require 'date'
require 'json'
require 'net/http'

class TimeError
  # Returns difference in seconds between server time
  # and the time on this computer
  def initialize(responder = Net::HTTP)
    @responder = responder
  end

  def error(time = Time.now)
    return get_server_time - time
  end

  private

  def get_server_time
    text_response = @responder.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

time_check = TimeError.new
puts time_check.error