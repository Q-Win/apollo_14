require 'rails_helper'

describe "As a vistitor" do

  before(:each) do

    @astronaut_1 = Astronaut.create(name: "John", age: 40, job: "tech")
    @astronaut_2 = Astronaut.create(name: "Steve", age: 42, job: "pilot")

  end

  describe "When I visit astronauts page" do

    it 'should see all astronauts' do
      visit "/astronauts"

      within("#astronauts") do
        expect(page).to have_content(@astronaut_1.name)
        expect(page).to have_content(@astronaut_1.age)
        expect(page).to have_content(@astronaut_1.job)
        expect(page).to have_content(@astronaut_2.name)
        expect(page).to have_content(@astronaut_2.age)
        expect(page).to have_content(@astronaut_2.job)
      end

      within("#astronaut-stats") do
        expect(page).to have_content(Astronaut.average_age)
      end
    end
  end
end
