class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140, message: "140文字以内に入力してください"}}
  validates :user_id, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end
