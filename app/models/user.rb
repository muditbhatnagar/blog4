class User < ActiveRecord::Base
	belongs_to :company
	has_many :user_roles
  belongs_to :user_region

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   validates :company_id, presence: true
   validates :role_id, presence: true
   validates :first_name, presence: true
   validates :first_name, uniqueness: true
   validates :email, uniqueness: true
   validate :end_date_after_start_date?
   def end_date_after_start_date?
    if end_date.present?
     if end_date < start_date
       errors.add :end_date, "must be after start date"
      end
    end
   end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        mount_uploader :image, AvatarUploader
end
