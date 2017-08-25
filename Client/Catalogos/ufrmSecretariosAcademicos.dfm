inherited frmSecretariosAcademicos: TfrmSecretariosAcademicos
  Caption = 'Secretarios acad'#233'micos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgData: TRzDBGrid
    DataSource = dmData.dsSecretariosAcademicos
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'Secretarios acad'#233'micos'
        Visible = True
      end>
  end
  inherited RzStatusBar1: TRzStatusBar
    inherited RzDBStateStatus1: TRzDBStateStatus
      DataSource = dmData.dsSecretariosAcademicos
    end
  end
  inherited RzPanel7: TRzPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 733
    inherited RzDBNavigator1: TRzDBNavigator
      DataSource = dmData.dsSecretariosAcademicos
      Hints.Strings = ()
    end
  end
end
