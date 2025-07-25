# frozen_string_literal: true

# Example consumer that prints messages payloads
class PostsConsumer < ApplicationConsumer
  def consume
    messages.each do |message|
      post_data = JSON.parse(message.raw_payload)  # Parse JSON payload
      if post_data.is_a?(Hash) && post_data['title'].present?
        puts "Received post: #{post_data['title']}"
        # Additional logic can go here, e.g., saving to the database
      else
        puts "Received invalid post data: #{post_data.inspect}"
      end
    end
  end

  # Run anything upon partition being revoked
  # def revoked
  # end

  # Define here any teardown things you want when Karafka server stops
  # def shutdown
  # end
end
