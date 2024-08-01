class Course < ApplicationRecord
    scope :entity, -> (entity) {
        where(entity_id: entity)
      }
end
