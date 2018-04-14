object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 172
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblContrasenia: TRzLabel
    Left = 23
    Top = 109
    Width = 60
    Height = 13
    Caption = 'Contrase'#241'a:'
    Transparent = True
  end
  object lblUsuario: TRzLabel
    Left = 41
    Top = 77
    Width = 40
    Height = 13
    Caption = 'Usuario:'
    Transparent = True
  end
  object RzLabel1: TRzLabel
    Left = 57
    Top = 50
    Width = 24
    Height = 13
    Caption = 'Plan:'
    Transparent = True
  end
  object RzLabel2: TRzLabel
    Left = 0
    Top = 23
    Width = 81
    Height = 13
    Caption = 'Unidad Regional:'
    Transparent = True
  end
  object btnCancelar: TRzButton
    Left = 193
    Top = 139
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = btnCancelarClick
  end
  object btnOK: TRzButton
    Left = 89
    Top = 139
    Default = True
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object txtContrasenia: TRzEdit
    Left = 89
    Top = 106
    Width = 225
    Height = 21
    Text = ''
    PasswordChar = '*'
    TabOrder = 2
  end
  object cmbEmpleados: TDBLookupComboBox
    Left = 87
    Top = 73
    Width = 227
    Height = 21
    KeyField = 'ID'
    ListField = 'NOMBRE'
    ListSource = dmData.dsEmpleados
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 87
    Top = 46
    Width = 227
    Height = 21
    KeyField = 'ID_PLAN'
    ListField = 'NOMBRE'
    ListSource = dmData.dsPlanes
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 87
    Top = 19
    Width = 227
    Height = 21
    KeyField = 'ID_UNIDAD_REGIONAL'
    ListField = 'NOMBRE'
    ListSource = dmData.dsUnidadesRegionales
    TabOrder = 5
  end
end
