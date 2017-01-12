class Resume < ApplicationRecord
  belongs_to :user
  belongs_to :job

  validates :content, presence: true
  mount_uploader :attachment, AttachmentUploader

  scope :recent, -> { order("created_at DESC") }
end
