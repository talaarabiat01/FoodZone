class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Order your food',
      image: 'assets/images/bord1.png',
      discription: 'now you can order your food any time right your mobile.'
  ),
  UnbordingContent(
      title: 'Live Tracking',
      image: 'assets/images/bord2.png',
      discription: 'Real time tracking of your food on the app once you placed the order'
  ),
  UnbordingContent(
      title: 'Quick Delivery',
      image: 'assets/images/bord3.png',
      discription: 'Order your favorite meals will be immediately deliver'
  )
];