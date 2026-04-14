class Veterinarian < ApplicationRecord
  has_many :tests, dependent: :restrict_with_exception

  scope :active, -> { where(deleted_at: nil) }

  def destroy
    self.deleted_at = Time.current
    save!
  end
end
