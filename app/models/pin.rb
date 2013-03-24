class Pin < ActiveRecord::Base
  # Attributes
  attr_accessible :description, :image #can now add an image to the pin

  # Associations
  belongs_to :user # Associate with user - n:1 relationship
  has_attached_file :image, styles: { medium: "320x240>"} # Image has two attached files of original and medium
  
  # Validations
  validates :description, presence: true
  validates :user_id, presence: true #makes sure that if user_id is not present, it won't save to database. 
  validates_attachment :image, presence: true, # make sure it contains an image
                              content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']}, # Permitted content types
                              size: { less_than: 5.megabytes } # Size limit so that we don't have ginormous images
end
