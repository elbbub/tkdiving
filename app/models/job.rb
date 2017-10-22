class Job < ApplicationRecord
  belongs_to :recruiter,
    class_name: "::User",
    foreign_key: :recruiter_id,
    optional: true

  has_many :tickets

  enum content_type: [:dsd, :fundive, :efr, :rescure, :dm, :aow_fundive, :ow, :aow, :ow_aow] 
end
