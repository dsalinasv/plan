inherited frmEmpleados: TfrmEmpleados
  Caption = 'Empleados'
  ExplicitWidth = 749
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgData: TRzDBGrid
    DataSource = dmData.dsEmpleados
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'No. Empleado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'Empleados'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERFIL'
        Title.Caption = 'Perfil'
        Visible = True
      end>
  end
  inherited RzStatusBar1: TRzStatusBar
    inherited RzDBStateStatus1: TRzDBStateStatus
      DataSource = dmData.dsEmpleados
    end
  end
  inherited RzPanel7: TRzPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 733
    inherited RzDBNavigator1: TRzDBNavigator
      DataSource = dmData.dsEmpleados
      Hints.Strings = ()
    end
  end
end
