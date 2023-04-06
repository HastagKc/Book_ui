class Book {
  String imgUrl;
  String title;
  String discription;
  String rating;
  String gernal;

  Book({
    required this.imgUrl,
    required this.title,
    required this.discription,
    required this.rating,
    required this.gernal,
  });
}

List<Book> booksList = [
  Book(
    imgUrl:
        'https://www.oberlo.com/media/1603897567-image39-1.jpg?fm=webp&w=1824&fit=max',
    title: '1984',
    discription:
        '1984 tells the futuristic story of a dystopian, totalitarian world where free will and love are forbidden. Although the year 1984 has long since passed, the prophecy of a society controlled by fear and lies is arguably more relevant now than ever.',
    rating: '*****',
    gernal: 'Futuristic story',
  ),
  Book(
    imgUrl:
        'https://www.oberlo.com/media/1603897585-image12-1.jpg?fm=webp&w=1824&fit=max',
    title: 'The Lord of the Rings',
    discription:
        'Tolkien’s fantasy epic is one of the top must-read books out there. Set in Middle Earth – a world full of hobbits, elves, orcs, goblins, and wizards – The Lord of the Rings will take you on an unbelievable adventure.',
    rating: '*****',
    gernal: 'Fantasy adventure',
  ),
  Book(
    imgUrl:
        'https://www.oberlo.com/media/1603897583-image17-1.jpg?fm=webp&w=1824&fit=max',
    title: 'The Kite Runner',
    discription:
        'The Kite Runner is a moving story of an unlikely friendship between a wealthy boy and the son of his father’s servant. Set in Afghanistan during a time of tragedy and destruction, this unforgettable novel will have you hooked from start to finish.',
    rating: '*****',
    gernal: 'Novel',
  ),
  Book(
    imgUrl:
        'https://www.oberlo.com/media/1603897577-image22-1.jpg?fm=webp&w=1824&fit=max',
    title: 'Harry Potter and the Philosopher’s Stone',
    discription:
        'This global bestseller took the world by storm. So, if you haven’t read J.K. Rowling’s Harry Potter, now may be the time. Join Harry Potter and his schoolmates as this must-read book transports you deep into a world of magic and monsters.',
    rating: '*****',
    gernal: 'Frictional Story',
  ),
  Book(
    imgUrl:
        'https://www.oberlo.com/media/1603897566-image41.jpg?fm=webp&w=1824&fit=max',
    title: 'Slaughterhouse-Five',
    discription:
        'Slaughterhouse-Five is arguably one of the greatest anti-war books ever written. This rich and amusing tale follows the life of Billy Pilgrim as he experiences World War II from a peculiar perspective.',
    rating: '*****',
    gernal: 'Anti-war Book',
  ),
];
