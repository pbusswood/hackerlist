require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "that a post requires a title" do
    post = Post.new
    assert !post.save
    assert !post.errors[:title].empty?
  end

  test "that a post requires content" do
    post = Post.new
    assert !post.save
    assert !post.errors[:content].empty?
  end

  test "that a post content is at least 2 characters" do
    post = Post.new
    post.content = "J"
    assert !post.save
    assert !post.errors[:content].empty?
  end

  test "that a post requires an email" do
    post = Post.new
    assert !post.save
    assert !post.errors[:email].empty?
  end

  test "that a post requires a correctly formatted email" do
    post = Post.new
    post.email = "980765dnknakjan.com@"
    assert !post.save
    assert !post.errors[:email].empty?
  end

  test "that a post requires a location" do
    post = Post.new
    assert !post.save
    assert !post.errors[:location].empty?
  end
end
