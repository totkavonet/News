class Post < ApplicationRecord
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.png\Z/
  # validates_attachment_content_type 'image/png', 'image/jpg'
  validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|)$/, :message => 'file type is not allowed (only jpg/png images)'
end

