interface class Reserve {
  late String _doctor;
  late String _specialty;
  late String _data;
  bool _expanded = false;

  Reserve(String doctor, String specialty, String data) {
    _doctor = doctor;
    _specialty = specialty;
    _data = data;
  }

  String getDoctor() {
    return _doctor;
  }

  String getSpecialty() {
    return _specialty;
  }

  String getData() {
    return _data;
  }

  bool getExpansed() {
    return _expanded;
  }

  void expanse() {
    _expanded = true;
  }

  void reduce() {
    _expanded = false;
  }
}

