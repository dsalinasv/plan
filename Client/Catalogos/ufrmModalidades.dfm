inherited frmModalidades: TfrmModalidades
  Caption = 'Modalidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgData: TRzDBGrid
    DataSource = dmData.dsModalidades
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'Modalidades'
        Visible = True
      end>
  end
  inherited RzStatusBar1: TRzStatusBar
    inherited RzDBStateStatus1: TRzDBStateStatus
      DataSource = dmData.dsModalidades
    end
  end
  inherited RzPanel7: TRzPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 733
    inherited RzDBNavigator1: TRzDBNavigator
      DataSource = dmData.dsModalidades
      Hints.Strings = ()
    end
  end
end
