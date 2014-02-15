require 'spec_helper'
feature 'Creating Projects' do
  before do
visit '/'
    click_link 'New Project'
  end

  scenario "can create a project" do
    fill_in 'Your name', with: 'TextMate 2'
    fill_in 'Tell me about yourself', with: 'A text-editor for OS X'
    click_button 'Create Project'
    expect(page).to have_content('Project has been saved.')
  end

  scenario "can not create a project without a name" do
    click_button 'Create Project'
    expect(page).to have_content("Project has not been created.")
    expect(page).to have_content("Name can't be blank")
  end
end
