object frmPlaneacionesClases: TfrmPlaneacionesClases
  Left = 0
  Top = 0
  Caption = 'Planeaci'#243'n de clase'
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
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 693
    Width = 1008
    TabOrder = 0
  end
  object RzPanel8: TRzPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 693
    Align = alClient
    TabOrder = 1
    object pgPlaneacion: TRzPageControl
      Left = 2
      Top = 2
      Width = 1004
      Height = 689
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
          1000
          666)
        object RzLabel24: TRzLabel
          Left = 16
          Top = 544
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
          Top = 563
          Width = 933
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
        object dbmContenido: TRzDBMemo
          Left = 16
          Top = 62
          Width = 933
          Height = 464
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
          Date = 42983.816897187500000000
          Format = ''
          Time = 42983.816897187500000000
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
          CharCase = ecUpperCase
          FrameController = dmData.RzFrameController2
          ParentColor = True
          TabOrder = 0
        end
        object RzButton1: TRzButton
          Left = 115
          Top = 37
          Caption = 'Copiar'
          TabOrder = 5
          OnClick = RzButton1Click
        end
      end
      object TabSheet6: TRzTabSheet
        Caption = 'Competencias'
        DesignSize = (
          1000
          666)
        object RzLabel8: TRzLabel
          Left = 16
          Top = 11
          Width = 226
          Height = 13
          Caption = 'Genericas (Atributos) / Criterios de aprendizaje'
        end
        object RzLabel9: TRzLabel
          Left = 16
          Top = 318
          Width = 182
          Height = 13
          Caption = 'Disciplinares / Criterios de aprendizaje'
        end
        object dbmGenericas: TRzDBMemo
          Left = 16
          Top = 30
          Width = 961
          Height = 276
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'COMPETENCIAS_GENERICAS'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 0
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
        object RzButton5: TRzButton
          Left = 248
          Top = 5
          Caption = 'Copiar'
          TabOrder = 1
          OnClick = RzButton5Click
        end
        object dbmDisciplinares: TRzDBMemo
          Left = 16
          Top = 343
          Width = 961
          Height = 285
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBtnFace
          DataField = 'COMPETENCIAS_DISCIPLINARES'
          DataSource = dmData.dsPlaneacionesClases
          ParentColor = True
          TabOrder = 2
          FocusColor = clInfoBk
          FrameColor = clBlack
          FrameSides = [sdLeft, sdBottom]
          FrameVisible = True
          FramingPreference = fpCustomFraming
        end
        object RzButton6: TRzButton
          Left = 204
          Top = 312
          Caption = 'Copiar'
          TabOrder = 3
          OnClick = RzButton6Click
        end
      end
      object TabSheet2: TRzTabSheet
        Caption = 'Saberes espec'#237'ficos a desarrollar'
        DesignSize = (
          1000
          666)
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
        object dbmConceptuales: TRzDBMemo
          Left = 16
          Top = 30
          Width = 933
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
        object dbmProcedimentales: TRzDBMemo
          Left = 16
          Top = 150
          Width = 933
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
        object dbmActitudinales: TRzDBMemo
          Left = 16
          Top = 270
          Width = 933
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
        object RzButton2: TRzButton
          Left = 87
          Top = 11
          Caption = 'Copiar'
          TabOrder = 3
          OnClick = RzButton2Click
        end
        object RzButton3: TRzButton
          Left = 100
          Top = 131
          Caption = 'Copiar'
          TabOrder = 4
          OnClick = RzButton3Click
        end
        object RzButton4: TRzButton
          Left = 130
          Top = 251
          Caption = 'Copiar'
          TabOrder = 5
          OnClick = RzButton4Click
        end
      end
      object TabSheet3: TRzTabSheet
        Caption = 'Desarrollo did'#225'ctico'
        DesignSize = (
          1000
          666)
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
          Width = 933
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
          Width = 933
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
          Width = 933
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
          Width = 1000
          Height = 666
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
          Width = 1000
          Height = 666
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
