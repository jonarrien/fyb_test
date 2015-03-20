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
    # @options = options
    @options[:APP_ID] = 157
    @options[:format] = 'json'
    @options[:ip] = '109.235.143.113'
    @options[:locale] = 'de'
    @options[:device_id] = options[:uid]
    @options[:offer_types] = 112
  end

  def root_url
    "http://api.sponsorpay.com/feed/v1/offers.json"
  end

  def search
    # TODO: Request to Fyber
  end
end