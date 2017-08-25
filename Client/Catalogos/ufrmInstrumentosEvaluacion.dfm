inherited frmInstrumentosEvaluacion: TfrmInstrumentosEvaluacion
  Caption = 'Instrumentos de evaluaci'#243'n'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgData: TRzDBGrid
    DataSource = dmData.dsInstrumentosEvaluacion
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Visible = True
      end>
  end
  inherited RzStatusBar1: TRzStatusBar
    inherited RzDBStateStatus1: TRzDBStateStatus
      DataSource = dmData.dsInstrumentosEvaluacion
    end
  end
  inherited RzPanel7: TRzPanel
    inherited RzDBNavigator1: TRzDBNavigator
      DataSource = dmData.dsInstrumentosEvaluacion
      Hints.Strings = ()
    end
  end
end
