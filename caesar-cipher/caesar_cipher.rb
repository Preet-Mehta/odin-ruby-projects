# frozen_string_literal: true

UPPER_CASE_START = 65
LOWER_CASE_START = 97

def alphabet?(char)
  !(char.upcase == char && char.downcase == char)
end

def lower?(char)
  char >= 'a' && char <= 'z'
end

def shift_character(char, shift)
  # If not an alphabet, then simply return.
  return char unless alphabet?(char)

  if lower?(char)
    new_char = ((char.ord + shift) - LOWER_CASE_START) % 26
    (new_char + LOWER_CASE_START).chr
  else
    new_char = ((char.ord + shift) - UPPER_CASE_START) % 26
    (new_char + UPPER_CASE_START).chr
  end
end

def caesar_cipher(payload, shift)
  encrypted_payload = ''

  payload.each_char { |char| encrypted_payload << shift_character(char, shift) }
  encrypted_payload
end
