import 'dart:html';
import 'dart:convert';

class Conta {
  int id;
  int agencia;
  int conta;
  String name;
  int balance;
}

void main(List<String> args) async {
  var result =
      await HttpRequest.getString("http://localhost:3090/api/accounts");
  List<Conta> contas = new List();
  var contasJson = jsonDecode(result);
  var balancototal=0;
 dynamic agencia47=0;
  for (int i = 0; i < contasJson.length; i++) {
    var conta = new Conta();
    conta.id = contasJson[i]["id"];
    conta.agencia = contasJson[i]["agencia"];
    conta.name = contasJson[i]["name"];
    conta.balance = contasJson[i]["balance"];
    contas.add(conta);
    balancototal=balancototal+conta.balance;
    



  
  //var contasAgencia47 = contas.where((item)=>item.agencia=47).toList();
/**var contasAgencia33 = contas.where((item)=>item.agencia==33).toList();
var nomesAgencia33 = contasAgencia33.map((conta)=>conta.name);
nomesAgencia33.forEach((name)=>print(name));*/
  //var contasAgencia33 = contas.where((item)=>item.agencia==33).toList();

  
  
  // -----------------
  //ORDENAR CONTAS
  //contasAgencia33.sort((conta1,conta2)=> conta1.balance -conta2.balance);
  // EXIBIR CONTAS ORDENADAS POR SALDO
  // MAP (MAPEIA CONTAS)
  /*var balanceAgencia33 = contasAgencia33.map((conta)=>conta.balance);
  balanceAgencia33.forEach((balance)=>print(balance));*/
  // ------------------

/*  for(int j=0; j<contasAgencia33.length; j++)
  {
    print(contasAgencia33[j].agencia);
  }*/

  // Verificar se é conta da Agencia 33
  //print(contasAgencia33.every((conta)=>conta.agencia==33));

  //firstWhere (Primeira Ocorrencia Onde)
  /**var primeiraConta = contas.firstWhere((item)=>item.agencia==33);
  print(primeiraConta.name);
  print(primeiraConta.balance);*/

  //Where
  //Where ( Onde) (Pegar 3 Primeiros Elementos)
  /*var contasAgencia33 = contas.where((item) => item.agencia == 33).toList();

  contasAgencia33
      .skip(2)
      .take(5)
      .toList()
      .forEach((conta) => print(conta.name));
  /**print(contasAgencia33.take(3).toList());*/*/
}
