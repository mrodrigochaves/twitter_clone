class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets
  has_many :active_relationships, class_name:'Relationship',
  			foreign_key: 'follower_id', dependent:   :destroy

  has_many :passive_relationships, class_name:'Relationship',
  			foreign_key: 'followed_id', dependent:   :destroy

  has_many :following, through: :active_relationships, source: :followed

  has_many :followers, through: :active_relationships, source: :follower

  def following?(other_user)
  	# Este método criará o relacionamento entre um usuário e outro.
  end

  def follow!(other_user)
  	# Este método continuara o relacionamento entre um usuário e outro.
  end

  def unfollow!(other_user)
  	# Este método apagará o relacionamento entre um usuário e outro.
  end

end
