class Post < ApplicationRecord
  # after_create :notify_kafka


  before_create :call_before_create
  before_save :call_before_save
  before_update :call_before_update




  before_validation :call_before_validate
  before_commit :call_before_commit
  
  after_create :call_after_create
  after_save :call_after_save
  after_update :call_after_update
  after_validation :call_after_validate
  after_commit :call_after_commit
     

  # def initialize(*args)
  #   ['before_create', 'before_update', 'before_save', 'before_validate', 'after_create', 'after_update', 'after_save', 'after_validate'].each do |a|
  #     define_method "call_#{a}" do
  #       p "called #{a} method"
  #     end
  #   end
  # end

  
  def call_before_create
    p "called call_before_create method"
  end
  def call_before_save
    p "called call_before_save method"
  end

  def call_before_update
    p "called call_before_update method"
  end

  def call_before_validate
    p "called call_before_validate method"
  end

  def call_before_commit
    p "called call_before_commit method"
  end
  
  def call_after_create
    p "called call_after_create method"
  end

  def call_after_save
    p "called call_after_save method"
  end

  def call_after_update
    p "called call_after_update method"
  end

  def call_after_validate
    p "called call_after_validate method"
  end

  def call_after_commit
    p "called call_after_commit method"
  end

  private



  # def notify_kafka
  #   Karafka.producer.produce_sync(
  #     topic: 'posts',
  #     payload: { id: id, title: title, description: description }.to_json
  #   )
  # end


end
