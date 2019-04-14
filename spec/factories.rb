FactoryBot.define do
  service_array = ["Test Service", "Test Service Two"]
  number = [1, 2, 3, 4, 5, 6]
factory :random_event, class: Event do
    id { number.shuffle }
    name { "Mon event" }
    date { "28/01/2019" }
    time { "21H" }
    tickets_available { 2500 }
    price {2000}
  end


factory :random_ticket, class: Ticket do
    id { number.shuffle }
    event_id { 1 }
    amount {2000}
    status {"unpaid"}
  end
end
