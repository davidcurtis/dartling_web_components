import 'package:dartling_datagrid/dartling_datagrid.dart';
import 'package:dartling/dartling.dart';
import 'dart:html';
import 'dart:async';

Members members;

void main() {

  var davidCurtis = new Member(memberConcept);
  davidCurtis.code = 'davidCurtis';
  davidCurtis.firstname = 'Patrick';
  davidCurtis.address ='1308 Noirefontaine';
  davidCurtis.lastname = 'Lemieux';
  
  mmembers.add(davidCurtis);
  
  var jeanTigana = new Member(memberConcept);
  jeanTigana.code = 'jeanTigana';
  jeanTigana.firstname = 'Jean';
  jeanTigana.address = '145 Rue Dorval';
  jeanTigana.lastname ='Tiguana';
  mmembers.add(jeanTigana);
  
  var rafikBenmoussa = new Member(memberConcept);
  rafikBenmoussa.firstname = 'Rafik';
  rafikBenmoussa.lastname = 'Benmoussa';
  rafikBenmoussa.address ='785 Av. Monparnasse';
  mmembers.add(rafikBenmoussa);
  
  var timurRidjanovic = new Member(memberConcept);
  timurRidjanovic.firstname = 'Timur';
  timurRidjanovic.lastname = 'Ridjanovic';
  timurRidjanovic.address ='74 Rue Royale';
  mmembers.add(timurRidjanovic);
  
  var dzenanRidjanovic = new Member(memberConcept);
  dzenanRidjanovic.firstname = 'Dzenan';
  dzenanRidjanovic.lastname = 'Ridjanovic';
  dzenanRidjanovic.address ='78 Av. Sainte Foy';
  mmembers.add(dzenanRidjanovic);
  
  var lamineBazzi = new Member(memberConcept);
  lamineBazzi.firstname = 'Lamine';
  lamineBazzi.lastname = 'Baazi';
  lamineBazzi.address = '78 Lanaudière';
  mmembers.add(lamineBazzi);
 

}