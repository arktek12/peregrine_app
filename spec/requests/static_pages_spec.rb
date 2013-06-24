require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Peregrine Database'" do
      visit '/static_pages/home'
      page.should have_content('Peregrine Database')
    end

    it "should have the title 'Peregrine Database'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Peregrine School Student Database | Home")
    end
  end

  describe "Student page" do

    it "should have the content 'Student Information'" do
      visit '/static_pages/student'
      page.should have_content('Student Information')
    end

    it "should have the title 'Student Information'" do
      visit '/static_pages/student'
      page.should have_selector('title',
                        :text => "Peregrine School Student Database | Student Information")
    end
  end

describe "Attendance page" do

    it "should have the content 'Student Attendance'" do
      visit '/static_pages/attendance'
      page.should have_content('Student Attendance')
    end

    it "should have the title 'Attendance'" do
      visit '/static_pages/attendance'
      page.should have_selector('title',
                        :text => "Peregrine School Student Database | Attendance")
    end
  end
end