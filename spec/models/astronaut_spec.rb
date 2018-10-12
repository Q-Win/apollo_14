require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  before(:each) do

  @astronaut_1 = Astronaut.create(name: "John", age: 40, job: "tech")
  @astronaut_2 = Astronaut.create(name: "Steve", age: 42, job: "pilot")
  @astronaut_3 = Astronaut.create(name: "Karen", age: 56, job: "pilot")
  @astronaut_4 = Astronaut.create(name: "Ted", age: 26, job: "pilot")

  end

  it 'can return the average age for all astronauts' do
    average = Astronaut.average_age

    expect(average).to eq(41)
  end


end
