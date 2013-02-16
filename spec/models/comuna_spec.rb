# encoding: utf-8
require 'spec_helper'

describe ChileanCities::Comuna do

  # attributes

  it "should have a name" do
    should respond_to :name
  end

  it "should have a code (código único territorial)" do
    should respond_to :code
  end

  it "should belong to a province (provincia)" do
    should respond_to :provincia
  end

  it "should belong to a region (región)" do
    should respond_to :region
  end

  it "regions should have as number" do
    should respond_to :region_number
  end

  # validations

  it "should have a valid factory" do
    FactoryGirl.build(:comuna).should be_valid
  end
end
