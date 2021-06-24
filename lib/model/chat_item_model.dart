class ChatItemModel {
  String name;
  String image;
  String messageDate;
  String mostRecentMessage;

  ChatItemModel(
      this.name, this.image, this.messageDate, this.mostRecentMessage);
}

List<ChatItemModel> chatList = [
  ChatItemModel('Febryan', 'images/person1.png', '23/06/2021', 'Iyeee....'),
  ChatItemModel('Indra', 'images/person2.png', '23/06/2021', 'Sudah mi kah ?'),
  ChatItemModel('Jamil', 'images/person3.png', '23/06/2021',
      'Ada makanan ku kirim kesitu !'),
];
