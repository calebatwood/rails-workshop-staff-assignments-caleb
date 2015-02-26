class Assignment < ActiveRecord::Base

  belongs_to :people
  belongs_to :locations

end
