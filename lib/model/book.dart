class Book {
  final int id;
  final String title;
  final String author;
  final String description;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
  });
}

List<Book> booksMocks = [
  Book(
    id: 1,
    title: 'The Great Gatsby',
    author: 'F. Scott Fitzgerald',
    description:
        'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway\'s interactions with mysterious millionaire Jay Gatsby and Gatsby\'s obsession to reunite with his former lover, Daisy Buchanan.',
  ),
  Book(
    id: 2,
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    description:
        'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools. To Kill a Mockingbird has become a classic of modern American literature, winning the Pulitzer Prize.',
  ),
  Book(
    id: 3,
    title: '1984',
    author: 'George Orwell',
    description:
        '1984 is a dystopian social science fiction novel by English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell\'s ninth and final book completed in his lifetime. Thematically, Nineteen Eighty-Four centres on the consequences of totalitarianism, mass surveillance, and repressive regimentation of persons and behaviours within society.',
  ),
  Book(
    id: 4,
    title: 'The Catcher in the Rye',
    author: 'J. D. Salinger',
    description:
        'The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adults but is often read by adolescents for its themes of angst, alienation, and as a critique on superficiality in society.',
  ),
  Book(
    id: 5,
    title: 'Lord of the Flies',
    author: 'William Golding',
    description:
        'Lord of the Flies is a 1954 novel by Nobel Prize-winning British author William Golding. The book focuses on a group of British',
  ),
  Book(
    id: 6,
    title: 'The Grapes of Wrath',
    author: 'John Steinbeck',
    description:
        'The Grapes of Wrath is an American realist novel written by John Steinbeck and published in 1939. The book won the National Book Award and Pulitzer Prize for fiction, and it was cited prominently when Steinbeck was awarded the Nobel Prize in 1962.',
  ),
];
