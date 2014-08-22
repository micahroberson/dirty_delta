class Timecard < ActiveRecord::Base
  acts_as_dirty_delta
end
