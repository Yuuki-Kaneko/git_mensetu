class Top < ApplicationRecord
    validates_presence_of :full_name,:email
end
