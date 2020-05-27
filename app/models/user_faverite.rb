class UserFaverite < ApplicationRecord
  belongs_to :user
  belongs_to :show
  after_save :notify_user

  def notify_user
    time = Show.find(show_id).timings - 30.minutes
    ShowNotifierWorker.perform_at(time, show_id)
  end
end
