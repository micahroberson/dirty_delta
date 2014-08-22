require 'spec_helper'

describe Timecard do
  subject { Timecard.create(minutes: 500, hours: 8.333) }

  describe 'reloading a record' do
    it 'does not throw an error' do
      expect(-> { subject.reload }).to_not raise_error
    end
  end
end
