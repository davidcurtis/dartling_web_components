part of dartling_datagrid; 
 
// lib/gen/dartling/repository.dart 
 
class DartlingRepo extends Repo { 
 
  static final dartlingDomainCode = "Dartling"; 
  static final dartlingDatagridModelCode = "Datagrid"; 
 
  DartlingRepo([String code="DartlingRepo"]) : super(code) { 
    _initDartlingDomain(); 
  } 
 
  _initDartlingDomain() { 
    var dartlingDomain = new Domain(dartlingDomainCode); 
    domains.add(dartlingDomain); 
    add(new DartlingModels(dartlingDomain)); 
  } 
 
} 
 
