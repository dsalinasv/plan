unit ufrmInstrumentosEvaluacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogoBase, Data.DB, RzDBNav,
  RzPanel, RzStatus, RzDBStat, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, RzDBGrid;

type
  TfrmInstrumentosEvaluacion = class(TfrmCatalogoBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstrumentosEvaluacion: TfrmInstrumentosEvaluacion;

implementation

{$R *.dfm}

uses udmData;

initialization
  RegisterClass(TfrmInstrumentosEvaluacion);

end.
