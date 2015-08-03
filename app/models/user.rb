class User < ActiveRecord::Base

  enum role: [:user, :vip, :admin]

  after_initialize :set_default_role, if: :new_record?

  has_many :identities, dependent: :destroy

  def set_default_role
    if User.count == 0
      self.role ||= :admin
    else
      self.role ||= :user
    end
  end

  def email
    identities.order("logged_in_at DESC").limit(1).take.try(:email)
  end
end
