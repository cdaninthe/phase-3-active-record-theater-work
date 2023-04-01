role_one = Role.create(character_name: "Romeo")
role_two = Role.create(character_name: "Juliet")
role_three = Role.create(character_name: "Mercutio")

Audition.create(actor: "brad", location: "NY", phone: 347, hired: false, role_id: 1)
Audition.create(actor: "luc", location: "NJ", phone: 646, hired: false, role_id: 1)
Audition.create(actor: "jeff", location: "FL", phone: 212, hired: false, role_id: 3)
Audition.create(actor: "angie", location: "TX", phone: 917, hired: false, role_id: 2)
Audition.create(actor: "jenny", location: "DC", phone: 305, hired: false, role_id: 2)