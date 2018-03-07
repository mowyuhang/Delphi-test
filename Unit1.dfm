object Form1: TForm1
  Left = 241
  Top = 137
  Width = 979
  Height = 563
  Caption = #29677#32423#65306#27979#25511#19968#29677' '#22995#21517#65306#27611#23431#33322
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -19
  Font.Name = #23435#20307
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    Left = 88
    Top = 32
    Width = 761
    Height = 401
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Exercise2'
      object Memo1: TMemo
        Left = 48
        Top = 24
        Width = 281
        Height = 297
        Lines.Strings = (
          #32467#26524#65306)
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Button1: TButton
        Left = 480
        Top = 64
        Width = 169
        Height = 81
        Caption = #35745#31639
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Exercise3'
      ImageIndex = 1
      object Label1: TLabel
        Left = 368
        Top = 16
        Width = 71
        Height = 19
        Caption = #36755#20837'X'#65306
      end
      object Label2: TLabel
        Left = 544
        Top = 16
        Width = 211
        Height = 19
        Caption = #65288#36755#20837'X'#21518#20877#36827#34892#35745#31639#65289
      end
      object Memo2: TMemo
        Left = 32
        Top = 24
        Width = 297
        Height = 289
        Lines.Strings = (
          #32467#26524':')
        TabOrder = 0
      end
      object BitBtn5: TBitBtn
        Left = 472
        Top = 168
        Width = 161
        Height = 73
        Caption = #35745#31639
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object Edit1: TEdit
        Left = 440
        Top = 16
        Width = 81
        Height = 27
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Exercise4'
      ImageIndex = 2
      object ChtCurve: TChart
        Left = 16
        Top = 32
        Width = 481
        Height = 257
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TChart')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 5.000000000000000000
        BottomAxis.Minimum = -5.000000000000000000
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 10.000000000000000000
        LeftAxis.Minimum = -5.000000000000000000
        LeftAxis.Title.Caption = 'Y=10cos(4t)'
        View3D = False
        TabOrder = 0
        object Series1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object BitBtn2: TBitBtn
        Left = 544
        Top = 64
        Width = 161
        Height = 57
        Caption = #32472#21046#26354#32447
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BtnSave: TBitBtn
        Left = 544
        Top = 144
        Width = 161
        Height = 65
        Caption = #20445#23384#26354#32447#25968#25454
        TabOrder = 2
        OnClick = BtnSaveClick
      end
      object BitBtn4: TBitBtn
        Left = 544
        Top = 224
        Width = 161
        Height = 65
        Caption = #20445#23384#26354#32447#22270
        TabOrder = 3
        OnClick = BitBtn4Click
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 704
    Top = 448
    Width = 241
    Height = 57
    Caption = 'Close'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object SaveDialog: TSaveDialog
    Left = 28
    Top = 6
  end
end
