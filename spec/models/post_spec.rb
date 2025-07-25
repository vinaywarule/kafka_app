# spec/models/post_spec.rb
require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { build(:post) }

  describe 'callbacks' do
    it 'calls call_before_validate before validation' do
      expect(post).to receive(:call_before_validate)
      post.valid?
    end

    it 'calls call_after_validate after validation' do
      expect(post).to receive(:call_after_validate)
      post.valid?
    end

    it 'calls call_before_create before create' do
      expect(post).to receive(:call_before_create)
      post.save
    end

    it 'calls call_after_create after create' do
      expect(post).to receive(:call_after_create)
      post.save
    end

    it 'calls call_before_save before save' do
      expect(post).to receive(:call_before_save)
      post.save
    end

    it 'calls call_after_save after save' do
      expect(post).to receive(:call_after_save)
      post.save
    end

    it 'calls call_before_commit before commit' do
      expect(post).to receive(:call_before_commit)
      post.save
    end

    it 'calls call_after_commit after commit' do
      expect(post).to receive(:call_after_commit)
      post.save
    end

    it 'calls call_before_update before update' do
      post.save
      expect(post).to receive(:call_before_update)
      post.update(title: "Updated Title")
    end

    it 'calls call_after_update after update' do
      post.save
      expect(post).to receive(:call_after_update)
      post.update(title: "Updated Title")
    end
  end
end