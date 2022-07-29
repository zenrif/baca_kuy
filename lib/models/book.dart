class Book {
  String name;
  String image;
  String topic;
  String author;
  String synopsis;
  List<String> keypoints;

  Book({
    required this.name,
    required this.image,
    required this.topic,
    required this.author,
    required this.synopsis,
    required this.keypoints,
  });
}

var bookList = [
  Book(
    name: 'Lamp of Brightnes Real World',
    image: '11.png',
    topic: 'Growth Business',
    synopsis:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquam dolor et nisl convallis suscipit.',
    author: 'John Doe',
    keypoints: [
      'The Lorem Ipsum passage',
      'The Dolor Sit Amet passage',
      'The Consectetur Adipiscing Elit',
      'The Mauris Aliquam Dolor Et Nisl',
    ],
  ),
  Book(
    name: 'Art of Gathering Do Meeting',
    image: '8.png',
    topic: 'My Self Improvement',
    synopsis:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at eleifend lacus, non rutrum mauris.',
    author: 'El Gorn',
    keypoints: [
      'The Hack The Tools',
      'The Powered Storm',
      'Do Interview Trip: Matter or Not',
    ],
  ),
  Book(
    name: 'The Power of Hooked',
    image: '7.png',
    topic: 'Growth Business',
    synopsis:
        'Why do some products capture wide spread attention while others what makes us engage with people',
    author: 'Nir Eyal',
    keypoints: [
      'Medium chart of team pro',
      'Perdalam notifications',
      'Membuat funnel marketing',
    ],
  ),
  Book(
    name: 'Tiger In The Garden For Eating',
    image: '10.png',
    topic: 'Children Story',
    synopsis:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum libero ex, eu vehicula felis bibendum quis.',
    author: 'Nay Shee',
    keypoints: [
      'The Entrepreneurial Myth Now',
      'Raport Says Never Into Dark',
      'Well Look How',
      'The End of Miserable',
      'Welcoming Digital',
    ],
  ),
  Book(
    name: 'Sapiens : A Brief History of Humankind',
    image: 'sapiens.png',
    topic: 'Non-Fiction Story',
    synopsis:
        'Harari\'s work situates its account of human history within a framework: he sees the natural sciences as setting the limits of possibility for human activity and sees the social sciences as shaping what happens within those bounds. The academic discipline of history is the account of cultural change.',
    author: 'Yuval Noah Harari',
    keypoints: [
      'The Cognitive Revolution',
      'The Agricultural Revolution',
      'The unification of humankind',
      'The Scientific Revolution'
    ],
  ),
];
