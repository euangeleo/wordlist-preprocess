# wordlist-preprocess
For most SIL dialect intelligibility surveys, wordlists are collected on paper (the batteries last forever!) in IPA, and are then stored in text files. If the surveyor wants to get fancy, they might be stored in a spreadsheet. In order to feed them into RuG/L04 for analysis, they need to be in an ASCII-only phonetic alphabet (like XSAMPA), and they need to be in the right format. This Perl script takes wordlists in Unicode IPA and converts them to XSAMPA, in a format that can be used with RuG/L04.
