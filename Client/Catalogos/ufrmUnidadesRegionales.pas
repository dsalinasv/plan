unit ufrmUnidadesRegionales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogoBase, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, RzPanel, RzDBNav, RzDBGrid, RzStatus,
  RzDBStat;

type
  TfrmUnidadesRegionales = class(TfrmCatalogoBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnidadesRegionales: TfrmUnidadesRegionales;

implementation

{$R *.dfm}

uses udmData;

initialization
  RegisterClass(TfrmUnidadesRegionales);

end.
