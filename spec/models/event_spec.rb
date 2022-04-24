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
require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
