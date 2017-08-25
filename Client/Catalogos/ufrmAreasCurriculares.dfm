inherited frmAreasCurriculares: TfrmAreasCurriculares
  Caption = #193'reas curriculares'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgData: TRzDBGrid
    DataSource = dmData.dsAreasCurriculares
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = #193'reas curriulares'
        Visible = True
      end>
  end
  inherited RzStatusBar1: TRzStatusBar
    inherited RzDBStateStatus1: TRzDBStateStatus
      DataSource = dmData.dsAreasCurriculares
    end
  end
  inherited RzPanel7: TRzPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 733
    inherited RzDBNavigator1: TRzDBNavigator
      DataSource = dmData.dsAreasCurriculares
      Hints.Strings = ()
    end
  end
end
