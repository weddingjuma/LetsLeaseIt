class User < ApplicationRecord
  role_based_authorizable
	attr_accessor :remember_token, :reset_token
  before_save :downcase_email
  validates :username, presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  has_secure_password
  acts_as_messageable

  ROLES = %i[ super_admin admin account_manager regional_manager property_manager leasing_consultant]

  #listing relationship
  has_and_belongs_to_many :companies
  has_many :buildings
  has_many :listings, through: :building
  has_many :appointments

  scope :realty_group, -> {where company: current_user.company}

  # Returns the hash digest of a given string
  def User.digest(string)
  	cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
  	BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remember a User in the DB for Use in sessions that member does not want to forget/logout
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the token matches the password digest
  def authenticated?(attribue, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def mailboxer_username
    self.username
  end

  def mailboxer_email(object)
    self.email
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end

  private
    def downcase_email
      self.email = email.downcase
    end

end
