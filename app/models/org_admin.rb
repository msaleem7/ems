# == Schema Information
#
# Table name: org_admins
#
#  id                     :bigint           not null, primary key
#  address                :string           default(""), not null
#  birthday               :datetime         default(Thu, 28 Apr 2022 16:19:33.558173000 UTC +00:00), not null
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default(""), not null
#  gender                 :integer          not null
#  last_name              :string           default(""), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  phone_number_mobile    :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  unconfirmed_email      :string
#  zip_code               :string           default(""), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  org_id                 :bigint
#
# Indexes
#
#  index_org_admins_on_email                 (email) UNIQUE
#  index_org_admins_on_org_id                (org_id)
#  index_org_admins_on_reset_password_token  (reset_password_token) UNIQUE
#
class OrgAdmin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
