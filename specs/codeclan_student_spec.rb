# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").


require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new('Patrick', 'G14')
  end

  def test_get_student_name()
    assert_equal('Patrick', @student.get_student_name())
  end

  def test_get_cohort_name()
    assert_equal('G14', @student.get_cohort_name())
  end

  def test_set_student_name()
      #Act - calling the function
      @student.set_student_name('Gillian')
      #Assert - that it has changed
      assert_equal('Gillian', @student.get_student_name())
  end

  def test_set_cohort_name()
      #Act - calling the function
      @student.set_cohort_name('G13')
      #Assert - that it has changed
      assert_equal('G13', @student.get_cohort_name())
  end

# Create a method that gets the student to talk (eg. Returns "I can talk!).

  def test_get_student_to_talk()
    assert_equal('I can talk!', @student.get_student_to_talk())
  end

# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").
  def test_say_favourite_language()
    #Act
    # phrase = @student.say_favourite_language('Ruby')
    # #Assert
    assert_equal('I love Ruby', @student.say_favourite_language('Ruby'))
  end


end
