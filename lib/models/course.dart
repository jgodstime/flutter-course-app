class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;
  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourses() {
    return [
      Course("Luma Larani", "assets/icons/avatar01.png", "Plant",
          "assets/images/course01.png"),
      Course("The new moon", "assets/icons/avatar02.png", "Leaves",
          "assets/images/course02.png"),
    ];
  }
}
