require 'spec_helper'

feature 'Creating Projects' do
    scenario 'can create a project' do
      visit '/'
      click_link 'New Project'

      fill_in 'Your name',  with: 'Textmate 2'
      fill_in 'Tell me about yourself',  with: 'A text editor for the OS X'
      click_button 'Create Project'

      expect(page).to have_content('Project has been saved.')
    end
end
