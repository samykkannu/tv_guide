class UserFaveriteMailer < ApplicationMailer
  def notify_show(show_id,user_id)
    @show = Show.find(show_id)
    @channel = @show.channel
    @user = User.find(user_id)
    mail(to: @user.email, subject: 'show notification')
  end
end
