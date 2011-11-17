require File.expand_path('../../../spec_helper', __FILE__)
require 'set'

describe "Set#<" do
  before(:each) do
    @superset = Set["one", "two", "three"]
    @subset = Set["two", "three"]
    @unrelated_set = Set["sith", "jedi"]
  end

  it "should report the superset not being less than the superset" do
    (@superset < @superset).should be_false
  end

  it "should report the superset not being less than the subset" do
    (@superset < @subset).should be_false
  end

  it "should report the superset not being less than the unrelated set" do
    (@superset < @unrelated_set).should be_false
  end

  it "should report the subset being less than the superset" do
    (@subset < @superset).should be_true
  end

  it "should report the subset not being less than the subset" do
    (@subset < @subset).should be_false
  end

  it "should report the subset not being less than the unrelated set" do
    (@subset < @unrelated_set).should be_false
  end

  it "should report the unrelated set not being less than the superset" do
    (@unrelated_set < @superset).should be_false
  end

  it "should report the unrelated set not being less than the subset" do
    (@unrelated_set < @subset).should be_false
  end

  it "should report the unrelated set not being less than the unrelated set" do
    (@unrelated_set < @unrelated_set).should be_false
  end
end

describe "Set#<=" do
  before(:each) do
    @superset = Set["one", "two", "three"]
    @subset = Set["two", "three"]
    @unrelated_set = Set["sith", "jedi"]
  end

  it "should report the superset being equal or less than the superset" do
    (@superset <= @superset).should be_true
  end

  it "should report the superset not being equal or less than the subset" do
    (@superset <= @subset).should be_false
  end

  it "should report the superset not being equal or less than the unrelated set" do
    (@superset <= @unrelated_set).should be_false
  end

  it "should report the subset being equal or less than the superset" do
    (@subset <= @superset).should be_true
  end

  it "should report the subset being equal or less than the subset" do
    (@subset <= @subset).should be_true
  end

  it "should report the subset not being equal or less than the unrelated set" do
    (@subset <= @unrelated_set).should be_false
  end

  it "should report the unrelated set not being equal or less than the superset" do
    (@unrelated_set <= @superset).should be_false
  end

  it "should report the unrelated set not being equal or less than the subset" do
    (@unrelated_set <= @subset).should be_false
  end

  it "should report the unrelated set being equal or less than the unrelated set" do
    (@unrelated_set <= @unrelated_set).should be_true
  end
end

describe "Set#>" do
  before(:each) do
    @superset = Set["one", "two", "three"]
    @subset = Set["two", "three"]
    @unrelated_set = Set["sith", "jedi"]
  end

  it "should report the superset not being greater than the superset" do
    (@superset > @superset).should be_false
  end

  it "should report the superset being greater than the subset" do
    (@superset > @subset).should be_true
  end

  it "should report the superset not being greater than the unrelated set" do
    (@superset > @unrelated_set).should be_false
  end

  it "should report the subset not being greater than the superset" do
    (@subset > @superset).should be_false
  end

  it "should report the subset not being greater than the subset" do
    (@subset > @subset).should be_false
  end

  it "should report the subset not being greater than the unrelated set" do
    (@subset > @unrelated_set).should be_false
  end

  it "should report the unrelated set not being greater than the superset" do
    (@unrelated_set > @superset).should be_false
  end

  it "should report the unrelated set not being greater than the subset" do
    (@unrelated_set > @subset).should be_false
  end

  it "should report the unrelated set not being greater than the unrelated set" do
    (@unrelated_set > @unrelated_set).should be_false
  end
end

describe "Set#>=" do
  before(:each) do
    @superset = Set["one", "two", "three"]
    @subset = Set["two", "three"]
    @unrelated_set = Set["sith", "jedi"]
  end

  it "should report the superset being equal or greater than the superset" do
    (@superset >= @superset).should be_true
  end

  it "should report the superset being equal or greater than the subset" do
    (@superset >= @subset).should be_true
  end

  it "should report the superset not being equal or greater than the unrelated set" do
    (@superset >= @unrelated_set).should be_false
  end

  it "should report the subset not being equal or greater than the superset" do
    (@subset >= @superset).should be_false
  end

  it "should report the subset being equal or greater than the subset" do
    (@subset >= @subset).should be_true
  end

  it "should report the subset not being equal or greater than the unrelated set" do
    (@subset >= @unrelated_set).should be_false
  end

  it "should report the unrelated set not being equal or greater than the superset" do
    (@unrelated_set >= @superset).should be_false
  end

  it "should report the unrelated set not being equal or greater than the subset" do
    (@unrelated_set >= @subset).should be_false
  end

  it "should report the unrelated set being equal or greater than the unrelated set" do
    (@unrelated_set >= @unrelated_set).should be_true
  end
  
end
