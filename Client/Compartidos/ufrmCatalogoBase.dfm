object frmCatalogoBase: TfrmCatalogoBase
  Left = 0
  Top = 0
  Caption = 'Catalogo Base'
  ClientHeight = 291
  ClientWidth = 733
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
  object dbgData: TRzDBGrid
    Left = 0
    Top = 35
    Width = 733
    Height = 237
    Align = alClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 272
    Width = 733
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 1
    object RzDBStateStatus1: TRzDBStateStatus
      Left = 0
      Top = 0
      Height = 19
      Align = alLeft
      ExplicitLeft = 418
      ExplicitHeight = 20
    end
  end
  object RzPanel7: TRzPanel
    Left = 0
    Top = 0
    Width = 733
    Height = 35
    Align = alTop
    TabOrder = 2
    ExplicitLeft = -304
    ExplicitTop = 2
    ExplicitWidth = 1037
    object RzDBNavigator1: TRzDBNavigator
      Left = 10
      Top = 4
      Width = 230
      Height = 25
      BorderOuter = fsNone
      TabOrder = 0
    end
  end
end
