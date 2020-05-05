class HardWorker
  include Sidekiq::Worker
  def perform(user_id)
    user = User.find(user_id)
    user.is_sent_email = true
    user.save
  end
end