# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `faraday_middleware` gem.
# Please instead update this file by running `bin/tapioca gem faraday_middleware`.

# source://faraday_middleware//lib/faraday_middleware/backwards_compatibility.rb#3
module Faraday
  class << self
    # source://faraday/1.10.3/lib/faraday.rb#81
    def default_adapter; end

    # source://faraday/1.10.3/lib/faraday.rb#137
    def default_adapter=(adapter); end

    # source://faraday/1.10.3/lib/faraday.rb#155
    def default_connection; end

    # source://faraday/1.10.3/lib/faraday.rb#84
    def default_connection=(_arg0); end

    # source://faraday/1.10.3/lib/faraday.rb#162
    def default_connection_options; end

    # source://faraday/1.10.3/lib/faraday.rb#169
    def default_connection_options=(options); end

    # source://faraday/1.10.3/lib/faraday.rb#89
    def ignore_env_proxy; end

    # source://faraday/1.10.3/lib/faraday.rb#89
    def ignore_env_proxy=(_arg0); end

    # source://faraday/1.10.3/lib/faraday.rb#72
    def lib_path; end

    # source://faraday/1.10.3/lib/faraday.rb#72
    def lib_path=(_arg0); end

    # source://faraday/1.10.3/lib/faraday.rb#118
    def new(url = T.unsafe(nil), options = T.unsafe(nil), &block); end

    # source://faraday/1.10.3/lib/faraday.rb#128
    def require_lib(*libs); end

    # source://faraday/1.10.3/lib/faraday.rb#128
    def require_libs(*libs); end

    # source://faraday/1.10.3/lib/faraday.rb#142
    def respond_to_missing?(symbol, include_private = T.unsafe(nil)); end

    # source://faraday/1.10.3/lib/faraday.rb#68
    def root_path; end

    # source://faraday/1.10.3/lib/faraday.rb#68
    def root_path=(_arg0); end

    private

    # source://faraday/1.10.3/lib/faraday.rb#178
    def method_missing(name, *args, &block); end
  end
end

# Autoload classes for Faraday::Request.
#
# source://faraday_middleware//lib/faraday_middleware/backwards_compatibility.rb#5
class Faraday::Request < ::Struct
  # source://faraday/1.10.3/lib/faraday/request.rb#112
  def [](key); end

  # source://faraday/1.10.3/lib/faraday/request.rb#118
  def []=(key, value); end

  # source://faraday/1.10.3/lib/faraday/request.rb#60
  def _deprecated_method; end

  # source://faraday/1.10.3/lib/faraday/request.rb#81
  def headers=(hash); end

  # source://faraday/1.10.3/lib/faraday/request.rb#125
  def marshal_dump; end

  # source://faraday/1.10.3/lib/faraday/request.rb#139
  def marshal_load(serialised); end

  # source://faraday/1.10.3/lib/faraday/deprecate.rb#86
  def method(*args, &block); end

  # source://faraday/1.10.3/lib/faraday/request.rb#70
  def params=(hash); end

  # source://faraday/1.10.3/lib/faraday/request.rb#149
  def to_env(connection); end

  # source://faraday/1.10.3/lib/faraday/request.rb#94
  def url(path, params = T.unsafe(nil)); end

  class << self
    # source://faraday/1.10.3/lib/faraday/request.rb#54
    def create(request_method); end
  end
end

# deprecated alias
#
# source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#90
Faraday::Request::OAuth = FaradayMiddleware::OAuth

# deprecated alias
#
# source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#88
Faraday::Request::OAuth2 = FaradayMiddleware::OAuth2

class Faraday::RequestOptions < ::Faraday::Options
  include ::FaradayMiddleware::OptionsExtension
end

# Autoload classes for Faraday::Request.
#
# source://faraday_middleware//lib/faraday_middleware/backwards_compatibility.rb#11
class Faraday::Response
  # source://faraday/1.10.3/lib/faraday/response.rb#28
  def initialize(env = T.unsafe(nil)); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def [](*args, **_arg1, &block); end

  # source://faraday/1.10.3/lib/faraday/response.rb#96
  def apply_request(request_env); end

  # source://faraday/1.10.3/lib/faraday/response.rb#49
  def body; end

  # source://faraday/1.10.3/lib/faraday/response.rb#33
  def env; end

  # source://faraday/1.10.3/lib/faraday/response.rb#66
  def finish(env); end

  # source://faraday/1.10.3/lib/faraday/response.rb#53
  def finished?; end

  # source://faraday/1.10.3/lib/faraday/response.rb#43
  def headers; end

  # source://faraday/1.10.3/lib/faraday/response.rb#86
  def marshal_dump; end

  # source://faraday/1.10.3/lib/faraday/response.rb#90
  def marshal_load(env); end

  # source://faraday/1.10.3/lib/faraday/response.rb#57
  def on_complete(&block); end

  # source://faraday/1.10.3/lib/faraday/response.rb#39
  def reason_phrase; end

  # source://faraday/1.10.3/lib/faraday/response.rb#35
  def status; end

  # source://faraday/1.10.3/lib/faraday/response.rb#74
  def success?; end

  # source://faraday/1.10.3/lib/faraday/response.rb#78
  def to_hash; end
end

# deprecated alias
#
# source://faraday_middleware//lib/faraday_middleware/response/mashify.rb#39
Faraday::Response::Mashify = FaradayMiddleware::Mashify

# deprecated alias
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#50
Faraday::Response::ParseJson = FaradayMiddleware::ParseJson

# deprecated alias
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_marshal.rb#15
Faraday::Response::ParseMarshal = FaradayMiddleware::ParseMarshal

# deprecated alias
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_xml.rb#17
Faraday::Response::ParseXml = FaradayMiddleware::ParseXml

# deprecated alias
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_yaml.rb#39
Faraday::Response::ParseYaml = FaradayMiddleware::ParseYaml

# deprecated alias
#
# source://faraday_middleware//lib/faraday_middleware/response/rashify.rb#17
Faraday::Response::Rashify = FaradayMiddleware::Rashify

# Main FaradayMiddleware module.
#
# source://faraday_middleware//lib/faraday_middleware.rb#6
module FaradayMiddleware; end

# Public: Caches GET responses and pulls subsequent ones from the cache.
#
# source://faraday_middleware//lib/faraday_middleware/response/caching.rb#9
class FaradayMiddleware::Caching < ::Faraday::Middleware
  extend ::Forwardable

  # Public: initialize the middleware.
  #
  # cache   - An object that responds to read and write (default: nil).
  # options - An options Hash (default: {}):
  #           :ignore_params - String name or Array names of query
  #                                    params that should be ignored when forming
  #                                    the cache key (default: []).
  #           :write_options - Hash of settings that should be passed as the
  #                                    third options parameter to the cache's #write
  #                                    method. If not specified, no options parameter
  #                                    will be passed.
  #           :full_key      - Boolean - use full URL as cache key:
  #                                    (url.host + url.request_uri)
  #           :status_codes  - Array of http status code to be cache
  #                                    (default: CACHEABLE_STATUS_CODE)
  #
  # Yields if no cache is given. The block should return a cache object.
  #
  # @return [Caching] a new instance of Caching
  #
  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#42
  def initialize(app, cache = T.unsafe(nil), options = T.unsafe(nil)); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def build_query(*args, **_arg1, &block); end

  # Returns the value of attribute cache.
  #
  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#10
  def cache; end

  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#71
  def cache_key(env); end

  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#98
  def cache_on_complete(env); end

  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#52
  def call(env); end

  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#91
  def custom_status_codes; end

  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#122
  def finalize_response(response, env); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#87
  def full_key?; end

  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#83
  def params_to_ignore; end

  # source://forwardable/1.3.3/forwardable.rb#231
  def parse_query(*args, **_arg1, &block); end

  # source://faraday_middleware//lib/faraday_middleware/response/caching.rb#112
  def store_response_in_cache(key, response); end
end

# Internal: List of status codes that can be cached:
# * 200 - 'OK'
# * 203 - 'Non-Authoritative Information'
# * 300 - 'Multiple Choices'
# * 301 - 'Moved Permanently'
# * 302 - 'Found'
# * 404 - 'Not Found'
# * 410 - 'Gone'
#
# source://faraday_middleware//lib/faraday_middleware/response/caching.rb#20
FaradayMiddleware::Caching::CACHEABLE_STATUS_CODES = T.let(T.unsafe(nil), Array)

# Public: Parse a Transfer-Encoding. Chunks response to just the original data
#
# source://faraday_middleware//lib/faraday_middleware/response/chunked.rb#7
class FaradayMiddleware::Chunked < ::FaradayMiddleware::ResponseMiddleware
  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response/chunked.rb#28
  def chunked_encoding?(headers); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response/chunked.rb#24
  def parse_response?(env); end
end

# source://faraday_middleware//lib/faraday_middleware/response/chunked.rb#8
FaradayMiddleware::Chunked::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

# Request middleware that encodes the body as JSON.
#
# Processes only requests with matching Content-type or those without a type.
# If a request doesn't have a type but has a body, it sets the Content-type
# to JSON MIME-type.
#
# Doesn't try to encode bodies that already are in string form.
#
# source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#13
class FaradayMiddleware::EncodeJson < ::Faraday::Middleware
  # source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#22
  def call(env); end

  # source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#29
  def encode(data); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#45
  def has_body?(env); end

  # @yield []
  #
  # source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#33
  def match_content_type(env); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#40
  def process_request?(env); end

  # source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#49
  def request_type(env); end
end

# source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#14
FaradayMiddleware::EncodeJson::CONTENT_TYPE = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#15
FaradayMiddleware::EncodeJson::MIME_TYPE = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/request/encode_json.rb#16
FaradayMiddleware::EncodeJson::MIME_TYPE_REGEX = T.let(T.unsafe(nil), Regexp)

# Public: Follow HTTP 301, 302, 303, 307, and 308 redirects.
#
# For HTTP 301, 302, and 303, the original GET, POST, PUT, DELETE, or PATCH
# request gets converted into a GET. With `:standards_compliant => true`,
# however, the HTTP method after 301/302 remains unchanged. This allows you
# to opt into HTTP/1.1 compliance and act unlike the major web browsers.
#
# This middleware currently only works with synchronous requests; i.e. it
# doesn't support parallelism.
#
# If you wish to persist cookies across redirects, you could use
# the faraday-cookie_jar gem:
#
#   Faraday.new(:url => url) do |faraday|
#     faraday.use FaradayMiddleware::FollowRedirects
#     faraday.use :cookie_jar
#     faraday.adapter Faraday.default_adapter
#   end
#
# source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#25
class FaradayMiddleware::FollowRedirects < ::Faraday::Middleware
  # Public: Initialize the middleware.
  #
  # options - An options Hash (default: {}):
  #     :limit                      - A Numeric redirect limit (default: 3)
  #     :standards_compliant        - A Boolean indicating whether to respect
  #                                  the HTTP spec when following 301/302
  #                                  (default: false)
  #     :callback                   - A callable used on redirects
  #                                  with the old and new envs
  #     :cookies                    - An Array of Strings (e.g.
  #                                  ['cookie1', 'cookie2']) to choose
  #                                  cookies to be kept, or :all to keep
  #                                  all cookies (default: []).
  #     :clear_authorization_header - A Boolean indicating whether the request
  #                                  Authorization header should be cleared on
  #                                  redirects (default: true)
  #
  # @return [FollowRedirects] a new instance of FollowRedirects
  #
  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#58
  def initialize(app, options = T.unsafe(nil)); end

  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#66
  def call(env); end

  private

  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#125
  def callback; end

  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#140
  def clear_authorization_header(env, from_url, to_url); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#72
  def convert_to_get?(response); end

  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#117
  def follow_limit; end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#112
  def follow_redirect?(env, response); end

  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#77
  def perform_with_redirection(env, follows); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#147
  def redirect_to_same_host?(from_url, to_url); end

  # Internal: escapes unsafe characters from an URL which might be a path
  # component only or a fully qualified URI so that it can be joined onto an
  # URI:HTTP using the `+` operator. Doesn't escape "%" characters so to not
  # risk double-escaping.
  #
  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#133
  def safe_escape(uri); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#121
  def standards_compliant?; end

  # source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#93
  def update_env(env, request_body, response); end
end

# HTTP methods for which 30x redirects can be followed
#
# source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#27
FaradayMiddleware::FollowRedirects::ALLOWED_METHODS = T.let(T.unsafe(nil), Set)

# source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#40
FaradayMiddleware::FollowRedirects::AUTH_HEADER = T.let(T.unsafe(nil), String)

# Keys in env hash which will get cleared between requests
#
# source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#31
FaradayMiddleware::FollowRedirects::ENV_TO_CLEAR = T.let(T.unsafe(nil), Set)

# Default value for max redirects followed
#
# source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#34
FaradayMiddleware::FollowRedirects::FOLLOW_LIMIT = T.let(T.unsafe(nil), Integer)

# HTTP redirect status codes that this middleware implements
#
# source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#29
FaradayMiddleware::FollowRedirects::REDIRECT_CODES = T.let(T.unsafe(nil), Set)

# Regex that matches characters that need to be escaped in URLs, sans
# the "%" character which we assume already represents an escaped sequence.
#
# source://faraday_middleware//lib/faraday_middleware/response/follow_redirects.rb#38
FaradayMiddleware::FollowRedirects::URI_UNSAFE = T.let(T.unsafe(nil), Regexp)

# Middleware to automatically decompress response bodies. If the
# "Accept-Encoding" header wasn't set in the request, this sets it to
# "gzip,deflate" and appropriately handles the compressed response from the
# server. This resembles what Ruby 1.9+ does internally in Net::HTTP#get.
#
# This middleware is NOT necessary when these adapters are used:
# - net_http on Ruby 1.9+
# - net_http_persistent on Ruby 2.0+
# - em_http
#
# source://faraday_middleware//lib/faraday_middleware/gzip.rb#15
class FaradayMiddleware::Gzip < ::Faraday::Middleware
  # source://faraday_middleware//lib/faraday_middleware/gzip.rb#82
  def brotli_inflate(body); end

  # source://faraday_middleware//lib/faraday_middleware/gzip.rb#38
  def call(env); end

  # source://faraday_middleware//lib/faraday_middleware/gzip.rb#68
  def inflate(body); end

  # source://faraday_middleware//lib/faraday_middleware/gzip.rb#86
  def raw_body(body); end

  # source://faraday_middleware//lib/faraday_middleware/gzip.rb#56
  def reset_body(env); end

  # source://faraday_middleware//lib/faraday_middleware/gzip.rb#62
  def uncompress_gzip(body); end

  class << self
    # source://faraday_middleware//lib/faraday_middleware/gzip.rb#18
    def optional_dependency(lib = T.unsafe(nil)); end

    # source://faraday_middleware//lib/faraday_middleware/gzip.rb#27
    def supported_encodings; end
  end
end

# source://faraday_middleware//lib/faraday_middleware/gzip.rb#33
FaradayMiddleware::Gzip::ACCEPT_ENCODING = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/gzip.rb#25
FaradayMiddleware::Gzip::BROTLI_SUPPORTED = T.let(T.unsafe(nil), FalseClass)

# source://faraday_middleware//lib/faraday_middleware/gzip.rb#34
FaradayMiddleware::Gzip::CONTENT_ENCODING = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/gzip.rb#35
FaradayMiddleware::Gzip::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/gzip.rb#36
FaradayMiddleware::Gzip::SUPPORTED_ENCODINGS = T.let(T.unsafe(nil), String)

# Public: Instruments requests using Active Support.
#
# Measures time spent only for synchronous requests.
#
# Examples
#
#   ActiveSupport::Notifications.
#     subscribe('request.faraday') do |name, starts, ends, _, env|
#     url = env[:url]
#     http_method = env[:method].to_s.upcase
#     duration = ends - starts
#     $stderr.puts '[%s] %s %s (%.3f s)' % [url.host,
#                                           http_method,
#                                           url.request_uri,
#                                           duration]
#   end
#
# source://faraday_middleware//lib/faraday_middleware/instrumentation.rb#22
class FaradayMiddleware::Instrumentation < ::Faraday::Middleware
  # @return [Instrumentation] a new instance of Instrumentation
  #
  # source://faraday_middleware//lib/faraday_middleware/instrumentation.rb#25
  def initialize(app, options = T.unsafe(nil)); end

  # source://faraday_middleware//lib/faraday_middleware/instrumentation.rb#30
  def call(env); end
end

# Public: Converts parsed response bodies to a Hashie::Mash if they were of
# Hash or Array type.
#
# source://faraday_middleware//lib/faraday_middleware/response/mashify.rb#8
class FaradayMiddleware::Mashify < ::Faraday::Response::Middleware
  # @return [Mashify] a new instance of Mashify
  #
  # source://faraday_middleware//lib/faraday_middleware/response/mashify.rb#20
  def initialize(app = T.unsafe(nil), options = T.unsafe(nil)); end

  # Returns the value of attribute mash_class.
  #
  # source://faraday_middleware//lib/faraday_middleware/response/mashify.rb#9
  def mash_class; end

  # Sets the attribute mash_class
  #
  # @param value the value to set the attribute mash_class to.
  #
  # source://faraday_middleware//lib/faraday_middleware/response/mashify.rb#9
  def mash_class=(_arg0); end

  # source://faraday_middleware//lib/faraday_middleware/response/mashify.rb#25
  def parse(body); end

  class << self
    # Returns the value of attribute mash_class.
    #
    # source://faraday_middleware//lib/faraday_middleware/response/mashify.rb#12
    def mash_class; end

    # Sets the attribute mash_class
    #
    # @param value the value to set the attribute mash_class to.
    #
    # source://faraday_middleware//lib/faraday_middleware/response/mashify.rb#12
    def mash_class=(_arg0); end
  end
end

# Public: Writes the original HTTP method to "X-Http-Method-Override" header
# and sends the request as POST.
#
# This can be used to work around technical issues with making non-POST
# requests, e.g. faulty HTTP client or server router.
#
# This header is recognized in Rack apps by default, courtesy of the
# Rack::MethodOverride module. See
# http://rack.rubyforge.org/doc/classes/Rack/MethodOverride.html
#
# source://faraday_middleware//lib/faraday_middleware/request/method_override.rb#15
class FaradayMiddleware::MethodOverride < ::Faraday::Middleware
  # Public: Initialize the middleware.
  #
  # app     - the Faraday app to wrap
  # options - (optional)
  #           :rewrite - Array of HTTP methods to rewrite
  #                      (default: all but GET and POST)
  #
  # @return [MethodOverride] a new instance of MethodOverride
  #
  # source://faraday_middleware//lib/faraday_middleware/request/method_override.rb#24
  def initialize(app, options = T.unsafe(nil)); end

  # source://faraday_middleware//lib/faraday_middleware/request/method_override.rb#32
  def call(env); end

  # Internal: Write the original HTTP method to header, change method to POST.
  #
  # source://faraday_middleware//lib/faraday_middleware/request/method_override.rb#47
  def rewrite_request(env, original_method); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/request/method_override.rb#38
  def rewrite_request?(method); end
end

# source://faraday_middleware//lib/faraday_middleware/request/method_override.rb#16
FaradayMiddleware::MethodOverride::HEADER = T.let(T.unsafe(nil), String)

# Public: Uses the simple_oauth library to sign requests according the
# OAuth protocol.
#
# The options for this middleware are forwarded to SimpleOAuth::Header:
# :consumer_key, :consumer_secret, :token, :token_secret. All these
# parameters are optional.
#
# The signature is added to the "Authorization" HTTP request header. If the
# value for this header already exists, it is not overriden.
#
# If no Content-Type header is specified, this middleware assumes that
# request body parameters should be included while signing the request.
# Otherwise, it only includes them if the Content-Type is
# "application/x-www-form-urlencoded", as per OAuth 1.0.
#
# For better performance while signing requests, this middleware should be
# positioned before UrlEncoded middleware on the stack, but after any other
# body-encoding middleware (such as EncodeJson).
#
# source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#25
class FaradayMiddleware::OAuth < ::Faraday::Middleware
  extend ::Forwardable

  # @return [OAuth] a new instance of OAuth
  #
  # source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#35
  def initialize(app, options); end

  # source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#64
  def body_params(env); end

  # source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#40
  def call(env); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#74
  def include_body_params?(env); end

  # source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#45
  def oauth_header(env); end

  # source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#56
  def oauth_options(env); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def parse_nested_query(*args, **_arg1, &block); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#52
  def sign_request?(env); end

  # source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#79
  def signature_params(params); end
end

# Public: A simple middleware that adds an access token to each request.
#
# By default, the token is added as both "access_token" query parameter
# and the "Authorization" HTTP request header. It can alternatively be
# added exclusively as a bearer token "Authorization" header by specifying
# a "token_type" option of "bearer". However, an explicit "access_token"
# parameter or "Authorization" header for the current request are not
# overriden.
#
# Examples
#
#   # configure default token:
#   OAuth2.new(app, 'abc123')
#
#   # configure query parameter name:
#   OAuth2.new(app, 'abc123', :param_name => 'my_oauth_token')
#
#   # use bearer token authorization header only
#   OAuth2.new(app, 'abc123', :token_type => 'bearer')
#
#   # default token value is optional:
#   OAuth2.new(app, :param_name => 'my_oauth_token')
#
# source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#29
class FaradayMiddleware::OAuth2 < ::Faraday::Middleware
  extend ::Forwardable

  # @raise [ArgumentError]
  # @return [OAuth2] a new instance of OAuth2
  #
  # source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#56
  def initialize(app, token = T.unsafe(nil), options = T.unsafe(nil)); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def build_query(*args, **_arg1, &block); end

  # source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#39
  def call(env); end

  # Returns the value of attribute param_name.
  #
  # source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#34
  def param_name; end

  # source://forwardable/1.3.3/forwardable.rb#231
  def parse_query(*args, **_arg1, &block); end

  # source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#77
  def query_params(url); end

  # Returns the value of attribute token_type.
  #
  # source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#34
  def token_type; end
end

# source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#32
FaradayMiddleware::OAuth2::AUTH_HEADER = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#30
FaradayMiddleware::OAuth2::PARAM_NAME = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/request/oauth2.rb#31
FaradayMiddleware::OAuth2::TOKEN_TYPE = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#28
FaradayMiddleware::OAuth::AUTH_HEADER = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#29
FaradayMiddleware::OAuth::CONTENT_TYPE = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/request/oauth.rb#30
FaradayMiddleware::OAuth::TYPE_URLENCODED = T.let(T.unsafe(nil), String)

# DRAGONS
#
# source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#88
module FaradayMiddleware::OptionsExtension
  # @yield [:preserve_raw, preserve_raw]
  #
  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#95
  def each; end

  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#102
  def fetch(key, *args); end

  # Returns the value of attribute preserve_raw.
  #
  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#89
  def preserve_raw; end

  # Sets the attribute preserve_raw
  #
  # @param value the value to set the attribute preserve_raw to.
  #
  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#89
  def preserve_raw=(_arg0); end

  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#91
  def to_hash; end
end

# Parse dates from response body
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_dates.rb#8
class FaradayMiddleware::ParseDates < ::Faraday::Response::Middleware
  # @return [ParseDates] a new instance of ParseDates
  #
  # source://faraday_middleware//lib/faraday_middleware/response/parse_dates.rb#12
  def initialize(app, options = T.unsafe(nil)); end

  # source://faraday_middleware//lib/faraday_middleware/response/parse_dates.rb#17
  def call(env); end

  private

  # source://faraday_middleware//lib/faraday_middleware/response/parse_dates.rb#25
  def parse_dates!(value); end
end

# source://faraday_middleware//lib/faraday_middleware/response/parse_dates.rb#9
FaradayMiddleware::ParseDates::ISO_DATE_FORMAT = T.let(T.unsafe(nil), Regexp)

# Public: Parse response bodies as JSON.
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#7
class FaradayMiddleware::ParseJson < ::FaradayMiddleware::ResponseMiddleware; end

# Public: Override the content-type of the response with "application/json"
# if the response body looks like it might be JSON, i.e. starts with an
# open bracket.
#
# This is to fix responses from certain API providers that insist on serving
# JSON with wrong MIME-types such as "text/javascript".
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#22
class FaradayMiddleware::ParseJson::MimeTypeFix < ::FaradayMiddleware::ResponseMiddleware
  # source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#39
  def first_char(body); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#35
  def parse_response?(env); end

  # source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#25
  def process_response(env); end
end

# source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#32
FaradayMiddleware::ParseJson::MimeTypeFix::BRACKETS = T.let(T.unsafe(nil), Array)

# source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#23
FaradayMiddleware::ParseJson::MimeTypeFix::MIME_TYPE = T.let(T.unsafe(nil), String)

# source://faraday_middleware//lib/faraday_middleware/response/parse_json.rb#33
FaradayMiddleware::ParseJson::MimeTypeFix::WHITESPACE = T.let(T.unsafe(nil), Array)

# Public: Restore marshalled Ruby objects in response bodies.
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_marshal.rb#7
class FaradayMiddleware::ParseMarshal < ::FaradayMiddleware::ResponseMiddleware; end

# Public: parses response bodies with MultiXml.
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_xml.rb#7
class FaradayMiddleware::ParseXml < ::FaradayMiddleware::ResponseMiddleware; end

# Public: Parse response bodies as YAML.
#
# Warning: This is not backwards compatible with versions of this middleware
# prior to faraday_middleware v0.12 - prior to this version, we used
# YAML.load rather than YAMl.safe_load, which exposes serious remote code
# execution risks - see https://github.com/ruby/psych/issues/119 for details.
# If you're sure you can trust YAML you're passing, you can set up an unsafe
# version of this middleware like this:
#
#     class UnsafelyParseYaml < FaradayMiddleware::ResponseMiddleware
#       dependency do
#         require 'yaml'
#       end
#
#       define_parser do |body|
#         YAML.load body
#       end
#     end
#
#     Faraday.new(..) do |config|
#       config.use UnsafelyParseYaml
#       ...
#     end
#
# source://faraday_middleware//lib/faraday_middleware/response/parse_yaml.rb#29
class FaradayMiddleware::ParseYaml < ::FaradayMiddleware::ResponseMiddleware; end

# Wraps a handler originally written for Rack for Faraday compatibility.
#
# Experimental. Only handles changes in request headers.
#
# source://faraday_middleware//lib/faraday_middleware/rack_compatible.rb#9
class FaradayMiddleware::RackCompatible
  # @return [RackCompatible] a new instance of RackCompatible
  #
  # source://faraday_middleware//lib/faraday_middleware/rack_compatible.rb#10
  def initialize(app, rack_handler, *args); end

  # source://faraday_middleware//lib/faraday_middleware/rack_compatible.rb#21
  def call(env); end

  # source://faraday_middleware//lib/faraday_middleware/rack_compatible.rb#80
  def finalize_response(env, rack_response); end

  # source://faraday_middleware//lib/faraday_middleware/rack_compatible.rb#50
  def headers_to_rack(env); end

  # faraday to rack-compatible
  #
  # source://faraday_middleware//lib/faraday_middleware/rack_compatible.rb#30
  def prepare_env(faraday_env); end

  # rack to faraday-compatible
  #
  # source://faraday_middleware//lib/faraday_middleware/rack_compatible.rb#61
  def restore_env(rack_env); end
end

# source://faraday_middleware//lib/faraday_middleware/rack_compatible.rb#27
FaradayMiddleware::RackCompatible::NON_PREFIXED_HEADERS = T.let(T.unsafe(nil), Array)

# Public: Converts parsed response bodies to a Hashie::Rash if they were of
# Hash or Array type.
#
# source://faraday_middleware//lib/faraday_middleware/response/rashify.rb#8
class FaradayMiddleware::Rashify < ::FaradayMiddleware::Mashify; end

# Exception thrown when the maximum amount of requests is
# exceeded.
#
# source://faraday_middleware//lib/faraday_middleware/redirect_limit_reached.rb#8
class FaradayMiddleware::RedirectLimitReached < ::Faraday::ClientError
  # @return [RedirectLimitReached] a new instance of RedirectLimitReached
  #
  # source://faraday_middleware//lib/faraday_middleware/redirect_limit_reached.rb#11
  def initialize(response); end

  # Returns the value of attribute response.
  #
  # source://faraday_middleware//lib/faraday_middleware/redirect_limit_reached.rb#9
  def response; end
end

# Internal: The base class for middleware that parses responses.
#
# source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#8
class FaradayMiddleware::ResponseMiddleware < ::Faraday::Middleware
  # @return [ResponseMiddleware] a new instance of ResponseMiddleware
  #
  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#28
  def initialize(app = T.unsafe(nil), options = T.unsafe(nil)); end

  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#35
  def call(environment); end

  # Parse the response body.
  #
  # Instead of overriding this method, consider using `define_parser`.
  #
  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#51
  def parse(body); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#78
  def parse_response?(env); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#82
  def preserve_raw?(env); end

  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#41
  def process_response(env); end

  # @return [Boolean]
  #
  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#72
  def process_response_type?(type); end

  # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#66
  def response_type(env); end

  class << self
    # Store a Proc that receives the body and returns the parsed result.
    #
    # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#16
    def define_parser(parser = T.unsafe(nil), &block); end

    # @private
    #
    # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#22
    def inherited(subclass); end

    # Returns the value of attribute parser.
    #
    # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#12
    def parser; end

    # Sets the attribute parser
    #
    # @param value the value to set the attribute parser to.
    #
    # source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#12
    def parser=(_arg0); end
  end
end

# source://faraday_middleware//lib/faraday_middleware/response_middleware.rb#9
FaradayMiddleware::ResponseMiddleware::CONTENT_TYPE = T.let(T.unsafe(nil), String)
