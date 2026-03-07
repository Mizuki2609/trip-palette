class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  # 1. 投稿との関連付け（current_user.tweets が使えるようになる）
  has_many :tweets, dependent: :destroy

  # 2. いいねとの関連付け（UserがどのTweetにいいねしたかを管理）
  has_many :likes, dependent: :destroy

  # 3. いいね済みか判定するメソッド
  #    current_user.already_liked?(tweet) で true/false が返る
  def already_liked?(tweet)
    likes.exists?(tweet_id: tweet.id)
  end
end
