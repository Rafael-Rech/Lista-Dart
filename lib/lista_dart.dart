/* Exercício 1 */

import 'dart:io';

void verificaSoma(double a, double b, double c) => print((a + b < c)? "A soma de $a e $b é menor que $c" : "A soma de $a e $b não é menor que $c");

/* Exercício 2*/

void parOuImpar(int x) => print((x == (x>>1)<<1)? "Par" : "Ímpar");

/* Exercício 3*/

void operadores(){
  String? input = stdin.readLineSync();
  if(input == null) return;
  int a = int.parse(input);
  input = stdin.readLineSync();
  if(input == null) return;
  int b = int.parse(input);
  int c = (a == b)? a + b : a * b;
  print(c);
}

/* Exercício 4*/

void ordemDecrescenteTresValores(int a, int b, int c) => print((a > b && a > c)? "$a, ${(b > c)? "$b, $c" : "$c, $b"}" : (b > c)? "$b, ${(a > c)? "$a, $c" : "$c, $a"}" : "$c, ${(a > b)? "$a, $b" : "$b, $a"}");

/* Exercício 5*/

int somaImparesMultiplosDeTres(){
  int soma = 0;
  for(int i = 1; i < 500; i++){
    soma += (i % 3 == 0 && i != (i>>1)<<1)? i : 0;
  }
  return soma;
}

/* Exercício 6*/

void imparesEntreCemEDuzentos(){
  for(int i = 101; i < 200; i+=2){
    print(i);
  }
}

/* Exercício 7*/

void tabuada(int n){
  for(int i = 0; i <= 10; i++){
    stdout.write((i == 10)? "$i x $n = ${i * n}.\n" : "$i x $n = ${i * n}, ");
  }
}

/* Exercício 8*/

void fatorial(int a){
  stdout.write("$a! = ");
  int fat = 1;
  for(int i = a; i > 0; i--){
    stdout.write((i == 1)? "$i" : "$i x ");
    fat *= i;
  }
  print(" = $fat");
}