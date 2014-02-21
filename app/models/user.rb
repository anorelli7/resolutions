class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :goals

         validates :username, presence: true


         def initializeName
         	names = self.username.split

         	firstname = names.first[0,1]
         	lastname = names.last[0,1]

         	p "#{lastname}, #{firstname}"
         end
end
