object F_Venda: TF_Venda
  Left = 0
  Top = 0
  Caption = 'F_Venda'
  ClientHeight = 435
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 176
    Align = alTop
    TabOrder = 0
    object Label10: TLabel
      Left = 13
      Top = 31
      Width = 39
      Height = 13
      Caption = 'Campo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 4
      Top = 57
      Width = 49
      Height = 13
      Caption = 'Procurar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 146
      Top = 4
      Width = 118
      Height = 16
      Caption = 'Pesquisa Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 530
      Top = 4
      Width = 97
      Height = 13
      Caption = 'Dados do cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object spPesquisa: TSpeedButton
      Left = 250
      Top = 48
      Width = 40
      Height = 26
      Caption = 'OK'
      OnClick = spPesquisaClick
    end
    object cbCampo: TComboBox
      Left = 54
      Top = 27
      Width = 189
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object edtProcurar: TEdit
      Left = 54
      Top = 52
      Width = 190
      Height = 21
      TabOrder = 1
      OnChange = edtProcurarChange
      OnKeyPress = edtProcurarKeyPress
    end
    object rbContem: TRadioButton
      Left = 247
      Top = 29
      Width = 62
      Height = 17
      Caption = 'Cont'#233'm'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object rbComeca: TRadioButton
      Left = 315
      Top = 28
      Width = 58
      Height = 17
      Caption = 'Come'#231'a'
      TabOrder = 3
    end
    object botaoComprar: TButton
      Left = 296
      Top = 51
      Width = 111
      Height = 23
      Caption = 'Iniciar Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = botaoComprarClick
    end
    object DBGrid2: TDBGrid
      Left = 12
      Top = 80
      Width = 403
      Height = 87
      Ctl3D = False
      DataSource = dtsPesqCliente
      Options = [dgTitles, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Nome do Cliente'
          Width = 356
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 439
      Top = 23
      Width = 279
      Height = 144
      BevelInner = bvLowered
      Color = clGray
      TabOrder = 6
      object Label11: TLabel
        Left = 28
        Top = 7
        Width = 37
        Height = 13
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dblblNome: TDBText
        Left = 69
        Top = 6
        Width = 49
        Height = 13
        AutoSize = True
        DataField = 'CLIENTE'
        DataSource = dtsPesqCliente
      end
      object Label13: TLabel
        Left = 6
        Top = 22
        Width = 59
        Height = 13
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText10: TDBText
        Left = 68
        Top = 24
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'ENDERECO'
        DataSource = dtsPesqCliente
      end
      object Label14: TLabel
        Left = 27
        Top = 39
        Width = 38
        Height = 13
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText11: TDBText
        Left = 69
        Top = 39
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'bairro'
        DataSource = dtsPesqCliente
      end
      object Label15: TLabel
        Left = 44
        Top = 70
        Width = 21
        Height = 13
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText12: TDBText
        Left = 69
        Top = 70
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'uf'
        DataSource = dtsPesqCliente
      end
      object Label22: TLabel
        Left = 35
        Top = 86
        Width = 29
        Height = 13
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText14: TDBText
        Left = 70
        Top = 86
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'cep'
        DataSource = dtsPesqCliente
      end
      object Label24: TLabel
        Left = 23
        Top = 56
        Width = 44
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText15: TDBText
        Left = 70
        Top = 56
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'cidade'
        DataSource = dtsPesqCliente
      end
      object Label25: TLabel
        Left = 33
        Top = 101
        Width = 33
        Height = 13
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText16: TDBText
        Left = 68
        Top = 101
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'FONE'
        DataSource = dtsPesqCliente
      end
      object DBText13: TDBText
        Left = 67
        Top = 120
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'CELULAR'
        DataSource = dtsPesqCliente
      end
      object Label21: TLabel
        Left = 17
        Top = 120
        Width = 44
        Height = 13
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
  end
  object pnItens: TPanel
    Left = 0
    Top = 176
    Width = 483
    Height = 259
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 380
      Top = 13
      Width = 35
      Height = 13
      Caption = 'Quant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 312
      Top = 12
      Width = 34
      Height = 13
      Caption = 'Pre'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbDescricao: TEdit
      Left = 87
      Top = 27
      Width = 204
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
      OnChange = dbDescricaoChange
      OnKeyPress = dbDescricaoKeyPress
    end
    object Button2: TButton
      Left = 439
      Top = 20
      Width = 39
      Height = 24
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 50
      Width = 472
      Height = 206
      Ctl3D = False
      DataSource = dtsItens
      Options = [dgTitles, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Id_produto'
          Title.Caption = 'Codigo'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 185
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Preco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorTotal'
          Visible = True
        end>
    end
    object DBGrid4: TDBGrid
      Left = 10
      Top = 53
      Width = 423
      Height = 180
      Ctl3D = False
      DataSource = dtsProduto
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_GRUPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_REAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_TEMPORARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_INICIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Visible = True
        end>
    end
    object rbCodigo: TRadioButton
      Left = 11
      Top = 8
      Width = 59
      Height = 17
      Caption = 'C'#243'digo'
      Checked = True
      TabOrder = 8
      TabStop = True
      OnClick = rbCodigoClick
    end
    object rbDescricao: TRadioButton
      Left = 132
      Top = 9
      Width = 81
      Height = 17
      Caption = 'Descri'#231#227'o'
      TabOrder = 7
      OnClick = rbDescricaoClick
    end
    object dbCodPro: TEdit
      Left = 9
      Top = 28
      Width = 76
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnChange = dbCodProChange
      OnKeyPress = dbCodProKeyPress
    end
    object dbPreco: TEdit
      Left = 297
      Top = 28
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = dbPrecoKeyPress
    end
    object dbQuant: TEdit
      Left = 373
      Top = 28
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = dbQuantKeyPress
    end
  end
  object Panel2: TPanel
    Left = 486
    Top = 177
    Width = 217
    Height = 245
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 155
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label4: TLabel
      Left = 32
      Top = 51
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label5: TLabel
      Left = 35
      Top = 80
      Width = 23
      Height = 13
      Caption = 'Hora'
    end
    object dbDesconto: TEdit
      Left = 67
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 69
      Top = 48
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object rbVenda: TRadioButton
      Left = 127
      Top = 102
      Width = 57
      Height = 17
      Caption = 'Venda'
      TabOrder = 2
    end
    object rbOrcamento: TRadioButton
      Left = 31
      Top = 102
      Width = 90
      Height = 17
      Caption = 'Or'#231'amento'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object Button1: TButton
      Left = 5
      Top = 200
      Width = 72
      Height = 25
      Caption = 'Limpar itens'
      TabOrder = 4
      OnClick = Button1Click
    end
    object butFinalizar: TButton
      Left = 77
      Top = 199
      Width = 62
      Height = 25
      Caption = 'Finalizar(F3)'
      TabOrder = 5
      OnClick = butFinalizarClick
    end
    object Button4: TButton
      Left = 145
      Top = 199
      Width = 65
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 68
      Top = 75
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 78
      Top = 152
      Width = 121
      Height = 21
      DataField = 'SubTotal'
      DataSource = dtsItens
      Enabled = False
      TabOrder = 8
    end
  end
  object dtsPesqCliente: TDataSource
    DataSet = DMPesq.cdsPesq_Cliente
    Left = 448
    Top = 8
  end
  object cdsItens: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    OnCalcFields = CdsItensCalcFields
    Left = 88
    Top = 272
    Data = {
      6C0000009619E0BD0100000018000000040000000000030000006C000A49645F
      70726F6475746F04000100000000000944657363726963616F01004900000001
      00055749445448020002003C000A5175616E7469646164650800040000000000
      05507265636F08000400000000000000}
    object cdsItensId_produto: TIntegerField
      FieldName = 'Id_produto'
    end
    object cdsItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object cdsItensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object cdsItensPreco: TFloatField
      FieldName = 'Preco'
    end
    object cdsItensValorTotal: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ValorTotal'
    end
    object cdsItensSubTotal: TAggregateField
      FieldName = 'SubTotal'
      Active = True
      Expression = 'sum(ValorTotal)'
    end
  end
  object dtsItens: TDataSource
    DataSet = cdsItens
    Left = 184
    Top = 272
  end
  object dtsProduto: TDataSource
    DataSet = DMPesq.cdsPesq_Produto_aux
    Left = 248
    Top = 152
  end
end
