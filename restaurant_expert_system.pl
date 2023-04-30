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

% Define a rule to suggest a restaurant based on user preferences
suggest_restaurant(Cuisine, Location, Price, PrefRating) :-
    restaurant(Name, Cuisine, Location, Rating, PriceRange),
    PriceRange =< Price,
    Rating >= PrefRating,
    write(Name), write(' - '), write(Location), write(' - '), write(PriceRange), write(' rupees - '), write(Rating), nl.


% Database of restaurants
restaurant('Burger King', 'Fast Food', 'Midtown', 3.9, 550).
restaurant('Biryani Blues', 'Indian', 'Delhi', 4.5, 800).
restaurant('Dakshin', 'Indian', 'Chennai', 4.6, 1500).
restaurant('Dominos', 'Italian', 'Patiala', 4, 1000).
restaurant('GangaNagar', 'Indian', 'Zirakpur', 4.2, 500).
restaurant('Hibachi', 'Thai', 'Chandigarh', 4.4, 1100).
restaurant('McDonalds', 'Fast Food', 'Downtown', 3.8, 500).
restaurant('Nagpal', 'Indian', 'Patiala', 3.8, 1500).
restaurant('Karim\'s', 'Indian', 'Delhi', 4.4, 900).
restaurant('KFC', 'Fast Food', 'Midtown', 4.1, 650).
restaurant('Oven Fresh', 'Italian', 'Chandigarh', 4.5, 1000).
restaurant('Paradise', 'Indian', 'Hyderabad', 4.5, 1000).
restaurant('The Patiala House', 'Indian', 'Patiala', 4.3, 800).
restaurant('Patiala Kitchen', 'Indian', 'Patiala', 4.4, 1200).
restaurant('Pind Balluchi', 'Indian', 'Delhi', 4.2, 1200).
restaurant('Pizza Hut', 'Italian', 'Downtown', 4.2, 1200).
restaurant('Punjabi By Nature', 'Indian', 'Bangalore', 4.3, 1100).
restaurant('Rajdhani Thali', 'Indian', 'Mumbai', 4.3, 1000).
restaurant('Rasoi', 'Indian', 'Mumbai', 4.0, 800).
restaurant('Romatini Restaurant', 'Italian', 'Downtown', 4.5, 2500).
restaurant('Saffron', 'Indian', 'Hyderabad', 4.2, 1500).
restaurant('Saravana Bhavan', 'Indian', 'Chennai', 4.1, 500).
restaurant('Sbarro', 'Italian', 'Midtown', 4.3, 1300).
restaurant('Subway', 'Fast Food', 'Downtown', 4.0, 600).
restaurant('Sundarams', 'South Indian', 'Chandigarh', 4.5, 300).
restaurant('Yo China', 'Chinese', 'Patiala', 3.5, 700).


