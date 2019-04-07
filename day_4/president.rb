class President < ActiveRecord::Base
  def to_s
    "#{number} #{first_name} #{last_name}"
  end
end
