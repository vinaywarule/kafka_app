class Post < ApplicationRecord
  after_create :notify_kafka


  private



  def notify_kafka
    Karafka.producer.produce_sync(
      topic: 'posts',
      payload: { id: id, title: title, description: description }.to_json
    )
  end


end
