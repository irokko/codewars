=begin
Unique in Order 6-Kyu

Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

For example:

unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]


First create an empty array to store answer:
  answer = []
Next we need iterate through the string. 
  iterable.length.times do |x|

Must check whether this index is the same or not as the next character.
If it isn't the same we can add it to our answer array.
  it_array << iterable[x] if iterable[x] != iterable[x+1]

Lastly all we need to do is return the answer array
  return answer
  
Thought Process:
First we'll create the variable answer wich will store our solution. For now it will contain an empty array.
  answer = []

Next for the parameter we will iterate through the length of the array
  iterable.length.times do |x|
  
For each index we will check to see if it does not equal the next index
  iterable[x] != iterable[x+1]

If it doesn't we will push it to it_array
  it_array << iterable[x] 

Finally we wil return the answer

=end

#My Solution:
def unique_in_order(iterable)
  answer = []
  iterable.length.times do |x|
    it_array << iterable[x] if iterable[x] != iterable[x+1]
  end
  return answer
end

#More simple solution:
(iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
