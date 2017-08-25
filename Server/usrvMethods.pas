unit usrvMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider;

type
  TsrvMethods = class(TDSServerModule)
    cntData: TSQLConnection;
    dspProfesores: TDataSetProvider;
    dtsProfesores: TSQLDataSet;
    dspLineasDisciplinares: TDataSetProvider;
    dtsLineasDisciplinares: TSQLDataSet;
    dspAreasCurriculares: TDataSetProvider;
    dtsAreasCurriculares: TSQLDataSet;
    dspComponentesCurriculares: TDataSetProvider;
    dtsComponentesCurriculares: TSQLDataSet;
    dspSecretariosAcademicos: TDataSetProvider;
    dtsSecretariosAcademicos: TSQLDataSet;
    dspCiclosEscolares: TDataSetProvider;
    dtsCiclosEscolares: TSQLDataSet;
    dspModalidades: TDataSetProvider;
    dtsModalidades: TSQLDataSet;
    dspPlanes: TDataSetProvider;
    dtsPlanes: TSQLDataSet;
    dspUnidadesAcademicas: TDataSetProvider;
    dtsUnidadesAcademicas: TSQLDataSet;
    dspPlaneacionesGenerales: TDataSetProvider;
    dtsPlaneacionesGenerales: TSQLDataSet;
    dtsProfesoresParticipantes: TSQLDataSet;
    dsPlaneacionezGeneralez: TDataSource;
    dtsCompetenciasDisciplinares: TSQLDataSet;
    dtsCompetenciasGenericas: TSQLDataSet;
    dsPlaneacionezClasez: TDataSource;
    dtsPlaneacionesClases: TSQLDataSet;
    dsPlaneacionezUnidadez: TDataSource;
    dtsEvaluaciones: TSQLDataSet;
    dtsPlaneacionesUnidades: TSQLDataSet;
    dtsAcuerdos: TSQLDataSet;
    dtsReuniones: TSQLDataSet;
    dtsInstrumentosEvaluacion: TSQLDataSet;
    dspInstrumentosEvaluacion: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation


{$R *.dfm}


end.

