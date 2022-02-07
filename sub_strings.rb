testing = "abcabcabcabcabc"
expression = "abcabcabc"
result = testing.scan(/(?=(#{Regexp.quote(expression)}))/)
p result