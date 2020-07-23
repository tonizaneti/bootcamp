import 'dart:html';
import 'dart:convert';
class Conta
{
  int id;
  int agencia;
  int conta;
  String name;
  int balance;
}
void main(List<String> args) async{
   var result = await HttpRequest.getString("http://localhost:3090/api/accounts");
List<Conta> contas = new List();
  var contasJson = jsonDecode(result);
  for(int i=0; i<contasJson.length; i++){
    var conta = new Conta();
    conta.id = contasJson[i]['id'];
    conta.agencia = contasJson[i]['agencia'];
    conta.name = contasJson[i]['name'];
    conta.balance = contasJson[i]['balance'];
    contas.add(conta);
  }
  print (contas[0].balance);
  var contasAgencia33= contas.where((item)=>item.agencia==33).toList();
  for(int j=0; j<contasAgencia33.length; j++)
  {
    print(contasAgencia33[j].balance);
  }
}