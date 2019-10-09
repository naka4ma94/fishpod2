module CommonScope
  extend ActiveSupport::Concern

  included do
    default_scope -> { order(created_at: :desc) }
    scope :this_month, -> { where(created_at: Date.today.beginning_of_month...Date.today.end_of_month) }
    scope :size_order, -> { reorder(size: :desc).limit(5) }
    scope :most_post_user, -> { reorder('count(user_id) desc').limit(5) }
    scope :count_order, -> { where(id: Post.group(:user_id).most_post_user.pluck(:user_id)) }
  end
end