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
require 'rails_helper'

RSpec.describe Ticket, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
