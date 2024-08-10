class Author {
  final int id;
  final String name;
  final String? bio;

  Author({
    required this.id,
    required this.name,
    this.bio,
  });
}

List<Author> authorsMocks = [
  Author(
    id: 1,
    name: 'F. Scott Fitzgerald',
    bio:
        'Francis Scott Key Fitzgerald (September 24, 1896 – December 21, 1940) was an American novelist, essayist, screenwriter, and short-story writer. He was best known for his novels depicting the flamboyance and excess of the Jazz Age—a term he popularized. During his lifetime, he published four novels, four collections of short stories, and 164 short stories. Although he temporarily achieved popular success and fortune in the 1920s, Fitzgerald only received wide critical and popular acclaim after his death. He is widely regarded as one of the greatest American writers of the 20th century.',
  ),
  Author(
    id: 2,
    name: 'Harper Lee',
    bio:
        'Nelle Harper Lee (April 28, 1926 – February 19, 2016) was an American novelist best known for her 1960 novel To Kill a Mockingbird. It won the 1961 Pulitzer Prize and has become a classic of modern American literature. Lee published only two books, yet she was awarded the Presidential Medal of Freedom in 2007 for her contribution to literature. She also received numerous honorary degrees, though she declined to speak on those occasions. Lee assisted her childhood friend Truman Capote in his research for the book In Cold Blood (1966).',
  ),
  Author(
    id: 3,
    name: 'George Orwell',
    bio:
        'Eric Arthur Blair (25 June 1903 – 21 January 1950), known by his pen name George Orwell, was an English novelist, essayist, journalist and critic. His work is characterised by lucid prose, biting social criticism, opposition to totalitarianism, and outspoken support of democratic socialism. As a writer, Orwell produced literary criticism, fiction, and poetry, and was best known for the allegorical novella Animal Farm (1945) and the dystopian novel Nineteen Eighty-Four (1949). His non-fiction works, including The Road to Wigan Pier (1937), documenting his experience of working-class life in the north of England, and Homage to Catalonia (1938), an account of his experiences soldiering for the Republican faction of the Spanish Civil War (1936–1939), are as critically respected as his essays on politics and literature.',
  ),
  Author(
    id: 4,
    name: 'J. D. Salinger',
    bio:
        'Jerome David Salinger (January 1, 1919 – January 27, 2010) was an American writer best known for his 1951 novel The Catcher in the Rye. Before its publication, Salinger published several short stories in Story magazine and served in World War II. In 1948, his critically acclaimed story "A Perfect Day for Bananafish" appeared in The New Yorker, which published much of his later work. In 1951, his novel The Catcher in the Rye was an immediate popular success. His depiction of adolescent alienation and loss of innocence in the protagonist Holden Caulfield was influential, especially among adolescent readers. The novel remains widely read and controversial, selling around 250,000 copies a year.',
  ),
  Author(
    id: 5,
    name: 'William Golding',
    bio:
        'Sir William Gerald Golding, CBE (19 September 1911 – 19 June 1993) was a British novelist, playwright, and poet. Best known for his novel Lord of the Flies, he won a Nobel Prize in Literature and was awarded the Booker Prize for fiction in 1980 for his novel Rites of Passage, the first book in what became his sea trilogy, To the Ends of the Earth. Golding was knighted in 1988.',
  ),
  Author(
    id: 6,
    name: 'John Steinbeck',
    bio:
        'John Ernst Steinbeck Jr. (February 27, 1902 – December 20, 1968) was an American author and the 1962 Nobel Prize in Literature winner "for his realistic and imaginative writings, combining as they do sympathetic humour and keen social perception." He has been called "a giant of American letters," and many of his works are considered classics of Western literature. During his writing career, he authored 27 books, including 16 novels, six non-fiction books, and two collections of short stories. He is widely known for the comic novels Tortilla Flat (1935) and Cannery Row (1945), the multi-generation epic East of Eden (1952), and the novellas Of Mice',
  ),
];
