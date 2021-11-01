def encrypt_caesar(text, offset)
    caesar_hash = build_cipher(offset)
    text.gsub(/[a-bA-z]/, caesar_hash)
end
  
def build_cipher(offset)
  offset *= -1
  lower_case = ("a".."z").to_a
  upper_case = ("A".."Z").to_a
  lower_cipher = lower_case.zip(lower_case.rotate(offset))
  upper_cipher = upper_case.zip(upper_case.rotate(offset))
  Hash[(lower_cipher + upper_cipher)]
end
text = "Hullaballoo, I say to you. Open, wall, and let me through. 7809!"
offset = 2
puts encrypt_caesar(text, offset)