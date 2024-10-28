title catalog
@REM 1.create
@REM 2.export
@REM 3.upgrade


rem C:\"Program Files\Dassault Systemes"\B27\win_b64\code\bin\CATfctEditorAssistant.exe
rem C:\"Program Files\Dassault Systemes"\B426\win_b64\code\bin\CATfctEditorAssistant.exe

cd /d %~dp0

:optionB
CATfctEditorAssistant -create-new-catalog -catalog-name CATAECComponentsCatalog.CATfct -with-client-id CATAECComponentsCatalog -into-directory  CNext\resources\graphic\
CATfctEditorAssistant -describe-as-osm -catalog-name CATAECComponentsCatalog.CATfct -with-client-id CATAECComponentsCatalog -as aa.osm -into-directory CNext\resources\featurecatalog\
CATfctEditorAssistant -update-catalog -catalog-name CATAECComponentsCatalog.CATfct -with-client-id CATAECComponentsCatalog -with-osm  CNext\resources\featurecatalog\CATAECComponentsCatalog.osm  -into-directory CNext\resources\graphic\


:optionB
"C:\Program Files\Dassault Systemes\B27\win_b64\code\bin\CATfctEditorAssistant.exe" -create-new-catalog -catalog-name CATAECArcCatlog.CATfct  -with-client-id CATAECArcCatlog -into-directory  CNext\resources\graphic\
"C:\Program Files\Dassault Systemes\B27\win_b64\code\bin\CATfctEditorAssistant.exe" -describe-as-osm -catalog-name CATAECArcCatlog.CATfct -with-client-id CATAECArcCatlog -as aa.osm -into-directory CNext\resources\featurecatalog\
"C:\Program Files\Dassault Systemes\B27\win_b64\code\bin\CATfctEditorAssistant.exe" -update-catalog -catalog-name CATAECArcCatlog.CATfct -with-client-id CATAECArcCatlog -with-osm  CNext\resources\featurecatalog\CATAECArcCatlog.osm  -into-directory CNext\resources\featurecatalog\


:HELP

@REM CATfctEditorAssistant -create-new-catalog -catalog-name CATAECComponentsCatalog.CATfct -with-client-id CATAECComponentsCatalog -into-directory  CNext\resources\graphic\
@REM CATfctEditorAssistant -describe-as-osm -catalog-name CATAECComponentsCatalog.CATfct -with-client-id CATAECComponentsCatalog -as aa.osm -into-directory CNext\resources\featurecatalog\
@REM CATfctEditorAssistant -update-catalog -catalog-name CATAECComponentsCatalog.CATfct -with-client-id CATAECComponentsCatalog -with-osm CNext\resources\featurecatalog\aa.osm  -into-directory CNext\resources\graphic\



@REM PS Z:\tmp> C:\"Program Files\Dassault Systemes"\B426\win_b64\code\bin\CATfctEditorAssistant.exe -help
@REM [I] OSM-CVT:
@REM Usage:

@REM CATfctEditorAssistant -create-new-catalog -catalog-name <name_of_catalog> -with-client-id <id> [-author <name>] [-comment <comment>] [-using-template <template>] [-into-directory <output_path>]
@REM CATfctEditorAssistant -update-catalog -catalog-name <name_of_catalog> -with-client-id <id> [-with-osm <path_of_osm>] [-author <name>] [-comment <comment>] [-into-directory <output_path>]
@REM CATfctEditorAssistant -describe-as-osm -catalog-name <name_of_catalog> -with-client-id <id> [-in-version <level>] -as <name_of_osm> [-into-directory <output_path>]
@REM CATfctEditorAssistant -simulate-catalog-update -catalog-name <name_of_catalog> -with-client-id <id> -in-version <level> [-with-osm <path_of_osm>] [-into-directory <output_path>]
@REM CATfctEditorAssistant -help

@REM where <name_of_xxx> stands for a filename with its extension, but not a path
@REM  and  <path_of_xxx> stands for a file path.

@REM Details:

@REM    -create-new-catalog : create a new empty catalog.

@REM      -catalog-name    (mandatory)  specify the name of the new catalog to create.
@REM      -with-client-id  (mandatory)  set the client identification key.
@REM      -author                       specify author's name in history.
@REM      -comment                      add a comment to history.
@REM      -using-template               use another template (default is standard template).
@REM      -into-directory               indicate the output directory, where the output files are stored.

@REM    -update-catalog : update an existing catalog with an osm file.

@REM      -catalog-name    (mandatory)  specify the name of the catalog to update.
@REM      -with-client-id  (mandatory)  give client identification key.
@REM      -with-osm                     specify the osm file's path used for update.
@REM      -comment                      add a comment to history.
@REM      -into-directory               indicate the output directory, where the output catalog is stored.

@REM    -describe-as-osm : describe a catalog by generating its associated osm file.

@REM      -catalog-name    (mandatory)  specify the name of the catalog to describe.
@REM      -with-client-id  (mandatory)  give client identification key.
@REM      -in-version                   will produce a description that is a V5 only OR V6 only view of the catalog content. Consequently such an osm description cannot be used for an update.
@REM      -as              (mandatory)  indicate the osm file to generate, containing the catalog description.
@REM      -into-directory               indicate the output directory, where the output osm file is stored.

@REM    -simulate-catalog-update : simulate a catalog update.

@REM      -catalog-name    (mandatory)  specify the name of the catalog to simulate.
@REM      -with-client-id  (mandatory)  give client identification key.
@REM      -in-version      (mandatory)  will produce a description that is a V5 only OR V6 only view of the catalog content. Consequently such an osm description cannot be used for an update.
@REM      -with-osm                     specify the osm file's path used for simulation.
@REM      -into-directory               indicate the output directory, where the output osm file (with extension .V#osm) is stored.

@REM Notes:

@REM  - Catalogs have extension '.CATfct'.
@REM  - OSM files have extension '.osm'.
@REM  - All input catalogs must be located in 'CATGraphicPath' concatenation.
@REM Operation succeeded.