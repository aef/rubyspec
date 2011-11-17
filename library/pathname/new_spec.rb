require File.expand_path('../../../spec_helper', __FILE__)
require 'pathname'

describe "Pathname.new" do
  it "returns a new Pathname Object with 1 argument" do
    Pathname.new('').should be_kind_of(Pathname)
  end

  it "raises an ArgumentError when called with \0" do
    lambda { Pathname.new("\0")}.should raise_error(ArgumentError)
  end

  it "is tainted if path is tainted" do
    path = '/usr/local/bin'.taint
    Pathname.new(path).tainted?.should == true
  end

end

describe "Pathname.[]" do
  it "returns a new Pathname Object with 1 argument" do
    Pathname[''].should be_kind_of(Pathname)
  end

  it "raises an ArgumentError when called with \0" do
    lambda { Pathname["\0"]}.should raise_error(ArgumentError)
  end

  it "is tainted if path is tainted" do
    path = '/usr/local/bin'.taint
    Pathname[path].tainted?.should == true
  end
end

describe "Kernel#Pathname()" do
  it "returns a new Pathname Object with 1 argument but warns about deprecation" do
    lambda {
      Pathname('').should be_kind_of(Pathname)
    }.should complain('Kernel#Pathname is deprecated; use Pathname.[] instead')

  end

  it "raises an ArgumentError when called with \0 but warns about deprecation" do
    lambda {
      lambda { Pathname("\0")}.should raise_error(ArgumentError)
    }.should complain('Kernel#Pathname is deprecated; use Pathname.[] instead')
  end

  it "is tainted if path is tainted but warns about deprecation" do
    lambda {
      path = '/usr/local/bin'.taint
      Pathname(path).tainted?.should == true
    }.should complain('Kernel#Pathname is deprecated; use Pathname.[] instead')
  end

end
