class Contact < ActiveRecord::Base
  validates :first_name,  presence:true, length: {minimum: 2}
  validates :last_name, length: {maximum: 25}
  validates :job, length: {maximum: 50}
  validates :address_line1, length: {maximum:5000}
  validates :address_line2, length: {maximum: 100}
  validates :city, length: {maximum: 25}
  validates :country, length: {maximum: 25}
  validates :phone, length: {maximum: 25}, uniqueness: true
  validates :email, length: {maximum: 50},
    :uniqueness => { :case_sensitive => false }
  validates :twitter_acc, length: {maximum: 50}
  validate :phone_or_email_must_be_filled

  def phone_or_email_must_be_filled
    if phone.blank? && email.blank?
      errors.add(:base, 'Phone or email must be specified')
    end
  end
end
