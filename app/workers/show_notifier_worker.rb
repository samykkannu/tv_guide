class ShowNotifierWorker
  include Sidekiq::Worker

  def perform(show_id)
    UserFaveriteMailer.notify_show(show_id,current_user.id).deliver_now
  end
end
