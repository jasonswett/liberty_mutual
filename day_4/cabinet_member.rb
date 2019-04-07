class CabinetMember < ActiveRecord::Base
  belongs_to :president

  def to_s
    "#{first_name} #{last_name} (#{president.name})"
  end
end
