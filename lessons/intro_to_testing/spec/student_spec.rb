require 'rspec'
require './lib/student'
# Add the 2 requires you will need here
# With require 'rspec' we are adding in the Domain Specific Language of rspec

RSpec.describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Penelope')

      expect(student).to be_instance_of(Student)
    end

    it 'has attributes' do
      # test it has a name
      # test it has cookies
      student = Student.new('Penelope')
      student_2 = Student.new('Logan')

      expect(student.name).to eq('Penelope')
      expect(student_2.name).to eq('Logan')
      expect(student.cookies).to eq([])
    end
    # test it can add cookies
  end
end
