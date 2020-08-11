object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 365
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 8
    Top = 16
    Width = 119
    Height = 13
    Caption = 'Digite o n'#250'm da nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid3: TDBGrid
    Left = 3
    Top = 150
    Width = 406
    Height = 169
    Ctl3D = False
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDA'
        Title.Caption = 'Codigo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENDA'
        Title.Caption = 'Data Compra'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDA'
        Title.Caption = 'V'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 22
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 415
    Top = 38
    Width = 320
    Height = 281
    Ctl3D = False
    DataSource = DataSource2
    Options = [dgTitles, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_UNITARIO'
        Title.Caption = 'Pre'#231'o'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'qtde'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Title.Caption = 'Total'
        Width = 74
        Visible = True
      end>
  end
  object pnVenda: TGroupBox
    Left = 2
    Top = 38
    Width = 407
    Height = 103
    TabOrder = 2
    object Label3: TLabel
      Left = 14
      Top = 10
      Width = 32
      Height = 13
      Caption = 'Data '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 163
      Top = 49
      Width = 79
      Height = 13
      Caption = 'Valor da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 254
      Top = 49
      Width = 63
      Height = 13
      Caption = 'Valor Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 98
      Top = 48
      Width = 55
      Height = 13
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rbOrcamento: TRadioButton
      Left = 240
      Top = 9
      Width = 86
      Height = 17
      Caption = 'Or'#231'amento'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rbVenda: TRadioButton
      Left = 332
      Top = 9
      Width = 61
      Height = 17
      Caption = 'Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 322
      Top = 49
      Width = 76
      Height = 42
      Caption = 'ALTERAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 34
      Width = 86
      Height = 64
      Caption = 'Desconto'
      TabOrder = 3
      object rbPerc: TRadioButton
        Left = 8
        Top = 16
        Width = 41
        Height = 17
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object rbDescDinheiro: TRadioButton
        Left = 40
        Top = 17
        Width = 41
        Height = 17
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 8
        Top = 37
        Width = 71
        Height = 21
        TabOrder = 2
      end
    end
    object Edit3: TEdit
      Left = 99
      Top = 67
      Width = 57
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 165
      Top = 67
      Width = 76
      Height = 21
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 244
      Top = 68
      Width = 71
      Height = 21
      TabOrder = 6
    end
  end
  object Button3: TButton
    Left = 25
    Top = 325
    Width = 115
    Height = 32
    Caption = 'Exluir nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 131
    Top = 14
    Width = 55
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
  object Button4: TButton
    Left = 191
    Top = 9
    Width = 102
    Height = 25
    Caption = 'Localizar Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Button6: TButton
    Left = 146
    Top = 326
    Width = 171
    Height = 31
    Caption = 'Imprimir Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DateTimePicker1: TDateTimePicker
    Left = 50
    Top = 45
    Width = 186
    Height = 21
    Date = 40430.811188321760000000
    Time = 40430.811188321760000000
    TabOrder = 7
  end
  object DataSource1: TDataSource
    Left = 112
    Top = 184
  end
  object DataSource2: TDataSource
    Left = 32
    Top = 184
  end
  object DataSource3: TDataSource
    Left = 72
    Top = 184
  end
end
