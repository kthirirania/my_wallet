class Transaction {
  String image;
  String name;
  String date;
  double amount;

  Transaction({this.image, this.name, this.date, this.amount});

  static List<Transaction> getTransactions() {
    return [
      new Transaction(
          image:
              "https://drive.google.com/uc?export=view&id=1xicySkjb5Kk3x5pLcgLnGBPyT9oce6kS",
          name: "Sofa",
          date: "2020-06-12 12:29",
          amount: 1.50),
      new Transaction(
          image:
              "https://drive.google.com/uc?export=view&id=14BxGUM0sc5c6K7d9exfABu_sHB98EOEg",
          name: "Twin Bed",
          date: "2020-06-12 12:25",
          amount: 180.50),
      new Transaction(
          image:
              "https://drive.google.com/uc?export=view&id=1BCvf5oivKaKQeKTotPbxnn1Evyzx3nMM",
          name: "Donut",
          date: "2020-06-12 08:30",
          amount: 2.5),
      new Transaction(
          image:
              "https://drive.google.com/uc?export=view&id=1kMTt074dvqcqglNgPP1DZj8VlE-YKrAT",
          name: "Croissant",
          date: "2020-06-12 09:04",
          amount: 1.50),
      new Transaction(
          image:
              "https://drive.google.com/uc?export=view&id=1UNLCE9WXm4QBftfCAKun5YIbyIS3LKSU",
          name: "Coffee",
          date: "2020-06-12 09:08",
          amount: 1.5),
      new Transaction(
          image:
              "https://drive.google.com/uc?export=view&id=1fHaAcwXgJQzsG8VVgtuwrTXcwaF-z2kY",
          name: "Air Conditionner",
          date: "2020-06-12 12:30",
          amount: 1080.0),
      new Transaction(
          image:
              "https://drive.google.com/uc?export=view&id=1hy2o-DTCnpZauw379DyPapersrNtDiBI",
          name: "Pizza",
          date: "2020-06-12 12:29",
          amount: 1.50),
    ];
  }
}
