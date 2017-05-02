class User < ApplicationRecord
  class << self
    user = User.find_or_initialize_by(uid: auth['uid'])
    user.name = auth['infi']['name']
    user.token = auth['credentials']['token']
    user.save!
    user
  end
end
