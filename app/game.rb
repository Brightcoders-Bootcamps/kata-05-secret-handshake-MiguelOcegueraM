# frozen_string_literal: true
require_relative 'handshake'

@greeting = SecretHandshake.new
@greeting.generate_instruction
@greeting.add_to_array
@greeting.actions

