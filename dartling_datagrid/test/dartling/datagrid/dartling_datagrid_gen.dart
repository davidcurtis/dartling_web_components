 
// test/dartling/datagrid/dartling_datagrid_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:dartling_datagrid/dartling_datagrid.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  var dartlingDomain = new Domain("Dartling"); 
 
  Model dartlingDatagridModel = 
      fromJsonToModel(dartlingDatagridModelJson, dartlingDomain, "Datagrid"); 
 
  repo.domains.add(dartlingDomain); 
 
  repo.gen("dartling_datagrid"); 
} 
 
initDartlingData(DartlingRepo dartlingRepo) { 
   var dartlingModels = 
       dartlingRepo.getDomainModels(DartlingRepo.dartlingDomainCode); 
 
   var dartlingDatagridEntries = 
       dartlingModels.getModelEntries(DartlingRepo.dartlingDatagridModelCode); 
   initDartlingDatagrid(dartlingDatagridEntries); 
   dartlingDatagridEntries.display(); 
   dartlingDatagridEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var dartlingRepo = new DartlingRepo(); 
  initDartlingData(dartlingRepo); 
} 
 
