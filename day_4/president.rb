class President < ActiveRecord::Base
  has_many :cabinet_members

  def to_s
    "#{number} #{name}"
  end

  def name
    "#{first_name} #{last_name}"
  end
end
