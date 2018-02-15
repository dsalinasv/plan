unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzPanel,
  RzDBNav, RzStatus, RzDBStat, RzGroupBar, RzSplit, Vcl.StdCtrls, RzDBEdit,
  Vcl.ComCtrls, RzDTP, RzDBDTP, Vcl.Mask, RzEdit, RzDBCmbo, RzLabel, RzTabs,
  RzCmboBx, RzDBLbl;

type
  TfrmMain = class(TForm)
    actAcciones: TActionList;
    actUnidadesRegionales: TAction;
    actPlanes: TAction;
    actModalidades: TAction;
    actCiclosEscolares: TAction;
    actComponentesCurriculares: TAction;
    actEmpleados: TAction;
    RzStatusBar1: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzResourceStatus1: TRzResourceStatus;
    RzDBStateStatus1: TRzDBStateStatus;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzSizePanel1: TRzSizePanel;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    VersionInfo: TRzVersionInfo;
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
    DBLookupComboBox3: TRzDBLookupComboBox;
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
    cmbSemestre: TRzDBComboBox;
    RzSizePanel3: TRzSizePanel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzDBMemo4: TRzDBMemo;
    RzDBDateTimePicker5: TRzDBDateTimePicker;
    RzLabel20: TRzLabel;
    RzDBMemo5: TRzDBMemo;
    RzDBComboBox2: TRzDBComboBox;
    RzLabel21: TRzLabel;
    RzSizePanel4: TRzSizePanel;
    RzPanel6: TRzPanel;
    RzDBNavigator5: TRzDBNavigator;
    RzDBGrid4: TRzDBGrid;
    actInstrumentosEvaluacion: TAction;
    RzDBEdit10: TRzDBEdit;
    RzLabel33: TRzLabel;
    RzLabel34: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    RzPanel8: TRzPanel;
    RzLabel22: TRzLabel;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    RzLabel25: TRzLabel;
    RzLabel31: TRzLabel;
    RzLabel32: TRzLabel;
    RzDBLabel4: TRzDBLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBMemo6: TRzDBMemo;
    RzDBMemo7: TRzDBMemo;
    RzDBMemo8: TRzDBMemo;
    RzDBEdit7: TRzDBEdit;
    TabSheet6: TRzTabSheet;
    RzTabSheet2: TRzTabSheet;
    DBGrid6: TRzDBGrid;
    RzSizePanel5: TRzSizePanel;
    RzLabel26: TRzLabel;
    RzLabel27: TRzLabel;
    RzLabel28: TRzLabel;
    RzLabel29: TRzLabel;
    RzLabel30: TRzLabel;
    RzDBMemo9: TRzDBMemo;
    RzDBDateTimePicker6: TRzDBDateTimePicker;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBLookupComboBox6: TRzDBLookupComboBox;
    RzTabSheet3: TRzTabSheet;
    DBGrid7: TRzDBGrid;
    RzPanel10: TRzPanel;
    RzDBNavigator7: TRzDBNavigator;
    TabSheet7: TRzTabSheet;
    TabSheet8: TRzTabSheet;
    TabSheet9: TRzTabSheet;
    RzDBMemo10: TRzDBMemo;
    RzDBMemo11: TRzDBMemo;
    RzLabel35: TRzLabel;
    RzLabel36: TRzLabel;
    RzDBMemo12: TRzDBMemo;
    RzLabel37: TRzLabel;
    RzLabel38: TRzLabel;
    RzDBMemo13: TRzDBMemo;
    RzDBMemo14: TRzDBMemo;
    RzDBGrid5: TRzDBGrid;
    RzDBMemo15: TRzDBMemo;
    RzDBGrid6: TRzDBGrid;
    RzDBMemo16: TRzDBMemo;
    RzPanel11: TRzPanel;
    RzDBNavigator8: TRzDBNavigator;
    RzPanel9: TRzPanel;
    RzDBNavigator6: TRzDBNavigator;
    RzPanel13: TRzPanel;
    RzDBNavigator10: TRzDBNavigator;
    RzLabel39: TRzLabel;
    RzLabel40: TRzLabel;
    RzLabel41: TRzLabel;
    procedure actExecute(Sender: TObject);
    procedure RzSizePanel1HotSpotClick(Sender: TObject);
    procedure RzSizePanel4HotSpotClick(Sender: TObject);
    procedure RzDBGrid4DblClick(Sender: TObject);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Perfil: Integer;
    procedure ActivarControles;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  udmData, ufrmPlaneacionesClases, ufrmLogin;

procedure TfrmMain.actExecute(Sender: TObject);
var
  sForma: String;
  FormClass: TFormClass;
begin
  sForma:= StringReplace(TAction(Sender).Name, 'act', 'frm', []);
  FormClass:= TFormClass(GetClass('T' + sForma));
  if Assigned(FormClass) then
    with FormClass.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TfrmMain.ActivarControles;
var
  i: Integer;
begin
  for i := 0 to Pred(ComponentCount) do
  begin
    if (Components[i] is TRzComboBox) or
       (Components[i] is TRzDBGrid) or
       (Components[i] is TRzDBEdit) or
       (Components[i] is TRzDBLookupComboBox) or
       (Components[i] is TRzDBDateTimePicker) or
       (Components[i] is TRzDBMemo) or
       (Components[i] is TRzGroupBar) or
       (Components[i] is TRzDBNavigator) then
      (Components[i] as TWinControl).Enabled:= Components[i].Tag >= Perfil;
  end;
end;

procedure TfrmMain.DBGrid7DblClick(Sender: TObject);
begin
  with TfrmPlaneacionesClases.Create(Self) do
    try
      ActivarControles(Perfil);
      if ShowModal = mrOk then
        if dmData.cdsPlaneacionesClases.State in dsEditModes then
          dmData.cdsPlaneacionesClases.Post
      else
        dmData.cdsPlaneacionesClases.Cancel;
    finally
      Free;
    end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Res: Integer;
begin
  if dmData.cdsPlaneacionesGenerales.State in dsEditModes then
  begin
    Res:= MessageBox(0, '¿Desea subir los cambios al servidor?',
      'Advertencia', MB_ICONINFORMATION or MB_YESNO);
    case Res of
      IDYES: dmData.cdsPlaneacionesGenerales.ApplyUpdates(0);
      IDNO: dmData.cdsPlaneacionesGenerales.CancelUpdates;
    end
  end;
  //dmData.cdsPlaneacionesGenerales.ApplyUpdates(0);
  frmLogin.Show;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  Paridad: Byte;
begin
  Paridad:= Length(dmData.cdsCiclosEscolaresNOMBRE.Value);
  cmbSemestre.Items.Clear;
  case dmData.cdsCiclosEscolaresNOMBRE.Value[Paridad] of
    '1': begin
      cmbSemestre.Add('1');
      cmbSemestre.Add('3');
      cmbSemestre.Add('5');
    end;
    '2': begin
      cmbSemestre.Add('2');
      cmbSemestre.Add('4');
      cmbSemestre.Add('6');
    end;
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
