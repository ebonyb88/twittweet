class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    # placed around line 7:
  serialize :following, Array

  validates :username, presence: true
  validates :username, uniqueness: true

has_many :tweets

mount_uploader :avatar, AvatarUploader

end
