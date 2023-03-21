require 'time_error'

RSpec.describe TimeError do
  it "responds with time difference" do
    fake_timecheck = double :responder

    allow(fake_timecheck).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return(
      '{"abbreviation":"GMT","client_ip":"94.174.66.220","datetime":"2023-03-21T16:10:25.406789+00:00","day_of_week":2,"day_of_year":80,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1679415025,"utc_datetime":"2023-03-21T16:10:25.406789+00:00","utc_offset":"+00:00","week_number":12}')
    time = Time.new(2023, 3, 21, 16, 10, 25)
    error = TimeError.new(fake_timecheck)
    result = error.error(time)

    expect(result).to eq 0.406789
  end
end

