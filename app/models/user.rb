class User < ApplicationRecord
  after_create :send_mail
  
  private
  def send_mail
    HardWorker.perform_in(10.seconds, id)
  end
end
