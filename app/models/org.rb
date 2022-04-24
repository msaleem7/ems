# == Schema Information
#
# Table name: orgs
#
#  id           :bigint           not null, primary key
#  email        :string           default(""), not null
#  name         :string
#  phone_number :string           default(""), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Org < ApplicationRecord
  has_many :events

  validates :name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
