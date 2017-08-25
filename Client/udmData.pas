unit udmData;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, RzCommon, Data.DBXDataSnap,
  Data.DBXCommon, IPPeerClient, Datasnap.DSConnect, Data.DbxHTTPLayer;

type
  TdmData = class(TDataModule)
    cntData: TSQLConnection;
    cdsUnidadesAcademicas: TClientDataSet;
    dsUnidadesAcademicas: TDataSource;
    cdsPlanes: TClientDataSet;
    dsPlanes: TDataSource;
    cdsModalidades: TClientDataSet;
    dsModalidades: TDataSource;
    cdsCiclosEscolares: TClientDataSet;
    dsCiclosEscolares: TDataSource;
    cdsSecretariosAcademicos: TClientDataSet;
    dsSecretariosAcademicos: TDataSource;
    cdsComponentesCurriculares: TClientDataSet;
    dsComponentesCurriculares: TDataSource;
    cdsAreasCurriculares: TClientDataSet;
    dsAreasCurriculares: TDataSource;
    cdsLineasDisciplinares: TClientDataSet;
    dsLineasDisciplinares: TDataSource;
    cdsProfesores: TClientDataSet;
    dsProfesores: TDataSource;
    dtsPlaneacionesGenerales: TSQLDataSet;
    cdsPlaneacionesGenerales: TClientDataSet;
    dspPlaneacionesGenerales: TDataSetProvider;
    dsPlaneacionesGenerales: TDataSource;
    cdsPlaneacionesGeneralesFECHA: TDateField;
    cdsPlaneacionesGeneralesLUGAR: TStringField;
    cdsPlaneacionesGeneralesFECHA_INICIO: TDateField;
    cdsPlaneacionesGeneralesFECHA_CIERRE: TDateField;
    cdsPlaneacionesGeneralesNOMBRE_ASIGNATURA: TStringField;
    cdsPlaneacionesGeneralesHORAS_CURSO: TSmallintField;
    cdsPlaneacionesGeneralesHORAS_SEMANA: TSmallintField;
    cdsPlaneacionesGeneralesPROPOSITO_GENERAL: TStringField;
    cdsPlaneacionesGeneralesEVIDENCIA_INTEGRADORA: TStringField;
    cdsPlaneacionesGeneralesORIENTACIONES_GENERALES: TStringField;
    cdsPlaneacionesGeneralesUNIDAD_ACADEMICA: TStringField;
    cdsPlaneacionesGeneralesPLAN: TStringField;
    cdsPlaneacionesGeneralesMODALIDAD: TStringField;
    cdsPlaneacionesGeneralesCICLO_ESCOLAR: TStringField;
    cdsPlaneacionesGeneralesPROFESOR_COORDINADOR: TStringField;
    cdsPlaneacionesGeneralesSECRETARIO_ACADEMICO: TStringField;
    cdsPlaneacionesGeneralesCOMPONENTE_CURRICULAR: TStringField;
    cdsPlaneacionesGeneralesAREA_CURRICULAR: TStringField;
    cdsPlaneacionesGeneralesLINEA_DISCIPLINAR: TStringField;
    dtsProfesoresParticipantes: TSQLDataSet;
    cdsProfesoresParticipantes: TClientDataSet;
    dsPlaneacionezGeneralez: TDataSource;
    dsProfesoresParticipantes: TDataSource;
    cdsProfesoresParticipantesGRUPOS: TStringField;
    cdsProfesoresParticipantesPROFESOR: TStringField;
    cdsPlaneacionesGeneralesdtsProfesoresParticipantes: TDataSetField;
    cdsReuniones: TClientDataSet;
    dsReuniones: TDataSource;
    cdsAcuerdos: TClientDataSet;
    dsAcuerdos: TDataSource;
    cdsPlaneacionesGeneralesdtsAcuerdos: TDataSetField;
    cdsPlaneacionesGeneralesdtsReuniones: TDataSetField;
    cdsPlaneacionesUnidades: TClientDataSet;
    dsPlaneacionesUnidades: TDataSource;
    cdsPlaneacionesGeneralesdtsPlaneacionesUnidades: TDataSetField;
    cdsPlaneacionesUnidadesNOMBRE: TStringField;
    cdsPlaneacionesUnidadesPROPOSITO_UNIDAD: TStringField;
    cdsPlaneacionesUnidadesRECURSOS: TStringField;
    cdsPlaneacionesUnidadesESTRATEGIAS_RETROALIMENTACION: TStringField;
    cdsPlaneacionesUnidadesdtsEvaluaciones: TDataSetField;
    cdsEvaluaciones: TClientDataSet;
    dsEvaluaciones: TDataSource;
    dsPlaneacionesClases: TDataSource;
    cdsPlaneacionesClases: TClientDataSet;
    cdsPlaneacionesUnidadesdtsPlaneacionesClases: TDataSetField;
    cdsCompetenciasGenericas: TClientDataSet;
    dsCompetenciasGenericas: TDataSource;
    dsCompetenciasDisciplinares: TDataSource;
    cdsCompetenciasDisciplinares: TClientDataSet;
    cdsPlaneacionesClasesSESION: TSmallintField;
    cdsPlaneacionesClasesHORAS: TSmallintField;
    cdsPlaneacionesClasesFECHA: TDateField;
    cdsPlaneacionesClasesCONTENIDO_TEMATICO: TStringField;
    cdsPlaneacionesClasesPROPOSITO_SESION: TStringField;
    cdsPlaneacionesClasesSABERES_CONCEPTUALES: TStringField;
    cdsPlaneacionesClasesSABERES_PROCEDIMENTALES: TStringField;
    cdsPlaneacionesClasesSABERES_ACTITUDINALES: TStringField;
    cdsPlaneacionesClasesACTIVIDAD_APERTURA: TStringField;
    cdsPlaneacionesClasesACTIVIDAD_DESARROLLO: TStringField;
    cdsPlaneacionesClasesACTIVIDAD_CIERRE: TStringField;
    cdsPlaneacionesClasesRECURSOS_MATERIALES: TStringField;
    cdsPlaneacionesClasesOBSERVACIONES_COMENTARIOS: TStringField;
    cdsPlaneacionesClasesdtsCompetenciasDisciplinares: TDataSetField;
    cdsPlaneacionesClasesdtsCompetenciasGenericas: TDataSetField;
    RzFrameController1: TRzFrameController;
    RzFrameController2: TRzFrameController;
    cdsPlaneacionesGeneralesSEMESTRE: TStringField;
    cdsPlaneacionesGeneralesID_PLANEACION_GENERAL: TStringField;
    cdsPlaneacionesGeneralesID_UNIDAD_ACADEMICA: TStringField;
    cdsPlaneacionesGeneralesID_PLAN: TStringField;
    cdsPlaneacionesGeneralesID_MODALIDAD: TStringField;
    cdsPlaneacionesGeneralesID_CICLO_ESCOLAR: TStringField;
    cdsPlaneacionesGeneralesID_PROFESOR_COORDINADOR: TStringField;
    cdsPlaneacionesGeneralesID_SECRETARIO_ACADEMICO: TStringField;
    cdsPlaneacionesGeneralesID_COMPONENTE_CURRICULAR: TStringField;
    cdsPlaneacionesGeneralesID_AREA_CURRICULAR: TStringField;
    cdsPlaneacionesGeneralesID_LINEA_DISCIPLINAR: TStringField;
    cdsProfesoresParticipantesID: TStringField;
    cdsProfesoresParticipantesID_PLANEACION_GENERAL: TStringField;
    cdsProfesoresParticipantesID_PROFESOR: TStringField;
    cdsPlaneacionesUnidadesID_PLANEACION_UNIDAD: TStringField;
    cdsPlaneacionesUnidadesID_PLANEACION_GENERAL: TStringField;
    cdsPlaneacionesClasesID_PLANEACION_CLASE: TStringField;
    cdsPlaneacionesClasesID_PLANEACION_UNIDAD: TStringField;
    dpcData: TDSProviderConnection;
    dsInstrumentosEvaluacion: TDataSource;
    cdsInstrumentosEvaluacion: TClientDataSet;
    cdsPlaneacionesUnidadesHORAS_PROGRAMADAS: TIntegerField;
    cdsPlaneacionesUnidadesHORAS_PLANEADAS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPlaneacionesGeneralesAfterPost(DataSet: TDataSet);
    procedure cdsUnidadesAcademicasAfterPost(DataSet: TDataSet);
    procedure cdsPlanesAfterPost(DataSet: TDataSet);
    procedure cdsModalidadesAfterPost(DataSet: TDataSet);
    procedure cdsCiclosEscolaresAfterPost(DataSet: TDataSet);
    procedure cdsSecretariosAcademicosAfterPost(DataSet: TDataSet);
    procedure cdsComponentesCurricularesAfterPost(DataSet: TDataSet);
    procedure cdsAreasCurricularesAfterPost(DataSet: TDataSet);
    procedure cdsLineasDisciplinaresAfterPost(DataSet: TDataSet);
    procedure cdsProfesoresAfterPost(DataSet: TDataSet);
    procedure cdsUnidadesAcademicasNewRecord(DataSet: TDataSet);
    procedure cdsPlanesNewRecord(DataSet: TDataSet);
    procedure cdsModalidadesNewRecord(DataSet: TDataSet);
    procedure cdsCiclosEscolaresNewRecord(DataSet: TDataSet);
    procedure cdsSecretariosAcademicosNewRecord(DataSet: TDataSet);
    procedure cdsComponentesCurricularesNewRecord(DataSet: TDataSet);
    procedure cdsAreasCurricularesNewRecord(DataSet: TDataSet);
    procedure cdsLineasDisciplinaresNewRecord(DataSet: TDataSet);
    procedure cdsProfesoresNewRecord(DataSet: TDataSet);
    procedure cdsPlaneacionesGeneralesNewRecord(DataSet: TDataSet);
    procedure cdsProfesoresParticipantesNewRecord(DataSet: TDataSet);
    procedure cdsReunionesNewRecord(DataSet: TDataSet);
    procedure cdsAcuerdosNewRecord(DataSet: TDataSet);
    procedure cdsPlaneacionesUnidadesNewRecord(DataSet: TDataSet);
    procedure cdsEvaluacionesNewRecord(DataSet: TDataSet);
    procedure cdsPlaneacionesClasesNewRecord(DataSet: TDataSet);
    procedure cdsInstrumentosEvaluacionNewRecord(DataSet: TDataSet);
    procedure cdsInstrumentosEvaluacionAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
   function GetId: String;
  public
    { Public declarations }
  end;

var
  dmData: TdmData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Dialogs;

{$R *.dfm}

function TdmData.GetId: String;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid))
end;

procedure TdmData.cdsAcuerdosNewRecord(DataSet: TDataSet);
begin
  cdsAcuerdos.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsAreasCurricularesAfterPost(DataSet: TDataSet);
begin
  cdsAreasCurriculares.ApplyUpdates(0);
end;

procedure TdmData.cdsAreasCurricularesNewRecord(DataSet: TDataSet);
begin
  cdsAreasCurriculares.FieldByName('ID').Value:= GetId;;
end;

procedure TdmData.cdsCiclosEscolaresAfterPost(DataSet: TDataSet);
begin
  cdsCiclosEscolares.ApplyUpdates(0);
end;

procedure TdmData.cdsCiclosEscolaresNewRecord(DataSet: TDataSet);
begin
  cdsCiclosEscolares.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsComponentesCurricularesAfterPost(DataSet: TDataSet);
begin
  cdsComponentesCurriculares.ApplyUpdates(0);
end;

procedure TdmData.cdsComponentesCurricularesNewRecord(DataSet: TDataSet);
begin
  cdsComponentesCurriculares.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsEvaluacionesNewRecord(DataSet: TDataSet);
begin
  cdsEvaluaciones.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsInstrumentosEvaluacionAfterPost(DataSet: TDataSet);
begin
  cdsInstrumentosEvaluacion.ApplyUpdates(0);
end;

procedure TdmData.cdsInstrumentosEvaluacionNewRecord(DataSet: TDataSet);
begin
  cdsInstrumentosEvaluacion.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsLineasDisciplinaresAfterPost(DataSet: TDataSet);
begin
  cdsLineasDisciplinares.ApplyUpdates(0);
end;

procedure TdmData.cdsLineasDisciplinaresNewRecord(DataSet: TDataSet);
begin
  cdsLineasDisciplinares.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsModalidadesAfterPost(DataSet: TDataSet);
begin
  cdsModalidades.ApplyUpdates(0);
end;

procedure TdmData.cdsModalidadesNewRecord(DataSet: TDataSet);
begin
  cdsModalidades.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsPlaneacionesClasesNewRecord(DataSet: TDataSet);
begin
  cdsPlaneacionesClases.FieldByName('ID_PLANEACION_CLASE').Value:= GetId;
end;

procedure TdmData.cdsPlaneacionesGeneralesAfterPost(DataSet: TDataSet);
begin
  cdsPlaneacionesGenerales.ApplyUpdates(0);
end;

procedure TdmData.cdsPlaneacionesGeneralesNewRecord(DataSet: TDataSet);
begin
  cdsPlaneacionesGenerales.FieldByName('ID_PLANEACION_GENERAL').Value:= GetId;
end;

procedure TdmData.cdsPlaneacionesUnidadesNewRecord(DataSet: TDataSet);
begin
  cdsPlaneacionesUnidades.FieldByName('ID_PLANEACION_UNIDAD').Value:= GetId;
end;

procedure TdmData.cdsPlanesAfterPost(DataSet: TDataSet);
begin
  cdsPlanes.ApplyUpdates(0);
end;

procedure TdmData.cdsPlanesNewRecord(DataSet: TDataSet);
begin
  cdsPlanes.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsProfesoresAfterPost(DataSet: TDataSet);
begin
  cdsProfesores.ApplyUpdates(0);
end;

procedure TdmData.cdsProfesoresNewRecord(DataSet: TDataSet);
begin
  cdsProfesores.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsProfesoresParticipantesNewRecord(DataSet: TDataSet);
begin
  cdsProfesoresParticipantes.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsReunionesNewRecord(DataSet: TDataSet);
begin
  cdsReuniones.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsSecretariosAcademicosAfterPost(DataSet: TDataSet);
begin
  cdsSecretariosAcademicos.ApplyUpdates(0);
end;

procedure TdmData.cdsSecretariosAcademicosNewRecord(DataSet: TDataSet);
begin
  cdsSecretariosAcademicos.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsUnidadesAcademicasAfterPost(DataSet: TDataSet);
begin
  cdsUnidadesAcademicas.ApplyUpdates(0);
end;

procedure TdmData.cdsUnidadesAcademicasNewRecord(DataSet: TDataSet);
begin
  cdsUnidadesAcademicas.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
begin
  try
    cntData.Open;
    cdsUnidadesAcademicas.Open;
    cdsPlanes.Open;
    cdsModalidades.Open;
    cdsCiclosEscolares.Open;
    cdsSecretariosAcademicos.Open;
    cdsComponentesCurriculares.Open;
    cdsAreasCurriculares.Open;
    cdsLineasDisciplinares.Open;
    cdsProfesores.Open;
    cdsInstrumentosEvaluacion.Open;
    cdsPlaneacionesGenerales.Open;
  except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
end;

end.
