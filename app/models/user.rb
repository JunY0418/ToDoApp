class User < ApplicationRecord
  has_many :boards, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def has_written?(board)
    boards.exists?(id: board.id)
  end
end