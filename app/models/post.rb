class Post < ApplicationRecord
    after_create :notify_admin

    def notify_admin
        PostsMailer.new_post_notification(self).deliver
    end
end
