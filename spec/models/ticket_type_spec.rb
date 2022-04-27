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
require 'rails_helper'

RSpec.describe TicketType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
