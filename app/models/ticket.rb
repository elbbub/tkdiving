class Ticket < ApplicationRecord
  belongs_to :freelancer,
    class_name: :user,
    foreign_key: :freelancer_id,
    optional: true

  belongs_to :job
end
