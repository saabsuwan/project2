-- Drops the playlist_db if it exists currently. Only need it if you don't have a database--
DROP DATABASE IF EXISTS playlist_db;
-- Creates the "playlist_db" database --
CREATE DATABASE playlist_db;
-- Makes it so all of the following code will affect playlist_db--
USE playlist_db;

-- Creates the table "playlist" within playlist_db --
CREATE TABLE genre (
    -- Creates a numeric column called "id" which will automatically increment its default value as new rows are created. --
    id INT NOT NULL AUTO_INCREMENT,
    -- Makes an string column called "genre_name" --
    genre_name VARCHAR (150),
    -- Makes an string column called "song" --
    song VARCHAR (150),
    -- Makes an string column called "artist" --
    artist VARCHAR (150),
    PRIMARY KEY (id)
);


INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Whine Up", "Nicky Ham, Anuel AA");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Indeciso", "Reikm J Balvin, Lalo Ebratt");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Si te vas", "Sech, Ozuna");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Tutu", "Camilo, Pedro Capo");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Que tire pa' lante", "Daddy Yankee");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Que Pena", "Maluma, J Balvin");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "24/7", "Becky G");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Atrevete-te-te", "Calle 13");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Punto y aparte", "Tego Calderon");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Latin", "Me gustas tu", "Manu Chao");


INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "Toast", "Koffee");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "Ova Dweet", "Popcaan");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "Deport them", "Sean Paul");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "Heads high", "Mr. Vegas");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "No games", "Serani");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "Give me the light", "Sean Paul");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "Tempted to touch", "Rupee");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "So special", "Mavado");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "Temperature", "Sean Paul");
INSERT INTO genre (genre_name, song, artist)
VALUES ("Dancehall", "Welcome to jamrock", "Damian Marley");


INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "Parecen Viernes", "Marc Anthony");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "La ultima parte", "Yiyo Sarante");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "Ven devorame otra vez", "Lalo Rodriguez");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "Que locura enamorarme de ti", "Eddie Santiago");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "La vida es un carnaval", "Celia Cruz");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "Tu con el", "Frankie Ruiz");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "Amores como el nuestro", "Jerry Rivera");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "Lloraras", "Oscar D'Leon");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "Tu carinhito", "Puerto Rican Power");
INSERT INTO songs (title, artist, genre)
VALUES ("Salsa", "He tratado", "Victor Manuelle");


INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "El jardinero", "Wilfrido Vargas");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "La quiero a morir", "Sergio Vargas");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "Las pequenas cosas", "Las chicas del can");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "Ni tu ni yo", "Sergio Vargas");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "Tus besos son", "La gran manzana");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "Pecadora", "Los Hermanos Rosario");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "A donde Vayas", "Alex Bueno");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "Llego el swing", "Merengue d' Calle");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "Eso he malo?", "Merengue d' Calle");
INSERT INTO songs (title, artist, genre)
VALUES ("Merengue", "Esto pa' Goza", "Merengue d' Calle");


INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","Aqualung", "Jethro Tull");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","Epitaph", "King Crimson");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","To Bid You Farewell", "Opeth");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","Peaches in Regalia", "Frank Zappa");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","Trains", "Porcupine Tree");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","A change Of Seasons-The Crimson Sunrise", "Dream Theater");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","The Count Of Tuscany", "Dream Theater");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","The Depth of Self-Delusion", "Riverside");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","Frequency", "IQ");
INSERT INTO songs (title, artist, genre)
VALUES ("Progressive Rock","Xanadu", "Rush");


INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "Immortal", "21 Savage");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "VIBEZ", "DaBaby");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "Camelot", "NLE Choppa");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "BOP", "DaBaby");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "Start Wit Me", "Roddy Ricch, Gunna");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "Baby Birkin", "Gunna");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "Self Control", "YoungBoy Never Broke Again");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "BIG", "Young M.A");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "Love Me More", "Trippie Redd");
INSERT INTO songs (title, artist, genre)
VALUES ("Hip Hop", "Ayo for Yayo", "Andre Nickatina");


INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Midnight Request Line", "Skream");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Stimulation", "Disclosure");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Strobe - Radio Edit", "deadmau5");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Cahuenga", "Alex Metric");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Where's Your Head At", "Basement Jaxx");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Arcenciel", "Francys");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Illmerica", "Wolfgang Gartner");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Flat Beat", "Mr. Oizo");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "You", "Gold Panda");
INSERT INTO songs (title, artist, genre)
VALUES ("Dance-Electronic", "Since I Left You", "The Avalanches");


INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Wherever I Go", "OneRepublic");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Jumpsuit", "Twenty One Pilots");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Ivy", "Frank Ocean");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Redbone", "Childish Gambino");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Radioactive", "Imagine Dragons");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Where Ya At", "Future, Drake");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Do I Wanna Know?", "Arctic Monkeys");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Chocolate", "The 1975");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Dang! (feat. Anderson .Paak)", "Mac Miller, Anderson .Oaak");
INSERT INTO songs (title, artist, genre)
VALUES ("Pop", "Purple Lamborghini", "Skrillex, Rick Ross");


INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "Faint", "Linkin Park");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "I'm Shipping Up To Boston", "Dropkick Murphys");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "Warrior", "Disturbed");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "Did My Time", "Korn");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "Bulls On Parade", "Rage Against The Machine");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "Bad Religion", "Godsmack");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "Headstrong", "Trapt");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "Duality", "Slipknot");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "Paranoid", "Black Sabbath");
INSERT INTO songs (title, artist, genre)
VALUES ("Heavy rock", "For Whom The Bell Tolls", "Metallica");


INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Titanium", "David Guetta");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Born This Way", "Born This Way");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Yea Yea Yea", "A.M. SNiPer");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Let's Go", "Calvin Harris, Ne-Yo");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Waiting For Love", "Avicii");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Good Feeling", "Flo Rida");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Hello - Radio Edit", "Martin Solveig, Dragonette");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Never Really Over", "Katy Perry");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Happy", "Pharrell Williams");
INSERT INTO songs (title, artist, genre)
VALUES ("Upbeat Pop", "Break Free", "Ariana Grande");


INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Contact", "Big Thief");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "This land", "Gary Clark Jr.");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Black Snakes", "Mariee Sioux");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Away form the mire", "Billy Strings");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Lo/Hi", "The Black Keys");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Too bad", "Rival Sons");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Terracentric", "Rodrigo y Gabriela");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Ruiner", "Wilsen");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Witchsickness", "Johanna Warren");
INSERT INTO songs (title, artist, genre)
VALUES ("Folk & Acoustic", "Swing Shit", "Rozi Plan");


INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "Forever's Gone", "DRAMA");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "Deep Breath in the Sun", "Grady");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "projector", "EDEN");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "Taken", "MUNA");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "Guts", "Agustine");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "Nice Guys", "Easy Life");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "Words Ain't Enough", "Tessa Violet");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "Say", "Dutchkid");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "Only for a Moment", "Lola Marsh");
INSERT INTO songs (title, artist, genre)
VALUES ("Indie pop", "I Don't Miss You at All", "FINNEAS");


INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Last Days", "Lonov");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Kollera", "Dusty Kid");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Come together", "Eli Brown");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "19 calls", "Deborah de Luca");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Halloween", "Ministry");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Vibrancy", "UMEK");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Travellers", "Ran The Man");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Bubina", "Giant's Nest");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Slave To The Vibe", "Axel Boman");
INSERT INTO songs (title, artist, genre)
VALUES ("Electronic", "Alla Prima", "Voodulce");


INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "Judith", "A Perfect Circle");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "Hole In The Earth", "Deftones");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "Schism", "Tool");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "Where Do We go From Here", "Filter");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "The Outsider", "A Perfect Circle");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "The Hand That Feeds", "Nine Inch Nails");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "Make It With Chu", "Queens of the Stone Age");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "The Fight Song", "Marilyn Manson");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "Plug in Baby", "Muse");
INSERT INTO songs (title, artist, genre)
VALUES ("Rock", "Reptilia", "The Strokes");


INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "Memphis will be laid to waste", "Norma Jean");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "On The Top", "Jinjer");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "The Link", "Gojira");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "Demiurge", "Meshuggah");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "Love?", "Strapping Young Lad");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "Ghost of Perdition", "Opeth");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "Domination", "Pantera");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "Ratamahatta", "Sepultura");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "Chapel of Gouls", "Morbid Angel");
INSERT INTO songs (title, artist, genre)
VALUES ("Metal", "My Curse", "Killswitch Engage");


INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "Violence", "Grimes");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "Apollo", "Tourist");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "Down", "Swardy");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "Lira", "Night Verses");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "America Online", "The Midnight");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "Just", "Amtrac");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "Someone", "bored");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "I need Space", "M!int");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "l.i.", "Dusky");
INSERT INTO songs (title, artist, genre)
VALUES ("Mellow", "Snow Angel", "Robotaki");


INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Fallen", "Mya");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Full Moon", "Brandy");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Oh", "Ciara");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Motivation", "Kelly Rowland, Lil Wayne");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Get Ur Freak On", "Missy Elliott");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Foolish", "Ashanti");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Bad Girl", "Usher");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Like This", "Kelly Rowland");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Cry Me a River", "Justin Timberlake");
INSERT INTO songs (title, artist, genre)
VALUES ("R&B", "Blame It", "Jamie Foxx");


INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Angel", "Massive Attack");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Butterfly", " To Life");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Where Us He", "Celestial Alignment");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Eternal Return", "Skekz");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Moonlight Beach", "Sommer");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Gallery for a Blind", "Boztowm");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Innocuous Recluse", "Skekz");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Leukopenia", "Lisofv");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Shadowns of Ourselves", "Thievery Corporation");
INSERT INTO songs (title, artist, genre)
VALUES ("Trip-Hop", "Inside", "Moby");


INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Don't Look Back", "Telepopmusik");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Alone In Kyoto", "Air");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Six Days", "DJ Shadow");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Playground Love", "Air");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Teardrop", "Massive Attack");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Inside", "Moby");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "The Sea", "Morcheeba");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Breather", "Laika");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Regi Ismeros", "Neo");
INSERT INTO songs (title, artist, genre)
VALUES ("Chill", "Eyesdown", "Bonobo");

INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Let Down", "Easy Star All-Starts");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Handsworth Revolution", "Steel Pulse");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Words of My Mouth", "The Gatherers");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Take Five", "King Tubby");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Fu Man Chu", "Desmonds Dekker");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Blood & Fire", "Niney");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Swing Easy", "The Skatalites");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Marcus Garvey", "Burning Spear");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "I Love King Selassie", "Black Uhuru");
INSERT INTO songs (title, artist, genre)
VALUES ("Reggae", "Eastern Standard Time", "The Skatalites");


INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Institutionalized", "Suicidal Tendencies");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Waiting Room", "Fugazi");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Banned in D.C.", "Bad Brains");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Rise Above", "Black Flag");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Last Caress", "Misfits");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Holiday in Cambodia", "Dead Kennedys");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Bad Mouth", "Fugazi");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Disorders", "Joy Division");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "Suburban Home", "Descendents");
INSERT INTO songs (title, artist, genre)
VALUES ("Punk", "No Control", "Bad Religion");


INSERT INTO songs (title, artist, genre)
VALUES ("", "", "");

INSERT INTO songs (title, artist, genre)
VALUES ("TRNDSTTR","Black Coast", "Dance");

INSERT INTO songs (title, artist, genre)
VALUES ("Who's Next", "The Who", "Classic Rock");

INSERT INTO songs (title, artist, genre)
VALUES ("Yellow Submarine", "The Beatles", "Classic Rock");
