# frozen_string_literal: true

require 'test_helper'

class WatchesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get watches_url
    assert_response :success
  end

  test 'should show watch' do
    watch = watches(:one)
    get watch_url(watch)
    assert_response :success
  end

  test 'should redirect when watch not found' do
    get watch_url(999)
    assert_redirected_to watches_url
    assert_equal 'Watch not found.', flash[:alert]
  end

  test 'should randomize and redirect to watch' do
    post randomize_watches_url
    assert_redirected_to watch_url(Watch.last)
  end

  test 'should redirect with alert when no watches available' do
    Watch.update_all(selected: true)
    post randomize_watches_url
    assert_redirected_to watches_url
    assert_equal 'No more watches available. All have been selected!', flash[:alert]
  end

  test 'should reset selections when needed' do
    Watch.update_all(selected: true)
    get watches_url
    assert_equal 0, Watch.where(selected: true).count
  end
end
