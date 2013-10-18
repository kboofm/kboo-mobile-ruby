require 'spec_helper'

describe Episode do
  it { should belong_to :program }
  it { should validate_presence_of :title }
  it { should validate_presence_of :short_description }
  it { should have_many :comments }
  # it { should validate_presence_of :image }
  it { should validate_presence_of :audio_promo }
  it { should validate_presence_of :long_description }
  it { should validate_presence_of :category }
end
