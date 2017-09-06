unit ufrmModalidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogoBase, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, RzPanel, RzDBNav, RzDBGrid, RzStatus,
  RzDBStat;

type
  TfrmModalidades = class(TfrmCatalogoBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModalidades: TfrmModalidades;

implementation

{$R *.dfm}

uses udmData;

initialization
  RegisterClass(TfrmModalidades);

end.
