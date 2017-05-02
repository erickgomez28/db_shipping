class Contact < ApplicationRecord
  belongs_to :contactable, polymorphic: true

  has_many :phones, dependent: :destroy
  has_many :emails, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :web_sites, dependent: :destroy
end
