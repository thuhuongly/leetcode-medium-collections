# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    result = []
    return result if digits == ""
    hash = {2 => 'abc', 3 => 'def', 4 => 'ghi', 5 => 'jkl', 6 => 'mno', 7 => 'pqrs', 8 => 'tuv', 9 => 'wxyz'}
    return hash[digits.to_i].split('') if digits.length == 1
    curr_vals = [""]
    digits.split('').each do |d|
        next_vals = []
        curr_vals.each do |c|
            hash[d.to_i].split('').each do |l|
                next_vals.push(c + l)
            end
        end
        curr_vals = next_vals
    end
    curr_vals
end
