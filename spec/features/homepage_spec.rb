feature 'Homepage' do
  scenario 'Infrastructure working correctly' do
    visit '/'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Testing infrastructure working'
  end
end
