class Tweet < ApplicationRecord
  vaidates :text, presence: true
end
