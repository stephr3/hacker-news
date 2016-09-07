require 'rails_helper'

describe Link do
  it {should have_many :comments}
  it  {should validate_presence_of :title}
  it  {should validate_presence_of :username}
  it  {should validate_presence_of :url}
  it  {should validate_presence_of :source}
end
