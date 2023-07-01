class Post < ApplicationRecord
mount_uploader :picture, PictureUploader

    after_create :notify_admin

    def notify_admin
        PostsMailer.new_post_notification(self).deliver
    end
end
