class Tweet < ApplicationRecord
    validates :url, presence: true, format: { with: /twitter.com/, message: "Twitter の URL である必要があります"}
end
