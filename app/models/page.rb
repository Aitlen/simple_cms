class Page < ActiveRecord::Base
    belongs_to:subjects
    has_many:sections
end

scope :visible, lambda { where(:visible => true) }
scope :invisible, lambda { where(:visible => false) }
scope :sorted, lambda { order("pages.position ASC") }
scope :newest_first, lambda { order("pages.created_at DESC")}

