
% Rule to ask the user for their location
ask_location(Location) :-
    write('Please enter your location: '),
    read(Location).

% Rule to ask the user for their cuisine preference
ask_cuisine(Cuisine) :-
    write('What type of cuisine do you prefer? '),
    read(Cuisine).

% Rule to ask the user for their preferred price range
ask_price(Price) :-
    write('What is your preferred price range? (e.g. Rs 500, Rs 1000, etc) '),
    read(Price).

% Rule to ask the user for their preferred rating
ask_rating(Rating) :-
    write('What is your preferred rating? (out of 5) '),
    read(Rating).

% Rule to ask the user if they prefer vegetarian food
ask_vegetarian(Vegetarian) :-
    write('Do you prefer vegetarian food? (y/n) '),
    read(Answer),
    (Answer == 'y' ; Answer == 'n'),
    atom_string(Answer, Vegetarian).

% Rule to ask the user if they want a aesthetic atmosphere
ask_aesthetic(Aesthetic) :-
    write('Do you want a aesthetic atmosphere? (y/n) '),
    read(Answer),
    (Answer == 'y' ; Answer == 'n'),
    atom_string(Answer, Aesthetic).

% Rule to ask the user if they want a family-friendly restaurant
ask_family_friendly(FamilyFriendly) :-
    write('Do you want a family-friendly restaurant? (y/n) '),
    read(Answer),
    (Answer == 'y' ; Answer == 'n'),
    atom_string(Answer, FamilyFriendly).

% Rule to ask the user if they want a formal atmosphere
ask_fine_dining(FineDining) :-
    write('Do you want a formal atmosphere? (y/n) '),
    read(Answer),
    (Answer == 'y' ; Answer == 'n'),
    atom_string(Answer, FineDining).

% Rule to ask the user if they want a popular restaurant
ask_popular(Popular) :-
    write('Do you want a popular restaurant? (y/n) '),
    read(Answer),
    (Answer == 'y' ; Answer == 'n'),
    atom_string(Answer, Popular).

% Rule to suggest a restaurant based on user preferences
suggest_restaurant(Cuisine, Location, Price, Rating, Vegetarian, Aesthetic, FamilyFriendly, FineDining, Popular) :-
    restaurant(Name, Cuisine, Location, RestRating, PriceRange, VegetarianMenu, AestheticAtmosphere, FamilyFriendly, FineDining, Popular),
    PriceRange =< Price,
    RestRating >= Rating,
    VegetarianMenu == Vegetarian,
    AestheticAtmosphere == Aesthetic,
    FamilyFriendly == FamilyFriendly,
    FineDining == FineDining,
    Popular == Popular,
    write(Name), write(' - '), write(Location), write(' - '), write(PriceRange), write(' rupees - '), write(RestRating), nl.

% Database of restaurants
restaurant('Burger King', 'Fast Food', 'Midtown', 3.9, 550, 'yes', 'no', 'yes', 'no', 'yes').
restaurant('Biryani Blues', 'Indian', 'Delhi', 4.5, 800, 'yes', 'no', 'yes', 'no', 'yes').
restaurant('Dakshin', 'Indian', 'Chennai', 4.6, 1500, 'yes', 'no', 'yes', 'yes','yes').
restaurant('Dominos', 'Italian', 'Patiala', 4, 1000, 'yes', 'no', 'yes', 'no','yes').
restaurant('GangaNagar', 'Indian', 'Zirakpur', 4.2, 500, 'yes', 'yes', 'yes', 'no','no').
restaurant('Hibachi', 'Thai', 'Chandigarh', 4.4, 2000, 'no', 'yes', 'yes', 'yes','yes').
restaurant('McDonalds', 'Fast Food', 'Patiala', 3.9, 600, 'yes', 'no', 'yes', 'no','yes').
restaurant('Nagpal', 'Indian', 'Patiala', 3.8, 1500, 'yes', 'yes', 'yes', 'yes','no').
restaurant('The Patiala House', 'Indian', 'Patiala', 4.3, 800, 'yes', 'no', 'yes', 'no','yes').
restaurant('Patiala Kitchen', 'Indian', 'Patiala', 4.4, 1200, 'yes', 'no', 'yes', 'no','yes').
restaurant('Pizza Hut', 'Italian', 'Patiala', 4.2, 1200, 'yes', 'no', 'yes', 'yes','yes').
restaurant('Romatini', 'Italian', 'Patiala', 4.5, 2300, 'yes', 'yes', 'yes', 'yes','yes').
restaurant('Sundarams', 'South Indian', 'Chandigarh', 4.5, 300, 'yes', 'yes', 'yes', 'yes','no').
restaurant('Yo China', 'Chinese', 'Patiala', 3.5, 1000, 'no', 'yes', 'yes', 'yes','yes').

