object frmPlaneacionesClases: TfrmPlaneacionesClases
  Left = 0
  Top = 0
  Caption = 'Planeaci'#243'n de clase'
  ClientHeight = 524
  ClientWidth = 836
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 488
    Width = 836
    TabOrder = 0
  end
  object RzPanel8: TRzPanel
    Left = 0
    Top = 0
    Width = 836
    Height = 488
    Align = alClient
    TabOrder = 1
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 832
      Height = 484
      Hint = ''
      ActivePage = TabSheet1
      ActivePageDefault = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Caption = 'Planeaci'#243'n de clase'
        DesignSize = (
          828
          461)
        object RzLabel24: TRzLabel
          Left = 16
          Top = 339
          Width = 104
          Height = 13
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Prop'#243'sito de la sesi'#243'n'
        end
        object RzLabel3: TRzLabel
          Left = 370
          Top = 16
          Width = 29
          Height = 13
          Caption = 'Fecha'
        end
        object RzLabel1: TRzLabel
          Left = 194
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Horas'
        end
        object RzLabel23: TRzLabel
          Left = 16
          Top = 43
          Width = 93
          Height = 13
          Caption = 'Contenido tem'#225'tico'
        end
        object RzLabel22: TRzLabel
          Left = 16
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Sesi'#243'n'
        end
        object RzDBMemo7: TRzDBMemo
          Left = 16
          Top = 358
          Width = 761
          Height = 89
          Anchors = [akLeft, akRight, akBottom]
          Color = clBtnFace
          DataField = 'PROPOSITO_SESION'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 4
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
        object RzDBMemo6: TRzDBMemo
          Left = 16
          Top = 62
          Width = 761
          Height = 259
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBtnFace
          DataField = 'CONTENIDO_TEMATICO'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 3
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
        object RzDBDateTimePicker1: TRzDBDateTimePicker
          Left = 405
          Top = 8
          Width = 88
          Height = 21
          Format = ''
          ParentColor = True
          TabOrder = 2
          FrameController = dmData.RzFrameController2
          FramingPreference = fpCustomFraming
          ShowToday = True
          DataField = 'FECHA'
          DataSource = dmData.dsPlaneacionesClases
        end
        object RzDBEdit1: TRzDBEdit
          Left = 228
          Top = 8
          Width = 122
          Height = 21
          DataSource = dmData.dsPlaneacionesClases
          DataField = 'HORAS'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          FrameController = dmData.RzFrameController2
          ParentColor = True
          TabOrder = 1
        end
        object RzDBEdit2: TRzDBEdit
          Left = 55
          Top = 8
          Width = 122
          Height = 21
          DataSource = dmData.dsPlaneacionesClases
          DataField = 'SESION'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          FrameController = dmData.RzFrameController2
          ParentColor = True
          TabOrder = 0
        end
      end
      object TabSheet2: TRzTabSheet
        Caption = 'Saberes espec'#237'ficos a desarrollar'
        DesignSize = (
          828
          461)
        object RzLabel25: TRzLabel
          Left = 16
          Top = 17
          Width = 65
          Height = 13
          Caption = 'Conceptuales'
        end
        object RzLabel2: TRzLabel
          Left = 16
          Top = 137
          Width = 78
          Height = 13
          Caption = 'Procedimentales'
        end
        object RzLabel4: TRzLabel
          Left = 16
          Top = 257
          Width = 108
          Height = 13
          Caption = 'Actitudinales/valorales'
        end
        object RzDBMemo8: TRzDBMemo
          Left = 16
          Top = 30
          Width = 761
          Height = 89
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'SABERES_CONCEPTUALES'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 0
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
        object RzDBMemo1: TRzDBMemo
          Left = 16
          Top = 150
          Width = 761
          Height = 89
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'SABERES_PROCEDIMENTALES'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 1
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
        object RzDBMemo2: TRzDBMemo
          Left = 16
          Top = 270
          Width = 761
          Height = 89
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'SABERES_ACTITUDINALES'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 2
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
      end
      object TabSheet3: TRzTabSheet
        Caption = 'Desarrollo did'#225'ctico'
        DesignSize = (
          828
          461)
        object RzLabel5: TRzLabel
          Left = 16
          Top = 257
          Width = 29
          Height = 13
          Caption = 'Cierre'
        end
        object RzLabel6: TRzLabel
          Left = 16
          Top = 137
          Width = 48
          Height = 13
          Caption = 'Desarrollo'
        end
        object RzLabel7: TRzLabel
          Left = 16
          Top = 17
          Width = 43
          Height = 13
          Caption = 'Apertura'
        end
        object RzDBMemo3: TRzDBMemo
          Left = 16
          Top = 270
          Width = 761
          Height = 89
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'ACTIVIDAD_CIERRE'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 2
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
        object RzDBMemo4: TRzDBMemo
          Left = 16
          Top = 150
          Width = 761
          Height = 89
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'ACTIVIDAD_DESARROLLO'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 1
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
        object RzDBMemo5: TRzDBMemo
          Left = 16
          Top = 30
          Width = 761
          Height = 89
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'ACTIVIDAD_APERTURA'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 0
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
      end
      object TabSheet4: TRzTabSheet
        Caption = 'Materiales/medios/recursos did'#225'cticos'
        object RzDBMemo9: TRzDBMemo
          Left = 0
          Top = 0
          Width = 828
          Height = 461
          Align = alClient
          Color = clBtnFace
          DataField = 'RECURSOS_MATERIALES'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 0
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
      end
      object TabSheet5: TRzTabSheet
        Caption = 'Comentarios/Observaciones'
        object RzDBMemo10: TRzDBMemo
          Left = 0
          Top = 0
          Width = 828
          Height = 461
          Align = alClient
          Color = clBtnFace
          DataField = 'OBSERVACIONES_COMENTARIOS'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 0
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
      end
    end
  end
end
