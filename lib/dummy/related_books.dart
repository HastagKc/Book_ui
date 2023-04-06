class RelatedBook {
  String rImgUrl;
  String rTitle;
  String rSubtitle;

  RelatedBook({
    required this.rImgUrl,
    required this.rTitle,
    required this.rSubtitle,
  });
}

List<RelatedBook> relatedBookList = [
  RelatedBook(
    rImgUrl:
        'https://www.oberlo.com/media/1603897566-image40-1.jpg?fm=webp&w=1824&fit=max',
    rTitle: 'The Book Thief',
    rSubtitle: 'Classic',
  ),
  RelatedBook(
    rImgUrl:
        'https://www.oberlo.com/media/1603897575-image29.jpg?fm=webp&w=1824&fit=max',
    rTitle: 'Wuthering Heights',
    rSubtitle: 'Struggle with love',
  ),
  RelatedBook(
    rImgUrl:
        'https://www.oberlo.com/media/1603897573-image35.jpg?fm=webp&w=1824&fit=max',
    rTitle: 'The Catcher in the Rye',
    rSubtitle: 'Classic',
  ),
  RelatedBook(
    rImgUrl:
        'https://www.oberlo.com/media/1603897573-image38-1.jpg?fm=webp&w=1824&fit=max',
    rTitle: 'Jane Eyre',
    rSubtitle: 'Social',
  ),
  RelatedBook(
    rImgUrl:
        'https://www.oberlo.com/media/1603897576-image25-1.jpg?fm=webp&w=1824&fit=max',
    rTitle: 'Animal Farm',
    rSubtitle: 'World of justice',
  ),
  RelatedBook(
    rImgUrl:
        'https://www.oberlo.com/media/1603897578-image19-2.jpg?fm=webp&w=1824&fit=max',
    rTitle: 'Fahrenheit 451',
    rSubtitle: 'Classic',
  ),
];
