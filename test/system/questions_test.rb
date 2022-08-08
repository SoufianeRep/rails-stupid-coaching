require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask Your Coach Anything:'
  end

  test 'saying Hello yields a grumpy answer from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask!'

    assert_text 'I don\'t care, get dressed and go to work!'
  end

  test 'saying hello? should yield a silly question reply from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello?'
    click_on 'Ask!'

    assert_text 'Silly question, get dressed and go to work!'
  end

  test 'saying anything with ? at the end should yield a silly question reply from the coach' do
    visit ask_url
    fill_in 'question', with: 'alkenfoeaknf oaihf oahef ioa?'
    click_on 'Ask!'

    assert_text 'Silly question, get dressed and go to work!'
  end

  test 'saying "I am going to work" yield a Great! reply from the coach' do
    visit ask_url
    fill_in 'question', with: 'alkenfoeaknf oaihf oahef ioa?'
    click_on 'Ask!'

    assert_text 'Silly question, get dressed and go to work!'
  end
end
