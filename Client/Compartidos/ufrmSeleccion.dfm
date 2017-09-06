object frmSeleccion: TfrmSeleccion
  Left = 0
  Top = 0
  Caption = 'Selecciona los elementos'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 693
    Width = 1008
    TabOrder = 0
    ExplicitTop = 405
    ExplicitWidth = 624
  end
  object dbgSeleccion: TDBGrid
    Left = 0
    Top = 0
    Width = 1008
    Height = 693
    Align = alClient
    DataSource = dsSeleccion
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgSeleccionCellClick
    OnColExit = dbgSeleccionColExit
    OnDrawColumnCell = dbgSeleccionDrawColumnCell
    OnKeyPress = dbgSeleccionKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Seleccionado'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Title.Caption = 'Descripci'#243'n'
        Visible = True
      end>
  end
  object chkSeleccion: TRzDBCheckBox
    Left = 264
    Top = 232
    Width = 19
    Height = 15
    DataField = 'Seleccionado'
    DataSource = dsSeleccion
    ValueChecked = 'Copiar'
    ValueUnchecked = 'No copiar'
    TabOrder = 2
    Visible = False
    WordWrap = True
    OnClick = chkSeleccionClick
  end
  object cdsSeleccion: TClientDataSet
    PersistDataPacket.Data = {
      4F0000009619E0BD0100000018000000020000000000030000004F000C53656C
      656363696F6E61646F02000300000000000B4465736372697063696F6E010049
      000000010005574944544802000200FA000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seleccionado'
        DataType = ftBoolean
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 152
    Top = 32
    object cdsSeleccionSeleccionado: TBooleanField
      FieldName = 'Seleccionado'
    end
    object cdsSeleccionDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 250
    end
  end
  object dsSeleccion: TDataSource
    DataSet = cdsSeleccion
    Left = 152
    Top = 80
  end
end
