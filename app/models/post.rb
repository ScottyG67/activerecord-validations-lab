class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, presence: true
    validates :summary, presence: true, length: {maximum: 250}
    validates :content, presence: true, length: {minimum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validates_with TitleValidator

end
