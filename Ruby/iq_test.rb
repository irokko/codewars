=begin
IQ Test 6-Kyu

Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

##Examples :

iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd


=end

#Solution:
def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end

=begin
This was a fun Kata to do. The logic behind my answer.
The test cases use numbers paramater as a string always.
Therefore the numbers string will need:
  1, Split by space into an array
  2. Changed into an integer
  3. Checked whether each integer is even or not

We get this by creating avariable nums and equalling it to:
  nums = numbers.split.map(&:to_i).map(&:even?)

Next step is to check each index is even and if there are more evens or odds in the string.
This is easy to check by just seeing if there is more than one even number.
  nums.count(true) > 1

Lastly we must return the position of the number that differs from the others. 
The task already explains the index starts from 1 not 0 and so we add one to either solution.
  
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1


Always great to check other answers and I enjoy reading if mine is the simplist or if there is another solution that is slipped into one line.
I found the following:

=end

#One line solution:
def iq_test(numbers)
  numbers.split(" ").count{|n| n.to_i.even?} > 1 ? numbers.split(" ").rindex { |n| n.to_i.odd? } + 1 : numbers.split(" ").rindex { |n| n.to_i.even? } + 1
end

#Probably not the best method because the reader can be easily lost in the long line. However it is a clever way to complete the task.