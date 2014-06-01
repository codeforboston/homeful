class User < ActiveRecord::Base
  self.abstract_class = true
  has_attached_file :photo, styles: { medium:  "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
