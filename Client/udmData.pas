unit udmData;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, RzCommon, Data.DBXDataSnap,
  Data.DBXCommon, IPPeerClient, Datasnap.DSConnect, Data.DbxHTTPLayer, frxClass;

type
  TdmData = class(TDataModule)
    cntData: TSQLConnection;
    dsUnidadesAcademicas: TDataSource;
    dsPlanes: TDataSource;
    dsModalidades: TDataSource;
    dsCiclosEscolares: TDataSource;
    dsSecretariosAcademicos: TDataSource;
    dsComponentesCurriculares: TDataSource;
    dsAreasCurriculares: TDataSource;
    dsLineasDisciplinares: TDataSource;
    dsEmpleados: TDataSource;
    dsPlaneacionesGenerales: TDataSource;
    dsProfesoresParticipantes: TDataSource;
    dsReuniones: TDataSource;
    dsAcuerdos: TDataSource;
    dsPlaneacionesUnidades: TDataSource;
    dsEvaluaciones: TDataSource;
    dsPlaneacionesClases: TDataSource;
    cdsPlaneacionesClases: TClientDataSet;
    cdsPlaneacionesClasesSESION: TSmallintField;
    cdsPlaneacionesClasesHORAS: TSmallintField;
    cdsPlaneacionesClasesFECHA: TDateField;
    RzFrameController1: TRzFrameController;
    RzFrameController2: TRzFrameController;
    cdsPlaneacionesClasesID_PLANEACION_CLASE: TStringField;
    cdsPlaneacionesClasesID_PLANEACION_UNIDAD: TStringField;
    dpcData: TDSProviderConnection;
    dsInstrumentosEvaluacion: TDataSource;
    cdsInstrumentosEvaluacion: TClientDataSet;
    dsUnidadesRegionales: TDataSource;
    cdsUnidadesRegionales: TClientDataSet;
    cdsUnidadesRegionalesID_UNIDAD_REGIONAL: TStringField;
    cdsUnidadesRegionalesNOMBRE: TStringField;
    cdsEmpleados: TClientDataSet;
    cdsLineasDisciplinares: TClientDataSet;
    cdsAreasCurriculares: TClientDataSet;
    cdsComponentesCurriculares: TClientDataSet;
    cdsSecretariosAcademicos: TClientDataSet;
    cdsCiclosEscolares: TClientDataSet;
    cdsCiclosEscolaresID_CICLO_ESCOLAR: TStringField;
    cdsCiclosEscolaresNOMBRE: TStringField;
    cdsCiclosEscolaresID_UNIDAD_REGIONAL: TStringField;
    cdsModalidades: TClientDataSet;
    cdsPlanes: TClientDataSet;
    cdsPlanesID_PLAN: TStringField;
    cdsPlanesNOMBRE: TStringField;
    cdsPlanesID_CICLO_ESCOLAR: TStringField;
    cdsUnidadesAcademicas: TClientDataSet;
    cdsUnidadesAcademicasID: TStringField;
    cdsUnidadesAcademicasNOMBRE: TStringField;
    cdsUnidadesAcademicasID_UNIDAD_REGIONAL: TStringField;
    cdsPlaneacionesGenerales: TClientDataSet;
    cdsPlaneacionesGeneralesID_PLANEACION_GENERAL: TStringField;
    cdsPlaneacionesGeneralesSEMESTRE: TStringField;
    cdsPlaneacionesGeneralesFECHA: TDateField;
    cdsPlaneacionesGeneralesLUGAR: TStringField;
    cdsPlaneacionesGeneralesFECHA_INICIO: TDateField;
    cdsPlaneacionesGeneralesFECHA_CIERRE: TDateField;
    cdsPlaneacionesGeneralesNOMBRE_ASIGNATURA: TStringField;
    cdsPlaneacionesGeneralesHORAS_CURSO: TSmallintField;
    cdsPlaneacionesGeneralesHORAS_SEMANA: TSmallintField;
    cdsPlaneacionesGeneralesEVIDENCIA_INTEGRADORA: TStringField;
    cdsPlaneacionesGeneralesID_PLAN: TStringField;
    cdsPlaneacionesGeneralesID_MODALIDAD: TStringField;
    cdsPlaneacionesGeneralesID_PROFESOR_COORDINADOR: TStringField;
    cdsPlaneacionesGeneralesID_SECRETARIO_ACADEMICO: TStringField;
    cdsPlaneacionesGeneralesID_COMPONENTE_CURRICULAR: TStringField;
    cdsPlaneacionesGeneralesID_AREA_CURRICULAR: TStringField;
    cdsPlaneacionesGeneralesID_LINEA_DISCIPLINAR: TStringField;
    cdsPlaneacionesGeneralesMODALIDAD: TStringField;
    cdsPlaneacionesGeneralesPROFESOR_COORDINADOR: TStringField;
    cdsPlaneacionesGeneralesSECRETARIO_ACADEMICO: TStringField;
    cdsPlaneacionesGeneralesCOMPONENTE_CURRICULAR: TStringField;
    cdsPlaneacionesGeneralesAREA_CURRICULAR: TStringField;
    cdsPlaneacionesGeneralesLINEA_DISCIPLINAR: TStringField;
    cdsProfesoresParticipantes: TClientDataSet;
    cdsProfesoresParticipantesID: TStringField;
    cdsProfesoresParticipantesID_PLANEACION_GENERAL: TStringField;
    cdsProfesoresParticipantesID_PROFESOR: TStringField;
    cdsProfesoresParticipantesGRUPOS: TStringField;
    cdsProfesoresParticipantesPROFESOR: TStringField;
    cdsReuniones: TClientDataSet;
    cdsAcuerdos: TClientDataSet;
    cdsPlaneacionesUnidades: TClientDataSet;
    cdsPlaneacionesUnidadesID_PLANEACION_UNIDAD: TStringField;
    cdsPlaneacionesUnidadesID_PLANEACION_GENERAL: TStringField;
    cdsPlaneacionesUnidadesNOMBRE: TStringField;
    cdsEvaluaciones: TClientDataSet;
    cdsEvaluacionesID: TStringField;
    cdsEvaluacionesID_PLANEACION_UNIDAD: TStringField;
    cdsEvaluacionesASPECTO: TStringField;
    cdsEvaluacionesPONDERACION: TSmallintField;
    cdsEvaluacionesFECHA: TDateField;
    cdsEvaluacionesID_INSTRUMENTO_EVALUACION: TStringField;
    cdsAcuerdosID: TStringField;
    cdsAcuerdosID_PLANEACION_GENERAL: TStringField;
    cdsAcuerdosNOMBRE: TStringField;
    cdsAcuerdosPARA: TStringField;
    cdsAcuerdosFECHA: TDateField;
    cdsReunionesID: TStringField;
    cdsReunionesID_PLANEACION_GENERAL: TStringField;
    cdsReunionesNOMBRE: TStringField;
    cdsReunionesFECHA: TDateField;
    cdsModalidadesID: TStringField;
    cdsModalidadesNOMBRE: TStringField;
    cdsSecretariosAcademicosID: TStringField;
    cdsSecretariosAcademicosNOMBRE: TStringField;
    cdsComponentesCurricularesID: TStringField;
    cdsComponentesCurricularesNOMBRE: TStringField;
    cdsAreasCurricularesNOMBRE: TStringField;
    cdsLineasDisciplinaresID: TStringField;
    cdsLineasDisciplinaresNOMBRE: TStringField;
    cdsEmpleadosID: TStringField;
    cdsEmpleadosNOMBRE: TStringField;
    cdsInstrumentosEvaluacionID: TStringField;
    cdsInstrumentosEvaluacionNOMBRE: TStringField;
    cdsPlaneacionesGeneralesORIENTACIONES_GENERALES: TMemoField;
    cdsPlaneacionesGeneralesPROPOSITO_GENERAL: TMemoField;
    cdsPlaneacionesUnidadesPROPOSITO_UNIDAD: TMemoField;
    cdsPlaneacionesUnidadesRECURSOS: TMemoField;
    cdsPlaneacionesUnidadesESTRATEGIAS_RETROALIMENTACION: TMemoField;
    cdsAcuerdosACUERDO: TMemoField;
    cdsAcuerdosSEGUIMIENTO: TMemoField;
    cdsReunionesPROPOSITO: TMemoField;
    cdsEvaluacionesEVIDENCIA: TMemoField;
    cdsPlaneacionesClasesCONTENIDO_TEMATICO: TMemoField;
    cdsPlaneacionesClasesPROPOSITO_SESION: TMemoField;
    cdsPlaneacionesClasesSABERES_CONCEPTUALES: TMemoField;
    cdsPlaneacionesClasesSABERES_PROCEDIMENTALES: TMemoField;
    cdsPlaneacionesClasesSABERES_ACTITUDINALES: TMemoField;
    cdsPlaneacionesClasesACTIVIDAD_APERTURA: TMemoField;
    cdsPlaneacionesClasesACTIVIDAD_DESARROLLO: TMemoField;
    cdsPlaneacionesClasesACTIVIDAD_CIERRE: TMemoField;
    cdsPlaneacionesClasesRECURSOS_MATERIALES: TMemoField;
    cdsPlaneacionesClasesOBSERVACIONES_COMENTARIOS: TMemoField;
    cdsAreasCurricularesID_AREA_CURRICULAR: TStringField;
    cdsCiclosEscolaresACTIVO: TSmallintField;
    dsPerfiles: TDataSource;
    cdsPerfiles: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    cdsEmpleadosID_PERFIL: TStringField;
    cdsEmpleadosPERFIL: TStringField;
    cdsPlaneacionesGeneralesdtsReuniones: TDataSetField;
    cdsPlaneacionesGeneralesdtsAcuerdos: TDataSetField;
    cdsPlaneacionesGeneralesdtsProfesoresParticipantes: TDataSetField;
    cdsPlaneacionesUnidadesdtsEvaluaciones: TDataSetField;
    cdsPlaneacionesUnidadesdtsPlaneacionesClases: TDataSetField;
    dsProfesores: TDataSource;
    cdsProfesores: TClientDataSet;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    cdsPlaneacionesUnidadesHORAS: TSmallintField;
    cdsUnidadesAtributos: TClientDataSet;
    dsUnidadesAtributos: TDataSource;
    cdsUnidadesCompetencias: TClientDataSet;
    dsUnidadesCompetencias: TDataSource;
    cdsPlaneacionesGeneralesdtsPlaneacionesUnidades: TDataSetField;
    cdsPlaneacionesUnidadesESTRATEGIAS_DIDACTICAS: TMemoField;
    cdsPlaneacionesUnidadesSABERES_CONCEPTUALES: TMemoField;
    cdsPlaneacionesUnidadesSABERES_PROCEDIMENTALES: TMemoField;
    cdsPlaneacionesUnidadesSABERES_ACTITUDINALES: TMemoField;
    cdsPlaneacionesUnidadesCONTENIDO_TEMATICO: TMemoField;
    cdsPlaneacionesUnidadesdtsUnidadesCompetencias: TDataSetField;
    cdsPlaneacionesUnidadesdtsUnidadesAtributos: TDataSetField;
    cdsUnidadesAtributosID_UNIDAD_ATRIBUTO: TStringField;
    cdsUnidadesAtributosID_PLANEACION_UNIDAD: TStringField;
    cdsUnidadesAtributosID_ATRIBUTO_COMPETENCIA: TStringField;
    cdsUnidadesAtributosCRITERIOS_APRENDIZAJE: TMemoField;
    cdsUnidadesCompetenciasID_UNIDAD_COMPETENCIA: TStringField;
    cdsUnidadesCompetenciasID_PLANEACION_UNIDAD: TStringField;
    cdsUnidadesCompetenciasID_COMPETENCIA_DISCIPLINAR: TStringField;
    cdsUnidadesCompetenciasCRITERIOS_APRENDIZAJE: TMemoField;
    dsAtributosCompetencias: TDataSource;
    cdsAtributosCompetencias: TClientDataSet;
    cdsAtributosCompetenciasID_COMPETENCIA_GENERICA: TStringField;
    dsCompetenciasDisciplinares: TDataSource;
    cdsCompetenciasDisciplinares: TClientDataSet;
    cdsCompetenciasDisciplinaresID_COMPETENCIA_DISCIPLINAR: TStringField;
    cdsCompetenciasDisciplinaresNOMBRE: TStringField;
    cdsUnidadesAtributosATRIBUTO: TStringField;
    cdsUnidadesCompetenciasCOMPETENCIA_DISCIPLINAR: TStringField;
    cdsPlaneacionesClasesCOMPETENCIAS_GENERICAS: TMemoField;
    cdsPlaneacionesClasesCOMPETENCIAS_DISCIPLINARES: TMemoField;
    cdsAtributosCompetenciasID: TStringField;
    cdsAtributosCompetenciasNOMBRE: TStringField;
    frxReport: TfrxReport;
    cdsUnidadesRegionalesdtsUnidadesAcademicas: TDataSetField;
    cdsCiclosEscolaresdtsPlanes: TDataSetField;
    cdsPlaneacionesGeneralesID_SECRETARIO_ACTA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsUnidadesAcademicasNewRecord(DataSet: TDataSet);
    procedure cdsPlanesNewRecord(DataSet: TDataSet);
    procedure cdsModalidadesNewRecord(DataSet: TDataSet);
    procedure cdsCiclosEscolaresNewRecord(DataSet: TDataSet);
    procedure cdsSecretariosAcademicosNewRecord(DataSet: TDataSet);
    procedure cdsComponentesCurricularesNewRecord(DataSet: TDataSet);
    procedure cdsAreasCurricularesNewRecord(DataSet: TDataSet);
    procedure cdsLineasDisciplinaresNewRecord(DataSet: TDataSet);
    procedure cdsEmpleadosNewRecord(DataSet: TDataSet);
    procedure cdsPlaneacionesGeneralesNewRecord(DataSet: TDataSet);
    procedure cdsProfesoresParticipantesNewRecord(DataSet: TDataSet);
    procedure cdsReunionesNewRecord(DataSet: TDataSet);
    procedure cdsAcuerdosNewRecord(DataSet: TDataSet);
    procedure cdsPlaneacionesUnidadesNewRecord(DataSet: TDataSet);
    procedure cdsEvaluacionesNewRecord(DataSet: TDataSet);
    procedure cdsPlaneacionesClasesNewRecord(DataSet: TDataSet);
    procedure cdsInstrumentosEvaluacionNewRecord(DataSet: TDataSet);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure cdsReunionesAfterInsert(DataSet: TDataSet);
    procedure cdsPlaneacionesGeneralesAfterInsert(DataSet: TDataSet);
    procedure cdsAcuerdosAfterInsert(DataSet: TDataSet);
    procedure cdsUnidadesAtributosNewRecord(DataSet: TDataSet);
    procedure cdsUnidadesCompetenciasNewRecord(DataSet: TDataSet);
    procedure cdsEvaluacionesAfterInsert(DataSet: TDataSet);
    procedure cdsPlaneacionesClasesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
   function GetId: String;
  public
    { Public declarations }
    procedure Login;
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

procedure TdmData.Login;
begin
  cdsPlaneacionesGenerales.Close;
  cdsPlaneacionesGenerales.ParamByName('ID_PLAN').Value:=
    cdsPlanesID_PLAN.Value;
  cdsPlaneacionesGenerales.ParamByName('ID_SECRETARIO_ACTA').Value:=
    cdsEmpleadosID.Value;
  cdsPlaneacionesGenerales.Open;
  if cdsPlaneacionesGenerales.IsEmpty then
  begin
    cdsPlaneacionesGenerales.Close;
    cdsPlaneacionesGenerales.ParamByName('ID_SECRETARIO_ACTA').Value:= EmptyStr;
    cdsPlaneacionesGenerales.Open;
  end;
end;

procedure TdmData.cdsAcuerdosAfterInsert(DataSet: TDataSet);
begin
  cdsAcuerdosFECHA.Value:= Now;
end;

procedure TdmData.cdsAcuerdosNewRecord(DataSet: TDataSet);
begin
  cdsAcuerdos.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsAfterPost(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).ApplyUpdates(0);
end;

procedure TdmData.cdsAreasCurricularesNewRecord(DataSet: TDataSet);
begin
  cdsAreasCurriculares.FieldByName('ID_AREA_CURRICULAR').Value:= GetId;;
end;

procedure TdmData.cdsCiclosEscolaresNewRecord(DataSet: TDataSet);
begin
  cdsCiclosEscolares.FieldByName('ID_CICLO_ESCOLAR').Value:= GetId;
end;

procedure TdmData.cdsComponentesCurricularesNewRecord(DataSet: TDataSet);
begin
  cdsComponentesCurriculares.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsEvaluacionesAfterInsert(DataSet: TDataSet);
begin
  cdsEvaluacionesFECHA.Value:= Now;
end;

procedure TdmData.cdsEvaluacionesNewRecord(DataSet: TDataSet);
begin
  cdsEvaluaciones.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsInstrumentosEvaluacionNewRecord(DataSet: TDataSet);
begin
  cdsInstrumentosEvaluacion.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsLineasDisciplinaresNewRecord(DataSet: TDataSet);
begin
  cdsLineasDisciplinares.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsModalidadesNewRecord(DataSet: TDataSet);
begin
  cdsModalidades.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsPlaneacionesClasesAfterInsert(DataSet: TDataSet);
begin
  cdsPlaneacionesClasesFECHA.Value:= Now;
end;

procedure TdmData.cdsPlaneacionesClasesNewRecord(DataSet: TDataSet);
begin
  cdsPlaneacionesClases.FieldByName('ID_PLANEACION_CLASE').Value:= GetId;
end;

procedure TdmData.cdsPlaneacionesGeneralesAfterInsert(DataSet: TDataSet);
begin
  cdsPlaneacionesGeneralesID_PLAN.Value:= cdsPlanesID_PLAN.Value;
  cdsPlaneacionesGeneralesFECHA_INICIO.Value:= Now;
  cdsPlaneacionesGeneralesFECHA_CIERRE.Value:= Now;
  cdsPlaneacionesGeneralesFECHA.Value:= Now;
  cdsPlaneacionesGeneralesID_SECRETARIO_ACTA.Value:= EmptyStr;
end;

procedure TdmData.cdsPlaneacionesGeneralesNewRecord(DataSet: TDataSet);
begin
  cdsPlaneacionesGenerales.FieldByName('ID_PLANEACION_GENERAL').Value:= GetId;
end;

procedure TdmData.cdsPlaneacionesUnidadesNewRecord(DataSet: TDataSet);
begin
  cdsPlaneacionesUnidades.FieldByName('ID_PLANEACION_UNIDAD').Value:= GetId;
end;

procedure TdmData.cdsPlanesNewRecord(DataSet: TDataSet);
begin
  cdsPlanes.FieldByName('ID_PLAN').Value:= GetId;
end;

procedure TdmData.cdsEmpleadosNewRecord(DataSet: TDataSet);
begin
  cdsEmpleados.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsProfesoresParticipantesNewRecord(DataSet: TDataSet);
begin
  cdsProfesoresParticipantes.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsReunionesAfterInsert(DataSet: TDataSet);
begin
  cdsReunionesFECHA.Value:= Now;
end;

procedure TdmData.cdsReunionesNewRecord(DataSet: TDataSet);
begin
  cdsReuniones.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsSecretariosAcademicosNewRecord(DataSet: TDataSet);
begin
  cdsSecretariosAcademicos.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsUnidadesAcademicasNewRecord(DataSet: TDataSet);
begin
  cdsUnidadesAcademicas.FieldByName('ID').Value:= GetId;
end;

procedure TdmData.cdsUnidadesAtributosNewRecord(DataSet: TDataSet);
begin
  cdsUnidadesAtributosID_UNIDAD_ATRIBUTO.Value:= GetId;
end;

procedure TdmData.cdsUnidadesCompetenciasNewRecord(DataSet: TDataSet);
begin
  cdsUnidadesCompetenciasID_UNIDAD_COMPETENCIA.Value:= GetId;
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
begin

  try
    //Catalogos
    cdsModalidades.Open;
    cdsSecretariosAcademicos.Open;
    cdsComponentesCurriculares.Open;
    cdsAreasCurriculares.Open;
    cdsLineasDisciplinares.Open;
    cdsPerfiles.Open;
    cdsEmpleados.Open;
    cdsInstrumentosEvaluacion.Open;
    cdsAtributosCompetencias.Open;
    cdsCompetenciasDisciplinares.Open;

    //Unidad Regional y Ciclo Escolar
    cdsUnidadesRegionales.Open;
    cdsCiclosEscolares.Close;
    cdsCiclosEscolares.ParamByName('ID_UNIDAD_REGIONAL').Value:=
      cdsUnidadesRegionalesID_UNIDAD_REGIONAL.Value;
    cdsCiclosEscolares.ParamByName('ACTIVO').Value:= 1;
    cdsCiclosEscolares.Open;
  except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
end;

end.
