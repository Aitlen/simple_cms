class Page < ActiveRecord::Base
    belongs_to:subjects
    has_many:sections
end
