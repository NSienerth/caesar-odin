# caesar-odin

This cipher works by calling String#gsub with a hash containing character/substitution pairs. It has a helper function that builds the cipher hash by zipping an array of the upper and lower case alphabets with rotated versions of themselves, determined by the original offset.