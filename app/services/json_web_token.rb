class JsonWebToken
  SECRET_KEY = Rails.application.credentials.secret_key_base || ENV['SECRET_KEY_BASE']

  def self.encode(payload, exp = 100.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY, 'HS256')
  end

  def self.decode(token)
    body, = JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')
    HashWithIndifferentAccess.new(body)
  rescue JWT::DecodeError
    nil
  end
end