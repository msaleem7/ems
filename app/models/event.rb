# == Schema Information
#
# Table name: events
#
#  id          :bigint           not null, primary key
#  begins_at   :datetime
#  capacity    :integer
#  description :string
#  ends_at     :datetime
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  org_id      :bigint           not null
#
# Indexes
#
#  index_events_on_org_id  (org_id)
#
class Event < ApplicationRecord
  belongs_to :org
  has_many :ticket_types

  validates :name, presence: true
  validates :capacity, presence: true, numericality: true
  validates :begins_at, presence: true
end
