# == Schema Information
#
# Table name: tickets
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  ticket_type_id :bigint
#
# Indexes
#
#  index_tickets_on_ticket_type_id  (ticket_type_id)
#
class Ticket < ApplicationRecord
  belongs_to :ticket_type
  has_one :event, through: :ticket_type
end
