feature 'Homepage' do
  scenario 'Infrastructure working correctly' do
    visit '/'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Survival Game'
  end

  scenario 'Displays new player health and name' do
    visit '/'
    fill_in :name, with: 'Shaun of the Dead'
    click_button 'Play'
    expect(page).to have_content 'Shaun of the Dead'
  end
end
