# frozen_string_literal: true

require 'test_helper'

class WatchTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    watch = Watch.new(brand: 'Orient', name: 'Triton', image_path: 'watches/triton.jpeg')
    assert watch.valid?
  end

  test 'should be invalid without brand' do
    watch = Watch.new(name: 'Triton', image_path: 'watches/triton.jpeg')
    assert_not watch.valid?
    assert_includes watch.errors[:brand], "can't be blank"
  end

  test 'should be invalid without name' do
    watch = Watch.new(brand: 'Orient', image_path: 'watches/triton.jpeg')
    assert_not watch.valid?
    assert_includes watch.errors[:name], "can't be blank"
  end

  test 'should be invalid without image_path' do
    watch = Watch.new(brand: 'Orient', name: 'Triton')
    assert_not watch.valid?
    assert_includes watch.errors[:image_path], "can't be blank"
  end
end
