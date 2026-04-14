require "test_helper"

class AnimalTest < ActiveSupport::TestCase
  test 'should not allow duplicate unique_tag' do
    animal_one = animals(:animal_one)
    duplicate = Animal.new(unique_tag: animal_one.unique_tag, species: 'Species 2', breed: 'Breed 2')
    assert_not duplicate.valid?
  end
end
