class ContactMessageConsumer < Racecar::Consumer
  subscribes_to "contacts_message", start_from_beginning: true

  def process(message)
    message = JSON.parse(message.value)
    puts message
    contact = ContactMongo.new(message)
    response = contact.save!
  end
end
