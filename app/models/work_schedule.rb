class WorkSchedule < ActiveRecord::Base
  belongs_to :worker, class_name: "User"

  validates :worker, presence: true

  # always render using the WorkSchedule time_zone
  def start_at
    super.in_time_zone(time_zone) if super && time_zone
  end

  # always render using the WorkSchedule time_zone
  def end_at
    super.in_time_zone(time_zone) if super && time_zone
  end
end
