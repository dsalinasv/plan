inherited frmUnidadesRegionales: TfrmUnidadesRegionales
  Caption = 'Unidades Regionales'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgData: TRzDBGrid
    DataSource = dmData.dsUnidadesRegionales
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'Unidades Regionales'
        Visible = True
      end>
  end
  inherited RzStatusBar1: TRzStatusBar
    inherited RzDBStateStatus1: TRzDBStateStatus
      DataSource = dmData.dsUnidadesAcademicas
    end
  end
  inherited RzPanel7: TRzPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 733
    inherited RzDBNavigator1: TRzDBNavigator
      DataSource = dmData.dsUnidadesAcademicas
      Hints.Strings = ()
    end
  end
end
