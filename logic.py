hospital_rooms = {
    101: 1,  
    102: 1,  
    103: 0,  
    104: 1,  
}

while True:
    user_input = input("Enter 'Allocate' to allocate a room (or 'Quit' to exit): ")

    if user_input == 'Quit':
        break
    elif user_input == 'Allocate':
        allocated_room = None
        for room, availability in hospital_rooms.items():
            if availability == 1:
                allocated_room = room
                break

        if allocated_room is not None:
            hospital_rooms[allocated_room] = 0
            print(f"Room {allocated_room} has been allocated.")
        else:
            print("No available rooms at the moment.")
    else:
        print("Invalid input. Please enter 'Allocate' or 'Quit'.")
