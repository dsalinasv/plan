inherited frmPlanes: TfrmPlanes
  Caption = 'Planes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgData: TRzDBGrid
    DataSource = dmData.dsPlanes
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'Planes'
        Visible = True
      end>
  end
  inherited RzStatusBar1: TRzStatusBar
    inherited RzDBStateStatus1: TRzDBStateStatus
      DataSource = dmData.dsPlanes
    end
  end
  inherited RzPanel7: TRzPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 733
    inherited RzDBNavigator1: TRzDBNavigator
      DataSource = dmData.dsPlanes
      Hints.Strings = ()
    end
  end
end
