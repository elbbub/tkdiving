class User < ApplicationRecord
  has_many :jobs
  has_many :tickets
end
