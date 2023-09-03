UPPER_CASE_START = 65
LOWER_CASE_START = 97

def is_alphabet?(char)
    !(char.upcase == char && char.downcase == char)
end

def is_lower?(char)
    char >= 'a' && char <= 'z'
end

def shift_character(char, shift)
    if is_alphabet?(char)
        # If an alphabet, then shift.
        if is_lower?(char)
            new_char_ = ((char.ord + shift) - LOWER_CASE_START) % 26
            (new_char + LOWER_CASE_START).chr
        else
            new_char = ((char.ord + shift) - UPPER_CASE_START) % 26
            (new_char + UPPER_CASE_START).chr
        end
    else
        # If not an aphabet, then simply return.
        char
    end
end

def caesar_cipher(payload, shift)
    encrypted_payload = ""

    payload.each_char {|char| encrypted_payload << shift_character(char, shift)}
    encrypted_payload
end
