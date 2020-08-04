class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 50 }

  has_many :posts, dependent: :destroy
  has_many :likes
  has_many :comments
  has_many :favorites
  
  has_many :following_relationships,foreign_key: "followed_id", class_name: "Relationship",  dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :followed_relationships,foreign_key: "following_id",class_name: "Relationship", dependent: :destroy
  has_many :followeds, through: :followed_relationships

  mount_uploader :profile_photo, ImageUploader

  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
end
