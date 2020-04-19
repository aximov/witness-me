class Tweet < ApplicationRecord
    validates :url, presence: true
    validates :url, format: { with: /twitter.com/, message: "Twitter の URL である必要があります。"}
    validates :url, format: { with: /https/, message: "https から入力してください。"}
end
