require './spec_helper'
require '../lib/rover'

describe 'Rover' do
  let(:rover) { Rover.new(1, 2, 'N') }

  context 'initialized' do
    it 'should have a position and direction' do
      expect(rover.position).to eq( {x: 1, y: 2, dir: 'N'} )
    end
  end

  context 'rover rotates' do
    it 'should rotates right' do
      expect(rover.rotates(3)).to eq( {x: 1, y: 2, dir: 'W'} )
    end
  end

  context 'rover moves' do
    it 'should moves forward' do
     expect(rover.moves).to eq( {x: 1, y: 3, dir: 'N'} )
    end
    
    it 'should moves right' do
     rover.position[:dir] = 'E'
     expect(rover.moves).to eq( {x: 2, y: 2, dir: 'E'} )
    end
    
    it 'should moves down' do
     rover.position[:dir] = 'S'
     expect(rover.moves).to eq( {x: 1, y: 1, dir: 'S'} )
    end
   
    it 'should moves left' do
     rover.position[:dir] = 'W'
     expect(rover.moves).to eq( {x: 0, y: 2, dir: 'W'} )
    end
  end
end
