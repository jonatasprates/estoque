unit U_Venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBClient,
  Mask;

type
  TF_Venda = class(TForm)
    Panel1: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label30: TLabel;
    spPesquisa: TSpeedButton;
    cbCampo: TComboBox;
    edtProcurar: TEdit;
    rbContem: TRadioButton;
    rbComeca: TRadioButton;
    botaoComprar: TButton;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label11: TLabel;
    dblblNome: TDBText;
    Label13: TLabel;
    DBText10: TDBText;
    Label14: TLabel;
    DBText11: TDBText;
    Label15: TLabel;
    DBText12: TDBText;
    Label22: TLabel;
    DBText14: TDBText;
    Label24: TLabel;
    DBText15: TDBText;
    Label25: TLabel;
    DBText16: TDBText;
    pnItens: TPanel;
    Label1: TLabel;
    Label17: TLabel;
    dbDescricao: TEdit;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DBGrid4: TDBGrid;
    rbCodigo: TRadioButton;
    rbDescricao: TRadioButton;
    dbCodPro: TEdit;
    dbPreco: TEdit;
    dbQuant: TEdit;
    Panel2: TPanel;
    dbDesconto: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rbVenda: TRadioButton;
    rbOrcamento: TRadioButton;
    Button1: TButton;
    butFinalizar: TButton;
    Button4: TButton;
    Edit4: TEdit;
    Label5: TLabel;
    dtsPesqCliente: TDataSource;
    DBText13: TDBText;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    cdsItens: TClientDataSet;
    dtsItens: TDataSource;
    cdsItensId_produto: TIntegerField;
    cdsItensDescricao: TStringField;
    cdsItensQuantidade: TFloatField;
    cdsItensSubTotal: TAggregateField;
    cdsItensValorTotal: TFloatField;
    cdsItensPreco: TFloatField;
    dtsProduto: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure spPesquisaClick(Sender: TObject);
    procedure edtProcurarChange(Sender: TObject);
    procedure CdsItensCalcFields(DataSet: TDataSet);
    procedure dbCodProChange(Sender: TObject);
    procedure dbDescricaoChange(Sender: TObject);
    procedure dbCodProKeyPress(Sender: TObject; var Key: Char);
    procedure dbDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure dbPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure rbCodigoClick(Sender: TObject);
    procedure rbDescricaoClick(Sender: TObject);
    procedure botaoComprarClick(Sender: TObject);
    procedure edtProcurarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure butFinalizarClick(Sender: TObject);
    procedure dbQuantKeyPress(Sender: TObject; var Key: Char);
  private
   procedure limpar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Venda: TF_Venda;

implementation

uses U_DMPesq, U_DM, U_FinalizaVenda;

{$R *.dfm}

procedure TF_Venda.botaoComprarClick(Sender: TObject);
begin
  if rbCodigo.Checked then
    dbCodPro.SetFocus
  else if rbDescricao.Checked then
    dbDescricao.SetFocus;
end;

procedure TF_Venda.butFinalizarClick(Sender: TObject);
begin
  F_FinalizaVenda.ShowModal;
end;

procedure TF_Venda.Button1Click(Sender: TObject);
begin
    cdsItens.EmptyDataSet;
end;

procedure TF_Venda.Button2Click(Sender: TObject);
begin

    if cdsItens.Locate('Id_produto',dbCodPro.Text,[]) then
    begin
      if dbQuant.Text <> '0' then
      begin
         if messageDlg('Já existe um produto com este código, deseja somar a quantidade ?', mtInformation,[mbYes, mbNo],0) = mrYes then
         begin
           cdsItens.Edit;
           cdsItensQuantidade.AsFloat:= cdsItensQuantidade.AsFloat + strtoFloat(dbQuant.Text);
           cdsItens.Post;
         end;
      end
      else if dbQuant.Text = '0' then
      begin
         if messageDlg('Deseja excluir este produto ?', mtInformation,[mbYes, mbNo],0) = mrYes then
           cdsItens.delete;
      end;

    end
    else
    begin
      cdsItens.Open;
      cdsItens.Append;
      cdsItensId_produto.AsString:= dbCodPro.Text;
      cdsItensDescricao.AsString:= dbDescricao.Text;
      cdsItensQuantidade.AsString:= dbQuant.Text;
      cdsItensPreco.AsString:= dbPreco.Text;
      cdsItens.Post;
    end;

      limpar;
      if rbCodigo.Checked then
        dbCodPro.SetFocus
      else if rbDescricao.Checked then
        dbDescricao.SetFocus;

end;

procedure TF_Venda.CdsItensCalcFields(DataSet: TDataSet);
begin
   cdsItensValorTotal.Value:= cdsItensQuantidade.Value * cdsItensPreco.Value;
end;

procedure TF_Venda.dbCodProChange(Sender: TObject);
begin
    if (dbCodPro.Enabled = true) and (dbCodPro.Text <> '') then
    begin
      with DMPesq.cdsPesq_Produto_aux do
      begin
        close;
        CommandText:= 'SELECT * FROM PRODUTO WHERE ID_PRODUTO LIKE ' + QuotedStr(dbCodPro.Text + '%') + ' Order by produto';
        open;
      end;
      DBGrid4.Visible:= true;
    end;
end;

procedure TF_Venda.dbCodProKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
     dbCodPro.Text:= DMPesq.cdsPesq_Produto_aux.FieldByName('ID_Produto').AsString;
     dbDescricao.Text:= DMPesq.cdsPesq_Produto_aux.FieldByName('Produto').AsString;
     dbPreco.Text:= DMPesq.cdsPesq_Produto_aux.FieldByName('Preco').AsString;
     dbPreco.SetFocus;
     DBGrid4.Visible:= false;
   end;

end;

procedure TF_Venda.dbDescricaoChange(Sender: TObject);
begin
    if (dbDescricao.Enabled = true) and (dbDescricao.Text <> '') then
    begin
      with DMPesq.cdsPesq_Produto_aux do
      begin
        close;
        CommandText:= 'SELECT * FROM PRODUTO WHERE PRODUTO LIKE ' + QuotedStr(dbDescricao.Text + '%') + ' Order by produto';
        open;
      end;
      DBGrid4.Visible:= true;
    end;
end;

procedure TF_Venda.dbDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
     dbCodPro.Text:= DMPesq.cdsPesq_Produto_aux.FieldByName('ID_Produto').AsString;
     dbDescricao.Text:= DMPesq.cdsPesq_Produto_aux.FieldByName('Produto').AsString;
     dbPreco.Text:= DMPesq.cdsPesq_Produto_aux.FieldByName('Preco').AsString;
     dbPreco.SetFocus;
     DBGrid4.Visible:= false;
   end;
end;

procedure TF_Venda.dbPrecoKeyPress(Sender: TObject; var Key: Char);
begin
    if key= #13 then
     dbQuant.SetFocus;
end;

procedure TF_Venda.dbQuantKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   Button2Click(Sender);
end;

procedure TF_Venda.edtProcurarChange(Sender: TObject);
begin
    spPesquisaClick(Sender);
end;

procedure TF_Venda.edtProcurarKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   botaoComprarClick(sender);
end;



procedure TF_Venda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_F3 then
    butFinalizarClick(sender);
end;

procedure TF_Venda.FormShow(Sender: TObject);
var I: integer;
begin
    for I := 0 to DMPesq.cdsPesq_Cliente.FieldCount - 1 do
    begin
        if DMPesq.cdsPesq_Cliente.Fields[I].DataType in [ftString, ftWideString, ftInteger, ftFixedChar]  then
         cbCampo.Items.Add(DMPesq.cdsPesq_Cliente.Fields[I].FieldName);
    end;
  limpar;
  rbCodigoClick(sender);
end;

procedure TF_Venda.limpar;
begin
  dbCodPro.Clear;
  dbDescricao.Clear;
  dbPreco.Clear;
  dbQuant.Clear;
end;

procedure TF_Venda.rbCodigoClick(Sender: TObject);
begin
  dbCodPro.Enabled:= true;
  dbDescricao.Enabled:= false;

end;

procedure TF_Venda.rbDescricaoClick(Sender: TObject);
begin
  dbCodPro.Enabled:= false;
  dbDescricao.Enabled:= true;

end;

procedure TF_Venda.spPesquisaClick(Sender: TObject);
var _Pesquisa: string;
begin
    if rbContem.Checked then
      _Pesquisa := cbCampo.Text + ' Like ' + QuotedStr('%' + edtProcurar.Text + '%')
    else if rbComeca.Checked then
      _Pesquisa := cbCampo.Text + ' Like ' + QuotedStr(edtProcurar.Text + '%');

    with DMPesq.cdsPesq_Cliente do
    begin
        close;
        CommandText:= 'Select * from cliente where ' + _Pesquisa;
        open;
    end;
end;

end.
