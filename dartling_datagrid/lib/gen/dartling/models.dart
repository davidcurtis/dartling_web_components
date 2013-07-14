part of dartling_datagrid; 
 
// lib/gen/dartling/models.dart 
 
class DartlingModels extends DomainModels { 
 
  DartlingModels(Domain domain) : super(domain) { 
    add(fromJsonToDatagridEntries()); 
  } 
 
  DatagridEntries fromJsonToDatagridEntries() { 
    return new DatagridEntries(fromJsonToModel( 
      dartlingDatagridModelJson, 
      domain, 
      DartlingRepo.dartlingDatagridModelCode)); 
  } 
 
} 
 
