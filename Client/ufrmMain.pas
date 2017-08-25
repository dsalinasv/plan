unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzPanel,
  RzDBNav, RzStatus, RzDBStat, RzGroupBar, RzSplit, Vcl.StdCtrls, RzDBEdit,
  Vcl.ComCtrls, RzDTP, RzDBDTP, Vcl.Mask, RzEdit, RzDBCmbo, RzLabel, RzTabs,
  RzCmboBx;

type
  TfrmMain = class(TForm)
    actAcciones: TActionList;
    actUnidadesAcademicas: TAction;
    actPlanes: TAction;
    actModalidades: TAction;
    actCiclosEscolares: TAction;
    actSecretariosAcademicos: TAction;
    actComponentesCurriculares: TAction;
    actAreasCurriculares: TAction;
    actLineasDisciplinares: TAction;
    actProfesores: TAction;
    RzStatusBar1: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzResourceStatus1: TRzResourceStatus;
    RzDBStateStatus1: TRzDBStateStatus;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzSizePanel1: TRzSizePanel;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    RzVersionInfo1: TRzVersionInfo;
    RzPanel1: TRzPanel;
    dbgPlaneacionesGenerales: TRzDBGrid;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPanel2: TRzPanel;
    Label1: TRzLabel;
    Label2: TRzLabel;
    Label3: TRzLabel;
    Label4: TRzLabel;
    Label5: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel16: TRzLabel;
    cmbUnidadAcademica: TRzDBLookupComboBox;
    DBLookupComboBox2: TRzDBLookupComboBox;
    DBLookupComboBox3: TRzDBLookupComboBox;
    DBLookupComboBox4: TRzDBLookupComboBox;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    RzDBDateTimePicker3: TRzDBDateTimePicker;
    edtAsignatura: TRzDBEdit;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    RzDBLookupComboBox5: TRzDBLookupComboBox;
    RzDBEdit6: TRzDBEdit;
    RzDBMemo1: TRzDBMemo;
    RzDBMemo2: TRzDBMemo;
    TabSheet2: TRzTabSheet;
    RzDBGrid1: TRzDBGrid;
    RzPanel3: TRzPanel;
    RzDBNavigator2: TRzDBNavigator;
    TabSheet3: TRzTabSheet;
    RzDBGrid2: TRzDBGrid;
    RzPanel4: TRzPanel;
    RzDBNavigator3: TRzDBNavigator;
    RzSizePanel2: TRzSizePanel;
    RzLabel2: TRzLabel;
    RzLabel17: TRzLabel;
    RzDBMemo3: TRzDBMemo;
    RzDBDateTimePicker4: TRzDBDateTimePicker;
    TabSheet4: TRzTabSheet;
    RzDBGrid3: TRzDBGrid;
    RzPanel5: TRzPanel;
    RzDBNavigator4: TRzDBNavigator;
    TabSheet5: TRzTabSheet;
    RzPanel7: TRzPanel;
    RzDBNavigator1: TRzDBNavigator;
    RzDBComboBox1: TRzDBComboBox;
    RzSizePanel3: TRzSizePanel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzDBMemo4: TRzDBMemo;
    RzDBDateTimePicker5: TRzDBDateTimePicker;
    RzLabel20: TRzLabel;
    RzDBMemo5: TRzDBMemo;
    RzDBComboBox2: TRzDBComboBox;
    RzLabel21: TRzLabel;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    RzPanel8: TRzPanel;
    RzLabel22: TRzLabel;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    RzLabel25: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBMemo6: TRzDBMemo;
    RzDBMemo7: TRzDBMemo;
    RzDBMemo8: TRzDBMemo;
    RzTabSheet2: TRzTabSheet;
    DBGrid6: TRzDBGrid;
    RzPanel9: TRzPanel;
    RzDBNavigator6: TRzDBNavigator;
    RzTabSheet3: TRzTabSheet;
    DBGrid7: TRzDBGrid;
    RzPanel10: TRzPanel;
    RzDBNavigator7: TRzDBNavigator;
    RzSizePanel4: TRzSizePanel;
    RzPanel6: TRzPanel;
    RzDBNavigator5: TRzDBNavigator;
    RzDBGrid4: TRzDBGrid;
    RzSizePanel5: TRzSizePanel;
    RzLabel26: TRzLabel;
    RzLabel27: TRzLabel;
    RzDBMemo9: TRzDBMemo;
    RzDBDateTimePicker6: TRzDBDateTimePicker;
    RzDBEdit5: TRzDBEdit;
    RzLabel28: TRzLabel;
    RzLabel29: TRzLabel;
    RzLabel30: TRzLabel;
    RzDBEdit8: TRzDBEdit;
    actInstrumentosEvaluacion: TAction;
    RzDBLookupComboBox6: TRzDBLookupComboBox;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzLabel31: TRzLabel;
    RzLabel32: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    RzLabel33: TRzLabel;
    RzLabel34: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    procedure actUnidadesAcademicasExecute(Sender: TObject);
    procedure actPlanesExecute(Sender: TObject);
    procedure actModalidadesExecute(Sender: TObject);
    procedure actCiclosEscolaresExecute(Sender: TObject);
    procedure actSecretariosAcademicosExecute(Sender: TObject);
    procedure actComponentesCurricularesExecute(Sender: TObject);
    procedure actAreasCurricularesExecute(Sender: TObject);
    procedure actLineasDisciplinaresExecute(Sender: TObject);
    procedure actProfesoresExecute(Sender: TObject);
    procedure RzSizePanel1HotSpotClick(Sender: TObject);
    procedure RzSizePanel4HotSpotClick(Sender: TObject);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure RzDBGrid4DblClick(Sender: TObject);
    procedure actInstrumentosEvaluacionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ufrmUnidadesAcademicas, ufrmPlanes, ufrmAreasCurriculares,
  ufrmCatalogoBase, ufrmCiclosEscolares, ufrmComponentesCurriculares,
  ufrmLineasDisciplinares, ufrmModalidades, ufrmSecretariosAcademicos,
  ufrmProfesores, udmData, ufrmPlaneacionesClases, ufrmInstrumentosEvaluacion;

procedure TfrmMain.actAreasCurricularesExecute(Sender: TObject);
begin
  with TfrmAreasCurriculares.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actCiclosEscolaresExecute(Sender: TObject);
begin
  with TfrmCiclosEscolares.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actComponentesCurricularesExecute(Sender: TObject);
begin
  with TfrmComponentesCurriculares.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actInstrumentosEvaluacionExecute(Sender: TObject);
begin
  with TfrmInstrumentosEvaluacion.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actLineasDisciplinaresExecute(Sender: TObject);
begin
  with TfrmLineasDisciplinares.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actModalidadesExecute(Sender: TObject);
begin
  with TfrmModalidades.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actPlanesExecute(Sender: TObject);
begin
  with TfrmPlanes.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actProfesoresExecute(Sender: TObject);
begin
  with TfrmProfesores.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actSecretariosAcademicosExecute(Sender: TObject);
begin
  with TfrmSecretariosAcademicos.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actUnidadesAcademicasExecute(Sender: TObject);
begin
  with TfrmUnidadesAcademicas.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.DBGrid7DblClick(Sender: TObject);
begin
  with TfrmPlaneacionesClases.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.RzDBGrid4DblClick(Sender: TObject);
begin
  RzSizePanel4.CloseHotspot;
  RzSizePanel4HotSpotClick(Sender);
end;

procedure TfrmMain.RzSizePanel1HotSpotClick(Sender: TObject);
begin
  RzGroupBar1.Visible:= not RzGroupBar1.Visible;
end;

procedure TfrmMain.RzSizePanel4HotSpotClick(Sender: TObject);
begin
  RzPanel6.Visible:= not RzPanel6.Visible;
  RzDBGrid4.Visible:= not RzDBGrid4.Visible;
end;

end.
