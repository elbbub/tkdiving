class Job < ApplicationRecord
  belongs_to :recruiter,
    class_name: :user,
    foreign_key: :recruiter_id,
    optional: true

  has_many :tickets
end
