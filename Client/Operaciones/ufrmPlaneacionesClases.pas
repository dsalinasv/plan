unit ufrmPlaneacionesClases;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit, RzDBEdit, Data.DB, RzDBNav,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, Vcl.DBCtrls, Vcl.ComCtrls, RzDTP, RzDBDTP;

type
  TfrmPlaneacionesClases = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzPanel8: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzDBMemo7: TRzDBMemo;
    RzLabel24: TRzLabel;
    RzDBMemo6: TRzDBMemo;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzLabel3: TRzLabel;
    RzLabel1: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel23: TRzLabel;
    RzLabel22: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    TabSheet2: TRzTabSheet;
    RzDBMemo8: TRzDBMemo;
    RzLabel25: TRzLabel;
    RzLabel2: TRzLabel;
    RzDBMemo1: TRzDBMemo;
    RzLabel4: TRzLabel;
    RzDBMemo2: TRzDBMemo;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlaneacionesClases: TfrmPlaneacionesClases;

implementation

{$R *.dfm}

uses udmData;

end.
