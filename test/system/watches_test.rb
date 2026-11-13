# frozen_string_literal: true

require 'application_system_test_case'

class WatchesTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit watches_url

    assert_selector 'h1', text: 'My Watches'
    assert_selector '.randomize-button'
  end

  test 'randomizing a watch' do
    visit watches_url

    click_button 'Randomize'

    assert_current_path %r{/watches/\d+}
    assert_selector 'h1', text: /The watch for the day is/
  end

  test 'viewing a watch' do
    watch = watches(:one)
    visit watch_url(watch)

    assert_selector 'h1', text: "The watch for the day is #{watch.brand} #{watch.name}"
  end
end
