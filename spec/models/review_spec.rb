require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_inclusion_of :cost, :in => 1..5 }
  it { should validate_length_of :content_body {maximum: 250} }
  it { should validate_length_of :content_body {minimum: 50} }

  it { should belong_to :product }
end
