class UpdateModel {
  String title;
  String description;

  UpdateModel({
    required this.title,
    required this.description,
  });
}

List<UpdateModel> content = [
  UpdateModel(title: "Title", description: 'Description'),
  UpdateModel(title: "Title", description: 'Description'),
  UpdateModel(title: "Title", description: 'Description'),
];
