require 'spec_helper'

describe DirtyDelta do
  describe '#attribute_delta' do
    let(:timecard) { Timecard.create(minutes: 480, hours: 8) }

    context 'when the attribute is an integer' do
      context 'when the new value is larger' do
        it 'returns the correct value' do
          timecard.minutes = 500
          expect(timecard.minutes_delta).to eq(20)
        end
      end
      context 'when the new value is smaller' do
        it 'returns the correct value' do
          timecard.minutes = 460
          expect(timecard.minutes_delta).to eq(-20)
        end
      end
    end
    context 'when the attribute is a float' do
      context 'when the new value is larger' do
        it 'returns the correct value' do
          timecard.hours = 8.5
          expect(timecard.hours_delta).to eq(0.5)
        end
      end
      context 'when the new value is smaller' do
        it 'returns the correct value' do
          timecard.hours = 6.5
          expect(timecard.hours_delta).to eq(-1.5)
        end
      end
    end
  end
end