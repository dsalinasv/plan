unit ufrmPlaneacionesClases;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit, RzDBEdit, Data.DB, RzDBNav,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, Vcl.DBCtrls, Vcl.ComCtrls, RzDTP, RzDBDTP,
  RzButton;

type
  TfrmPlaneacionesClases = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzPanel8: TRzPanel;
    pgPlaneacion: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzDBMemo7: TRzDBMemo;
    RzLabel24: TRzLabel;
    dbmContenido: TRzDBMemo;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzLabel3: TRzLabel;
    RzLabel1: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel23: TRzLabel;
    RzLabel22: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    TabSheet2: TRzTabSheet;
    dbmConceptuales: TRzDBMemo;
    RzLabel25: TRzLabel;
    RzLabel2: TRzLabel;
    dbmProcedimentales: TRzDBMemo;
    RzLabel4: TRzLabel;
    dbmActitudinales: TRzDBMemo;
    TabSheet3: TRzTabSheet;
    RzDBMemo3: TRzDBMemo;
    RzLabel5: TRzLabel;
    RzDBMemo4: TRzDBMemo;
    RzLabel6: TRzLabel;
    RzDBMemo5: TRzDBMemo;
    RzLabel7: TRzLabel;
    TabSheet4: TRzTabSheet;
    TabSheet5: TRzTabSheet;
    RzDBMemo9: TRzDBMemo;
    RzDBMemo10: TRzDBMemo;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzButton4: TRzButton;
    TabSheet6: TRzTabSheet;
    dbmGenericas: TRzDBMemo;
    RzButton5: TRzButton;
    RzLabel8: TRzLabel;
    dbmDisciplinares: TRzDBMemo;
    RzButton6: TRzButton;
    RzLabel9: TRzLabel;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton4Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RzButton5Click(Sender: TObject);
    procedure RzButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlaneacionesClases: TfrmPlaneacionesClases;

implementation

{$R *.dfm}

uses udmData, ufrmSeleccion;

procedure TfrmPlaneacionesClases.RzButton1Click(Sender: TObject);
var
  sLinea: String;
  sTexto: TStringList;
begin
  sTexto:= TStringList.Create;
  with TfrmSeleccion.Create(Self) do
    try
      dmData.cdsPlaneacionesClases.Edit;
      cdsSeleccion.Open;
      sTexto.Text:= dmData.cdsPlaneacionesUnidadesCONTENIDO_TEMATICO.Value;
      for sLinea in sTexto do
      begin
        cdsSeleccion.Append;
        cdsSeleccionDescripcion.Value:= sLinea;
      end;
      if ShowModal = mrOk then
      begin
        cdsSeleccion.First;
        dbmContenido.Lines.Clear;
        while not cdsSeleccion.Eof do
        begin
          if cdsSeleccionSeleccionado.Value then
            dbmContenido.Lines.Add(cdsSeleccionDescripcion.Value);
          cdsSeleccion.Next;
        end;
      end;
    finally
      Free;
    end;
end;

procedure TfrmPlaneacionesClases.RzButton2Click(Sender: TObject);
var
  sLinea: String;
  sTexto: TStringList;
begin
  sTexto:= TStringList.Create;
  with TfrmSeleccion.Create(Self) do
    try
      dmData.cdsPlaneacionesClases.Edit;
      cdsSeleccion.Open;
      sTexto.Text:= dmData.cdsPlaneacionesUnidadesSABERES_CONCEPTUALES.Value;
      for sLinea in sTexto do
      begin
        cdsSeleccion.Append;
        cdsSeleccionDescripcion.Value:= sLinea;
      end;
      if ShowModal = mrOk then
      begin
        cdsSeleccion.First;
        dbmConceptuales.Lines.Clear;
        while not cdsSeleccion.Eof do
        begin
          if cdsSeleccionSeleccionado.Value then
            dbmConceptuales.Lines.Add(cdsSeleccionDescripcion.Value);
          cdsSeleccion.Next;
        end;
      end;
    finally
      Free;
    end;
end;

procedure TfrmPlaneacionesClases.RzButton3Click(Sender: TObject);
var
  sLinea: String;
  sTexto: TStringList;
begin
  sTexto:= TStringList.Create;
  with TfrmSeleccion.Create(Self) do
    try
      dmData.cdsPlaneacionesClases.Edit;
      cdsSeleccion.Open;
      sTexto.Text:= dmData.cdsPlaneacionesUnidadesSABERES_PROCEDIMENTALES.Value;
      for sLinea in sTexto do
      begin
        cdsSeleccion.Append;
        cdsSeleccionDescripcion.Value:= sLinea;
      end;
      if ShowModal = mrOk then
      begin
        cdsSeleccion.First;
        dbmProcedimentales.Lines.Clear;
        while not cdsSeleccion.Eof do
        begin
          if cdsSeleccionSeleccionado.Value then
            dbmProcedimentales.Lines.Add(cdsSeleccionDescripcion.Value);
          cdsSeleccion.Next;
        end;
      end;
    finally
      Free;
    end;
end;

procedure TfrmPlaneacionesClases.RzButton4Click(Sender: TObject);
var
  sLinea: String;
  sTexto: TStringList;
begin
  sTexto:= TStringList.Create;
  with TfrmSeleccion.Create(Self) do
    try
      dmData.cdsPlaneacionesClases.Edit;
      cdsSeleccion.Open;
      sTexto.Text:= dmData.cdsPlaneacionesUnidadesSABERES_ACTITUDINALES.Value;
      for sLinea in sTexto do
      begin
        cdsSeleccion.Append;
        cdsSeleccionDescripcion.Value:= sLinea;
      end;
      if ShowModal = mrOk then
      begin
        cdsSeleccion.First;
        dbmActitudinales.Lines.Clear;
        while not cdsSeleccion.Eof do
        begin
          if cdsSeleccionSeleccionado.Value then
            dbmActitudinales.Lines.Add(cdsSeleccionDescripcion.Value);
          cdsSeleccion.Next;
        end;
      end;
    finally
      Free;
    end;
end;

procedure TfrmPlaneacionesClases.RzButton5Click(Sender: TObject);
var
  sLinea: String;
  sTexto: TStringList;
begin
  sTexto:= TStringList.Create;
  with TfrmSeleccion.Create(Self) do
    try
      dmData.cdsPlaneacionesClases.Edit;
      cdsSeleccion.Open;
      dmData.cdsUnidadesAtributos.First;
      while not dmData.cdsUnidadesAtributos.Eof do
      begin
        dmData.cdsAtributosCompetencias.Locate('ID', dmData.cdsUnidadesAtributosID_ATRIBUTO_COMPETENCIA.Value, []);
        sTexto.Add(dmData.cdsAtributosCompetenciasID.Value + ' ' +
          dmData.cdsAtributosCompetenciasNOMBRE.Value + ' / ' + dmData.cdsUnidadesAtributosCRITERIOS_APRENDIZAJE.Value);
        dmData.cdsUnidadesAtributos.Next;
      end;
      for sLinea in sTexto do
      begin
        cdsSeleccion.Append;
        cdsSeleccionDescripcion.Value:= sLinea;
      end;
      if ShowModal = mrOk then
      begin
        cdsSeleccion.First;
        dbmGenericas.Lines.Clear;
        while not cdsSeleccion.Eof do
        begin
          if cdsSeleccionSeleccionado.Value then
            dbmGenericas.Lines.Add(cdsSeleccionDescripcion.Value);
          cdsSeleccion.Next;
        end;
      end;
    finally
      Free;
    end;
end;

procedure TfrmPlaneacionesClases.RzButton6Click(Sender: TObject);
var
  sLinea: String;
  sTexto: TStringList;
begin
  sTexto:= TStringList.Create;
  with TfrmSeleccion.Create(Self) do
    try
      dmData.cdsPlaneacionesClases.Edit;
      cdsSeleccion.Open;
      dmData.cdsUnidadesCompetencias.First;
      while not dmData.cdsUnidadesCompetencias.Eof do
      begin
        dmData.cdsCompetenciasDisciplinares.Locate('ID_COMPETENCIA_DISCIPLINAR', dmData.cdsUnidadesCompetenciasID_COMPETENCIA_DISCIPLINAR.Value, []);
        sTexto.Add(dmData.cdsCompetenciasDisciplinaresID_COMPETENCIA_DISCIPLINAR.Value + ' ' +
          dmData.cdsCompetenciasDisciplinaresNOMBRE.Value + ' / ' + dmData.cdsUnidadesCompetenciasCRITERIOS_APRENDIZAJE.Value);
        dmData.cdsUnidadesCompetencias.Next;
      end;
      for sLinea in sTexto do
      begin
        cdsSeleccion.Append;
        cdsSeleccionDescripcion.Value:= sLinea;
      end;
      if ShowModal = mrOk then
      begin
        cdsSeleccion.First;
        dbmDisciplinares.Lines.Clear;
        while not cdsSeleccion.Eof do
        begin
          if cdsSeleccionSeleccionado.Value then
            dbmDisciplinares.Lines.Add(cdsSeleccionDescripcion.Value);
          cdsSeleccion.Next;
        end;
      end;
    finally
      Free;
    end;
end;

end.
