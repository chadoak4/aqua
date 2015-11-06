class AttendingEvent < ActiveRecord::Base
  belongs_to :Cleanup
  belongs_to :user
end
