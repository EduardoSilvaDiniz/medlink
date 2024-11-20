class Reserve {
  late String _doctor;
  late String _especialidade;
  late String _data;
  bool _expanded = false;

  Reserve(String doctor,String especialidade, String data ){
    this._doctor = doctor;
    this._especialidade = especialidade;
    this._data = data;
  }
  String getDoctor(){
    return this._doctor;
  }
  
  String getEspecialidade(){
    return this._especialidade;
  }

  String getData(){
    return this._data;
  }
  
  bool getExpansed(){
    return this._expanded;
  }

  void Expanse(){
    this._expanded = true;
  }

  void Reduce(){
    this._expanded = false;
  }

}