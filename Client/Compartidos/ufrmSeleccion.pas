unit ufrmSeleccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.ExtCtrls, RzPanel, RzDlgBtn, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzButton,
  RzRadChk, RzDBChk, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfrmSeleccion = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    cdsSeleccion: TClientDataSet;
    dsSeleccion: TDataSource;
    cdsSeleccionSeleccionado: TBooleanField;
    dbgSeleccion: TDBGrid;
    chkSeleccion: TRzDBCheckBox;
    cdsSeleccionDescripcion: TStringField;
    procedure dbgSeleccionCellClick(Column: TColumn);
    procedure dbgSeleccionDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkSeleccionClick(Sender: TObject);
    procedure dbgSeleccionKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSeleccionColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    GridOriginalOptions : TDBGridOptions;
  public
    { Public declarations }
  end;

var
  frmSeleccion: TfrmSeleccion;

implementation

{$R *.dfm}

uses Vcl.Themes;

procedure TfrmSeleccion.chkSeleccionClick(Sender: TObject);
begin
  if chkSeleccion.Checked then
    chkSeleccion.Caption := chkSeleccion.ValueChecked
  else
    chkSeleccion.Caption := chkSeleccion.ValueUnChecked;
end;

procedure TfrmSeleccion.dbgSeleccionCellClick(Column: TColumn);
begin
  if Column.Field.DataType = ftBoolean then
  begin
    Column.Grid.DataSource.DataSet.Edit;
    Column.Field.Value:= not Column.Field.AsBoolean;
    Column.Grid.DataSource.DataSet.Post;
  end;
end;

procedure TfrmSeleccion.dbgSeleccionColExit(Sender: TObject);
begin
  if dbgSeleccion.SelectedField.FieldName = chkSeleccion.DataField then
    chkSeleccion.Visible := False;
end;

procedure TfrmSeleccion.dbgSeleccionDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  CtrlState : array[Boolean] of Integer =
    (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
  CtrlStateXP: Array[Boolean] of TThemedButton =
    (tbCheckBoxUncheckedNormal, tbCheckBoxCheckedNormal);
var
  R: TRect;
  Details: TThemedElementDetails;
begin
  if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = chkSeleccion.DataField) then
    begin
      chkSeleccion.Left := Rect.Left + TDBGrid(Sender).Left + 2;
      chkSeleccion.Top := Rect.Top + TDBGrid(Sender).Top + 2;
      chkSeleccion.Width := Rect.Right - Rect.Left;
      chkSeleccion.Height := Rect.Bottom - Rect.Top;
      chkSeleccion.Visible := True;
    end
  end
  else
  begin
    if (Column.Field.FieldName = chkSeleccion.DataField) then
    begin
      TDBGrid(Sender).Canvas.FillRect(Rect);
      if StyleServices.Enabled then
      begin
        Details := StyleServices.GetElementDetails(CtrlStateXP[Column.Field.AsBoolean]);
        StyleServices.DrawElement(TDBGrid(Sender).Canvas.Handle, Details, Rect);
        if not (gdFocused in State) then
          TDBGrid(Sender).Canvas.Brush.Color := StyleServices.GetSystemColor(clHighlight);
      end
      else
      begin
        R := Rect;
        InflateRect(R, -2, -2);
        DrawFrameControl(TDBGrid(Sender).Canvas.Handle, R, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]);
      end;
    end;
  end;
end;

procedure TfrmSeleccion.dbgSeleccionKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then Exit;
  if (dbgSeleccion.SelectedField.FieldName = chkSeleccion.DataField) then
  begin
    chkSeleccion.SetFocus;
    SendMessage(chkSeleccion.Handle, WM_Char, word(Key), 0);
  end;
end;

procedure TfrmSeleccion.FormCreate(Sender: TObject);
begin
  chkSeleccion.Color:= dbgSeleccion.Color;
end;

end.
