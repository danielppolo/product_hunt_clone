class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    return '' if !first_name && !last_name

    return "#{first_name.capitalize} #{last_name.capitalize}" if first_name && last_name

    return first_name.capitalize if first_name

    return last_name.capitalize if last_name
  end
end
