class President < ActiveRecord::Base
  has_many :cabinet_members
  scope :george, -> { where(first_name: 'George') }

  def to_s
    "#{number} #{name}"
  end

  def name
    "#{first_name} #{last_name}"
  end
end
