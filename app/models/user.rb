class User < ApplicationRecord
  BASE_URL = 'https://cleaner.dadata.ru/api/v1/clean/name'
  API_KEY = 'a9081f1b1ce87451aaf70e9149b2e4075bc5b166'     #так не делать, лучше апи и сикрит ключи вынести в .env
  SECRET_KEY = '8e8452204cfa9606521e0e84176a5978ced4c8e8'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: {maximum: 35}

  def dadata_gender(name)
    path = BASE_URL
    headers = {
      'Content-Type' => 'application/json',
      'Authorization' => "Token #{API_KEY}",
      'X-Secret' => "#{SECRET_KEY}"
    }

    body = ["#{name}"].to_json
    options = { headers: headers, body: body}
    
    request = HTTParty.post(path, options)
    request.parsed_response.first["gender"]
  end
end