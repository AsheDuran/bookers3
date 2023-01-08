class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books
  has_one_attached :profile_image

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_profile_image.png')
      profile_image.attach(io: File.open(file_path), filename: 'no_profile_image.png', content_type: 'image/png')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end
end
