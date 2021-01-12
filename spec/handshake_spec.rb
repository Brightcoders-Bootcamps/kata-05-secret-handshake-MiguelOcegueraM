# frozen_string_literal: true

require_relative '../app/handshake'
require 'rspec'

describe SecretHandshake do
    player = SecretHandshake.new

    describe '.generate_instruction' do
        it "returns an integer" do
            expect(player.generate_instruction).to be_between(0, 254).inclusive
        end
    end
end