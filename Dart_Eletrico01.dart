class Cliente{
	int id;
	String nome;

	String get nomeComTratamento{
		return "Sr. ${nome}";
	}
}

void main (List<String> args)
{
//	var list = [1,2,3,4, 5, 8, 4];
	//print (list.length);
  //list.remove(3);
  //print(list[2]);
  var compEletricos = ["Resistor", "Capacitor", "Indutor"];
  print(compEletricos.length);
  // Remove O Elemento da Lista
  compEletricos.remove("Capacitor");
  // Imprime Elemento da Posicao 1, lembrando que como no PHP inicia na Posicao 0
  print(compEletricos[1]);
	print (compEletricos.length);
}