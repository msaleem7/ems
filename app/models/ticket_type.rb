# == Schema Information
#
# Table name: ticket_types
#
#  id          :bigint           not null, primary key
#  currency    :string
#  free_ticket :boolean
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :bigint
#
# Indexes
#
#  index_ticket_types_on_event_id  (event_id)
#
class TicketType < ApplicationRecord
  belongs_to :event
end
