 
// web/dartling/datagrid/dartling_datagrid_web.dart 
 
import "dart:html"; 
 
import "package:dartling/dartling.dart"; 
import "package:dartling_default_app/dartling_default_app.dart"; 
 
import "package:dartling_datagrid/dartling_datagrid.dart"; 
 
initDartlingData(DartlingRepo dartlingRepo) { 
   var dartlingModels = 
       dartlingRepo.getDomainModels(DartlingRepo.dartlingDomainCode); 
 
   var dartlingDatagridEntries = 
       dartlingModels.getModelEntries(DartlingRepo.dartlingDatagridModelCode); 
   initDartlingDatagrid(dartlingDatagridEntries); 
   dartlingDatagridEntries.display(); 
   dartlingDatagridEntries.displayJson(); 
} 
 
showDartlingData(DartlingRepo dartlingRepo) { 
   var mainView = new View(document, "main"); 
   mainView.repo = dartlingRepo; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var dartlingRepo = new DartlingRepo(); 
  initDartlingData(dartlingRepo); 
  showDartlingData(dartlingRepo); 
} 
 
