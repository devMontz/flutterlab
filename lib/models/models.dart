class DataModel {
  final String title;
  final String imageName;
  final String ubicacion;

  const DataModel(
    this.title,
    this.imageName,
    this.ubicacion,
  );
}

final List<DataModel> dataList = [
  const DataModel("Benito Juarez", "assets/images/ed_benito_j.jpg",
      "Laboratorios Lab1 ,Lab 2 5º Planta "),
  const DataModel("Francisco Morazan", "assets/images/ed_francisco_m.png",
      "Laboratorios FM 5 planta "),
  const DataModel("Simon Bolivar", "assets/images/ed_simon_b.png",
      "Laboratorios SB Tecnologias Avanzadas "),
  const DataModel("Anastacio Aquino", "assets/images/ed_anastacio_a.png",
      "Laboratorios SB Tecnologias Avanzadas "),
  const DataModel("Claudia Lars", "assets/images/ed_claudia_l.png",
      "Laboratorios SB Tecnologias Avanzadas "),
  const DataModel("Federico Garcia Lorca", "assets/images/ed_federico_g.png",
      "Laboratorios SB Tecnologias Avanzadas "),
  const DataModel("Gabriela Mistral", "assets/images/ed_gabriela_m.png",
      "Laboratorios SB Tecnologias Avanzadas "),
  const DataModel("Guiseppe Garibaldi", "assets/images/ed_giuseppe_g.png",
      "Laboratorios SB Tecnologias Avanzadas "),
  const DataModel("Jorge Luis Borjas", "assets/images/ed_jorge_l.png",
      "Laboratorios SB Tecnologias Avanzadas "),
  const DataModel("Jose Marti", "assets/images/ed_jose_m.png",
      "Laboratorios SB Tecnologias Avanzadas "),
  const DataModel("Tomas Jefferson", "assets/images/ed_thomas_j.png",
      "Laboratorios SB Tecnologias Avanzadas "),
];
