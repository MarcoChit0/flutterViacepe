import 'dart:convert';
class Viacepe{
  String? _cep, _logradouro, _complemento, _bairro, _localidade, _uf, _ibge, _gia, _ddd, _siafi;
  Viacepe(this._cep, this._logradouro, this._complemento, this._bairro, this._localidade, this._uf, this._ibge, this._gia, this._ddd, this._siafi);
  get cep => _cep;
  get logradouro => _logradouro;
  get complemento => _complemento;
  get bairro => _bairro;
  get localidade => _localidade;
  get uf => _uf;
  get ibge => _ibge;
  get gia => _gia;
  get ddd => _ddd;
  get siafi => _siafi;

  Viacepe.fromJson(source){
    var json_aux = json.decode(source);
    _cep=json_aux["cep"].toString();
    _logradouro=json_aux["logradouro"];
    _complemento=json_aux["complemento"];
    _bairro=json_aux["bairro"];
    _localidade=json_aux["localidade"];
    _uf=json_aux["uf"];
    _ibge=json_aux["ibge"];
    _gia=json_aux["gia"];
    _ddd=json_aux["ddd"];
    _siafi=json_aux["siafi"];
  }
}
