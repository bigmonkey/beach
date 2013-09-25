Given(/^a user visits the Center page on CMS$/) do
	visit 'localhost:8080/center'
end

When(/^the Center page loads$/) do
end

Then(/^the pages should have title tags Center \- Beachside Rehab$/) do
  expect(page).to have_title "Center - Beachside Rehab"
end