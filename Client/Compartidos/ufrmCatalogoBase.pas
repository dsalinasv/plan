unit ufrmCatalogoBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, RzPanel, RzDBNav,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzStatus, RzDBStat;

type
  TfrmCatalogoBase = class(TForm)
    dbgData: TRzDBGrid;
    RzStatusBar1: TRzStatusBar;
    RzDBStateStatus1: TRzDBStateStatus;
    RzPanel7: TRzPanel;
    RzDBNavigator1: TRzDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoBase: TfrmCatalogoBase;

implementation

{$R *.dfm}

end.
