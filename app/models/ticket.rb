class Ticket < ApplicationRecord
  belongs_to :freelancer,
    class_name: "::User",
    foreign_key: :freelancer_id,
    optional: true

  belongs_to :job

  enum licence_type: [:PADI, :SSI]

end
