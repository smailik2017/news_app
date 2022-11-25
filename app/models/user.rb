class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  belongs_to :role

  has_rich_text :info

  devise :database_authenticatable, :registerable

  def display_name
    self.email
  end

end
