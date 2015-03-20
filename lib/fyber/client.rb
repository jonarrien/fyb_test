require 'net/http'
require 'uri'

# ::::::: FYBER MOBILE DOC :::::::::::::::::::::::::::
# http://api.sponsorpay.com/feed/v1/offers.json?appid=[APP_ID]
# &uid=[USER_ID]
# &ip=[IP_ADDRESS]
# &locale=[LOCALE]
# &device_id=[DEVICE_ID]
# &ps_time=[TIMESTAMP]
# &pub0=[CUSTOM]
# &timestamp=[UNIX_TIMESTAMP]
# &offer_types=[OFFER_TYPES]
# &apple_idfa=[IDFA]
# &apple_idfa_tracking_enabled=[IDFA ENABLED]
# &hashkey=[HASHKEY]

class Fyber::Client
  def initialize(options)
    @options ||= {}
    @options[:appid] = 157
    @options[:uid] = 1
    @options[:hashkey] = 'b07a12df7d52e6c118e5d47d3f9e60135b109a1f'
    @options[:timestamp] = DateTime.now.to_i
    @options[:format] = 'json'
    @options[:ip] = '109.235.143.113'
    @options[:locale] = 'de'
    @options[:device_id] = options[:uid]
    @options[:pub0] = options[:pub0]
    @options[:page] = options[:page]
    @options[:offer_types] = 112
  end

  def root_url
    "http://api.sponsorpay.com/feed/v1/offers.json"
  end

  def search
    # TODO: Request to Fyber
    uri = URI.parse(root_url)
    uri.query = URI.encode_www_form @options
    Net::HTTP.get uri
  end
end