object frmINF1511Assignmet5: TfrmINF1511Assignmet5
  Left = 623
  Top = 223
  Width = 502
  Height = 620
  Caption = 'INF1511 - Assignment 5 - For & While Loops'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pageconFORWHILE: TPageControl
    Left = 0
    Top = 0
    Width = 486
    Height = 581
    ActivePage = tabForLoop
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tabForLoop: TTabSheet
      Caption = 'For Loop'
      object lblStartFor: TLabel
        Left = 42
        Top = 357
        Width = 60
        Height = 24
        Caption = 'Start at:'
      end
      object lblEndFor: TLabel
        Left = 250
        Top = 357
        Width = 59
        Height = 24
        Caption = 'End at:'
      end
      object listForLoop: TListBox
        Left = 0
        Top = 0
        Width = 478
        Height = 337
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 0
      end
      object seStartFor: TSpinEdit
        Left = 106
        Top = 352
        Width = 121
        Height = 34
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
      object seEndFor: TSpinEdit
        Left = 314
        Top = 352
        Width = 121
        Height = 34
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
      object btnCountFor: TButton
        Left = 155
        Top = 406
        Width = 168
        Height = 25
        Caption = 'COUNT'
        TabOrder = 3
        OnClick = btnCountForClick
      end
      object btnExecFor: TButton
        Left = 155
        Top = 438
        Width = 168
        Height = 25
        Caption = 'EXECUTION'
        TabOrder = 4
        OnClick = btnExecForClick
      end
      object btnConcatFor: TButton
        Left = 155
        Top = 470
        Width = 168
        Height = 25
        Caption = 'CONCATENATE'
        TabOrder = 5
      end
      object btnResetFor: TButton
        Left = 155
        Top = 502
        Width = 168
        Height = 25
        Caption = 'RESET'
        TabOrder = 6
      end
    end
    object tabWhileLoop: TTabSheet
      Caption = 'While Loop'
      ImageIndex = 1
      object lblStartWhile: TLabel
        Left = 250
        Top = 357
        Width = 59
        Height = 24
        Caption = 'End at:'
      end
      object lblEndWhile: TLabel
        Left = 42
        Top = 357
        Width = 60
        Height = 24
        Caption = 'Start at:'
      end
      object listWhileLoop: TListBox
        Left = 0
        Top = 0
        Width = 478
        Height = 337
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 0
      end
      object seStartWhile: TSpinEdit
        Left = 106
        Top = 352
        Width = 121
        Height = 34
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
      object seEndWhile: TSpinEdit
        Left = 314
        Top = 352
        Width = 121
        Height = 34
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
      object btnCountWhile: TButton
        Left = 155
        Top = 406
        Width = 168
        Height = 25
        Caption = 'COUNT'
        TabOrder = 3
        OnClick = btnCountWhileClick
      end
      object btnExecWhile: TButton
        Left = 155
        Top = 438
        Width = 168
        Height = 25
        Caption = 'EXECUTION'
        TabOrder = 4
        OnClick = btnExecWhileClick
      end
      object btnConcatWhile: TButton
        Left = 155
        Top = 470
        Width = 168
        Height = 25
        Caption = 'CONCATENATE'
        TabOrder = 5
      end
      object btnResetWhile: TButton
        Left = 155
        Top = 502
        Width = 168
        Height = 25
        Caption = 'RESET'
        TabOrder = 6
        OnClick = btnResetWhileClick
      end
    end
  end
end
