class Course < ApplicationRecord
  belongs_to :entity
  has_many :students

  validates :course_name, presence: true

  scope :entity, -> (entity) {
    where(entity_id: entity)
  }

end
