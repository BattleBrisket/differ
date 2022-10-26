require 'spec_helper'

describe Differ::Format::Patch do
  it 'should format inserts well' do
    @expected = "\033[32m+ SAMPLE\033[0m"
    Differ::Format::Patch.format(+'SAMPLE').should == @expected
  end

  it 'should format deletes well' do
    @expected = "\033[31m- SAMPLE\033[0m"
    Differ::Format::Patch.format(-'SAMPLE').should == @expected
  end

  it 'should format changes well' do
    @expected = "\033[31m- THEN\033[0m\n\033[32m+ NOW\033[0m"
    Differ::Format::Patch.format('THEN' >> 'NOW').should == @expected
  end
end
