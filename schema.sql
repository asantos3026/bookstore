DROP TABLE IF EXISTS books;

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  image_url VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  published_at DATE NOT NULL,
  fiction BOOLEAN NOT NULL
);

DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  image_url VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL
);

DROP TABLE IF EXISTS genres;

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  image_url VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL
);

DROP TABLE IF EXISTS author_books;

CREATE TABLE author_books (
  book_id INTEGER NOT NULL,
  author_id INTEGER NOT NULL
);

DROP TABLE IF EXISTS book_genres;

CREATE TABLE book_genres (
  book_id INTEGER NOT NULL,
  genre_id INTEGER NOT NULL
);




-- --fixture data
INSERT INTO
  genres (image_url, name, description)
VALUES
  ('http://i.imgur.com/aSLBhlPt.jpg', 'Biography/autobiography', 'narrative of a persons life; a true story about a real person'),
  ('http://i.imgur.com/JiwEbrEt.jpg', 'Essay', 'a short literary composition that reflects the authors outlook or point.'),
  ('http://i.imgur.com/QN4EGRFt.jpg', 'Drama', 'stories composed in verse or prose, usually for theatrical performance, where conflicts and emotion are expressed through dialogue and action'),
  ('http://i.imgur.com/kpYRX4Zt.jpg', 'Journalism', 'reporting on news and current events'),
  ('http://i.imgur.com/lZW7Lpgt.jpg', 'Laboratory report', 'ra report of an experiment'),
  ('http://i.imgur.com/8AFmXpjt.jpg', 'Narrative nonfiction/personal narrative', 'factual information about a significant event presented in a format which tells a story'),
  ('http://i.imgur.com/tanCXpst.jpg', 'Reference book', 'such as a dictionary, thesaurus, encyclopedia, almanac, or atlas'),
  ('http://i.imgur.com/uwwJ6w5t.jpg', 'Self-help book', 'information with the intention of instructing readers on solving personal problems'),
  ('http://i.imgur.com/5yesQSTt.jpg', 'Speech', 'public address or discourse'),
  ('http://i.imgur.com/M2p6tv1t.jpg', 'Textbook', 'authoritative and detailed factual description of a topic.'),
  ('http://i.imgur.com/xwEu0E1t.jpg', 'Memoir', 'factual story that focuses on a significant relationship between the writer and a person, place, or object; reads like a novel'),
  ('http://i.imgur.com/mvx0qGbt.jpg', 'Classic', 'fiction that has become part of an accepted literary canon, widely taught in schools'),
  ('http://i.imgur.com/tZTRY5Dt.jpg', 'Comic/Graphic novel', 'scripted fiction told visually in artist drawn pictures, usually in panels and speech bubbles'),
  ('http://i.imgur.com/A9S07Ixt.jpg', 'Crime/Detective', 'fiction about a committed crime, how the criminal gets caught, and the repercussions of the crime'),
  ('http://i.imgur.com/rpw91UNt.jpg', 'Economics', 'deal with the issues related to the production, consumption, and transfer of wealth in a country or the world. The books in this genre offer insight and opinion on the issues and struggles that plague and unbalance the economics of goods and money. There are two categories within economics itself: Microeconomics and Macroeconomics.
Microeconomics deals with and examines the behavior of the economy, individual agents, markets, interactions, and the outcome of interactions.
Macroeconomics analyzes the entirety of an economy, as in the production, consumption, savings, investments, and the issues affecting it (labor, capital, and land).
The economic genre encompasses everything that can and does affect economics in some way.'),
  ('http://i.imgur.com/DEwaKutt.jpg', 'Fable', 'narration demonstrating a useful truth, especially in which animals speak as humans; legendary, supernatural tale'),
  ('http://i.imgur.com/jINYGOht.jpg', 'Fairy Tale', 'story about fairies or other magical creatures'),
  ('http://i.imgur.com/lAMAqE9t.jpg', 'Fanfiction', 'fiction written by a fan of, and featuring characters from, a particular TV series, movie, etc.'),
  ('http://i.imgur.com/VKv233tt.jpg', 'Folklore', 'the songs, stories, myths, and proverbs of a people or "folk" as handed down by word of mouth'),
  ('http://i.imgur.com/9T4eBbrt.jpg', 'Fantasy', 'fiction with strange or otherworldly settings or characters; fiction which invites suspension of reality'),
  ('http://i.imgur.com/xfYV9L0t.jpg', 'Historical fiction', 'story with fictional characters and events in a historical setting'),
  ('http://i.imgur.com/ieDBAHut.jpg', 'Horror', 'fiction in which events evoke a feeling of dread and sometimes fear in both the characters and the reader'),
  ('http://i.imgur.com/s2thkbTt.jpg', 'Humour', 'Usually a fiction full of fun, fancy, and excitement, meant to entertain and sometimes cause intended laughter; but can be contained in all genres'),
  ('http://i.imgur.com/b0AigULt.jpg', 'Legend', 'story, sometimes of a national or folk hero, that has a basis in fact but also includes imaginative material'),
  ('http://i.imgur.com/O9iJcoTt.jpg', 'Magical realism', 'story where magical or unreal elements play a natural part in an otherwise realistic environment'),
  ('http://i.imgur.com/b1R7ASPt.jpg', 'Metafiction', 'also known as romantic irony in the context of Romantic works of literature, uses self-reference to draw attention to itself as a work of art, while exposing the "truth" of a story'),
  ('http://i.imgur.com/qnmMuLtt.jpg', 'Mystery', 'this is fiction dealing with the solution of a crime or the unraveling of secrets'),
  ('http://i.imgur.com/uLrsXV1t.jpg', 'Mythology', 'legend or traditional narrative, often based in part on historical events, that reveals human behavior and natural phenomena by its symbolism; often pertaining to the actions of the gods'),
  ('http://i.imgur.com/uLrsXV1t.jpg', 'Mythopoeia', 'this is fiction where characters from religious mythology, traditional myths, folklores and history are recast into a re-imagined realm created by the author.'),
  ('http://i.imgur.com/sd7Q1Mgt.jpg', 'Short story', 'fiction of such brevity that it supports no subplots'),
  ('http://i.imgur.com/ZgGpBBNt.jpg', 'Sci-Fi', 'story based on impact of actual, imagined, or potential science, usually set in the future or on other planets'),
  ('http://i.imgur.com/ew9At4Xt.jpg', 'Suspense/Thriller', 'fiction about harm about to befall a person or group and the attempts made to evade the harm'),
  ('http://i.imgur.com/A8oG9Rnt.jpg', 'Western', 'set in the American Old West frontier and typically set in the late eighteenth to late nineteenth century');

INSERT INTO
  books (image_url, title, description, published_at, fiction)
VALUES
  ('http://i.imgur.com/oyQPrQKt.gif', 'Wealth of Nations', 'The Wealth of Nations is a clearly written account of economics at the dawn of the Industrial Revolution. The book was a landmark work in the history and economics as it was comprehensive and an accurate characterization of the economic mechanisms at work in modern economics. Smith believed in a Meritocracy. Smith emphasized the advancement that one could take based on their will to better themselves. This is simply one of the most important books ever written on the subject of economics.', now(), false),
  ('http://i.imgur.com/4oRxld2t.jpg', 'White Fang', 'Two men are out in the wild of the north. Their dogs disappear as they are lured by a she-wolf and eaten by the pack. They only have three bullets left and Bill, one of the men, uses them to try to save one of their dogs; he misses and is eaten with the dog. Only Henry and two dogs are left; he makes a fire, trying to drive away the wolves. They draw in close, and he is almost eaten, saved only by a company of men who were traveling nearby.', now(), true),
  ('http://i.imgur.com/4rEwlYwt.jpg', 'Snow Crash', 'In reality, Hiro Protagonist delivers pizza for Uncle Enzo’s CosoNostra Pizza Inc., but in the Metaverse he’s a warrior prince. Plunging headlong into the enigma of a new computer virus that’s striking down hackers everywhere, he races along the neon-lit streets on a search-and-destroy mission for the shadowy virtual villain threatening to bring about infocalypse. Snow Crash is a mind-altering romp through a future America so bizarre, so outrageous…you’ll recognize it immediately.', now(), true),
  ('http://i.imgur.com/APTy0mLt.jpg', 'Cryptonomicon', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui sint, cumque cupiditate corporis ab voluptatum earum magni. Qui ut hic quod nobis placeat cupiditate assumenda itaque enim unde quas. Iste.', now(), true),
  ('http://i.imgur.com/w2q0wM1t.jpg', 'Anathem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui sint, cumque cupiditate corporis ab voluptatum earum magni. Qui ut hic quod nobis placeat cupiditate assumenda itaque enim unde quas. Iste.', now(), true);







INSERT INTO
  authors (image_url, name, description)
VALUES
  ('http://i.imgur.com/hmkzBBwt.jpg', 'Adam Smith', 'He was an economist and philosopher who wrote what is considered the "bible of capitalism," The Wealth of Nations, in which he details the first system of political economy.'),
  ('http://i.imgur.com/ktNNx1It.jpg', 'Neal Stephenson', 'He is an American writer and game designer known for his works of speculative fiction. His novels have been variously categorized as science fiction, historical fiction, cyberpunk, and "postcyberpunk".'),
  ('http://i.imgur.com/iU1AQ8xt.jpg' ,'Jack London', 'Jack London was born John Griffith Chaney on January 12, 1876, in San Francisco, California. After working in the Klondike, London returned home and began publishing stories. His novels, including The Call of the Wild, White Fang and Martin Eden, placed London among the most popular American authors of his time. London, who was also a journalist and an outspoken socialist, died in 1916.');


INSERT INTO
  author_books
SELECT
  books.id, authors.id
FROM
  books
CROSS JOIN
  authors
WHERE
  books.title = 'Wealth of Nations'
AND
  authors.name = 'Adam Smith';


INSERT INTO
  author_books
SELECT
  books.id, authors.id
FROM
  books
CROSS JOIN
  authors
WHERE
  books.title = 'White Fang'
AND
  authors.name = 'Jack London';


INSERT INTO
  author_books
SELECT
  books.id, authors.id
FROM
  books
CROSS JOIN
  authors
WHERE
  books.title = 'Snow Crash'
AND
  authors.name = 'Neal Stephenson';


INSERT INTO
  author_books
SELECT
  books.id, authors.id
FROM
  books
CROSS JOIN
  authors
WHERE
  books.title = 'Cryptonomicon'
AND
  authors.name = 'Neal Stephenson';


INSERT INTO
  author_books
SELECT
  books.id, authors.id
FROM
  books
CROSS JOIN
  authors
WHERE
  books.title = 'Anathem'
AND
  authors.name = 'Neal Stephenson';



INSERT INTO
  book_genres
SELECT
  books.id, genres.id
FROM
  books
CROSS JOIN
  genres
WHERE
  books.title = 'Wealth of Nations'
AND
  genres.name = 'Economics';


INSERT INTO
  book_genres
SELECT
  books.id, genres.id
FROM
  books
CROSS JOIN
  genres
WHERE
  books.title = 'White Fang'
AND
  genres.name = 'Fantasy';



INSERT INTO
  book_genres
SELECT
  books.id, genres.id
FROM
  books
CROSS JOIN
  genres
WHERE
  books.title = 'Snow Crash'
AND
  genres.name = 'Sci-Fi';



INSERT INTO
  book_genres
SELECT
  books.id, genres.id
FROM
  books
CROSS JOIN
  genres
WHERE
  books.title = 'Cryptonomicon'
AND
  genres.name = 'Horror';


INSERT INTO
  book_genres
SELECT
  books.id, genres.id
FROM
  books
CROSS JOIN
  genres
WHERE
  books.title = 'Cryptonomicon'
AND
  genres.name = 'Sci-Fi';



INSERT INTO
  book_genres
SELECT
  books.id, genres.id
FROM
  books
CROSS JOIN
  genres
WHERE
  books.title = 'Anathem'
AND
  genres.name = 'Fantasy';










-- QUERIES

-- give me all the books for a specific author
SELECT
  *
FROM
  books
JOIN
  author_books
ON
  books.id = author_books.book_id
JOIN
  authors
ON
  authors.id = author_books.author_id
WHERE
  authors.name = 'Adam Smith'
;

-- give me all the books with a title like X

SELECT
  *
FROM
  books
WHERE
  title LIKE '%ite%';




-- give me all the books for a specific genre
SELECT
  books.*
FROM
  books
JOIN
  book_genres
ON
  books.id = book_genres.book_id
JOIN
  genres
ON
  genres.id = book_genres.genre_id
WHERE
  genres.name IN ('Economics', 'Horror')
;

-- give me all the books for a specific genre
SELECT
  books.*
FROM
  books
JOIN
  book_genres
ON
  books.id = book_genres.book_id
JOIN
  genres
ON
  genres.id = book_genres.genre_id
JOIN
  author_books
ON
  books.id = author_books.book_id
JOIN
  authors
ON
  authors.id = author_books.author_id
WHERE
  genres.name IN ('Economics', 'Sci-Fi')
AND
  authors.name LIKE '%Adam%'
;





-- give me all the books where the author name OR book title
-- OR genre name is LIKE x
SELECT
  books.id,
  books.title,
  authors.name,
  genres.name
FROM
  books
JOIN
  author_books
ON
  books.id = author_books.book_id
JOIN
  authors
ON
  authors.id = author_books.author_id
JOIN
  book_genres
ON
  books.id = book_genres.book_id
JOIN
  genres
ON
  genres.id = book_genres.genre_id
WHERE
  LOWER(books.title) LIKE '%a%'
OR
  LOWER(authors.name) LIKE '%a%'
OR
  LOWER(genres.name) LIKE '%a%'
