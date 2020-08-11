unit U_LocalizaVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TF_LocalizaVenda = class(TForm)
    Label10: TLabel;
    DBGrid3: TDBGrid;
    pnVenda: TGroupBox;
    Label9: TLabel;
    Label6: TLabel;
    rbOrcamento: TRadioButton;
    rbVenda: TRadioButton;
    GroupBox1: TGroupBox;
    rbPerc: TRadioButton;
    rbDescDinheiro: TRadioButton;
    dbDescPerc: TEdit;
    dbDesconto: TEdit;
    dbTotalGeral: TEdit;
    Button3: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Button6: TButton;
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
    Button1: TButton;
    dtsVenda: TDataSource;
    dtsItens: TDataSource;
    DataSource3: TDataSource;
    Button5: TButton;
    dbValorNota: TEdit;
    procedure dbDescPercChange(Sender: TObject);
    procedure dbDescontoChange(Sender: TObject);
    procedure rbPercClick(Sender: TObject);
    procedure rbDescDinheiroClick(Sender: TObject);
    procedure dbValorNotaChange(Sender: TObject);
    procedure dbTotalGeralChange(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure dbCodProChange(Sender: TObject);
    procedure dbCodProKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure verVendas(tipo:string);
  procedure limpar;
    { Public declarations }
  end;

var
  F_LocalizaVenda: TF_LocalizaVenda;

implementation

uses U_DM, U_DMPesq;

{$R *.dfm}

procedure TF_LocalizaVenda.Button1Click(Sender: TObject);
begin
   if DMPesq.cds_PesqVendaVENDA.Text = 'V' then
   begin
     showmessage('Você não tem mais permissão para alterar esta venda');
     exit;
   end;

   with  DMPesq.cds_AtualizaVenda do
   begin
     close;
     if rbVenda.Checked then
       params[0].AsString:= 'V'
     else
       params[0].AsString:= 'O';
     params[1].AsFloat:= strtofloat(dbDesconto.Text);
     params[2].AsInteger:= DMPesq.cds_PesqVendaID_VENDA.AsInteger;
     execute;

   end;
   showmessage('Operação realizada com sucesso');
   DMPesq.cds_PesqVenda.Close;
      DMPesq.cds_PesqVenda.Open;
end;

procedure TF_LocalizaVenda.Button2Click(Sender: TObject);
begin
   if DMPesq.cds_PesqVendaVENDA.Text = 'V' then
   begin
     showmessage('Você não tem mais permissão para alterar esta venda');
     exit;
   end;

    if DM.cds_cadITEM_DA_VENDA.Locate('Id_produto',dbCodPro.Text,[]) then
    begin
      if dbQuant.Text <> '0' then
      begin
         if messageDlg('Já existe um produto com este código, deseja somar a quantidade ?', mtInformation,[mbYes, mbNo],0) = mrYes then
         begin
           DM.cds_cadITEM_DA_VENDA.Edit;
           DM.cds_cadITEM_DA_VENDAQTDE.AsFloat:= DM.cds_cadITEM_DA_VENDAQTDE.AsFloat + strtoFloat(dbQuant.Text);
           DM.cds_cadITEM_DA_VENDA.ApplyUpdates(0);
         end;
      end
      else if dbQuant.Text = '0' then
      begin
         if messageDlg('Deseja excluir este produto ?', mtInformation,[mbYes, mbNo],0) = mrYes then
         begin
           DM.cds_cadITEM_DA_VENDA.delete;
           DM.cds_cadITEM_DA_VENDA.ApplyUpdates(0);
         end;
      end;

    end
    else
    begin
      DM.cds_cadITEM_DA_VENDA.Open;
      DM.cds_cadITEM_DA_VENDA.Append;
      DM.cds_cadITEM_DA_VENDAId_produto.AsString:= dbCodPro.Text;
      DM.cds_cadITEM_DA_VENDAQTDE.AsString:= dbQuant.Text;
      DM.cds_cadITEM_DA_VENDAPRECO_UNITARIO.AsString:= dbPreco.Text;
      DM.cds_cadITEM_DA_VENDA.ApplyUpdates(0);
    end;

      limpar;
      if rbCodigo.Checked then
        dbCodPro.SetFocus
      else if rbDescricao.Checked then
        dbDescricao.SetFocus;

      DMPesq.cds_PesqVenda.Close;
      DMPesq.cds_PesqVenda.Open;

end;

procedure TF_LocalizaVenda.Button3Click(Sender: TObject);
begin
   if DMPesq.cds_PesqVendaVENDA.Text = 'V' then
   begin
     showmessage('Você não tem mais permissão para alterar esta venda');
     exit;
   end;

  with DMPesq.cds_PesqGeral do
  begin
    close;
    CommandText:= 'Delete from ITEM_DA_VENDA where id_venda = ' +
          DMPesq.cds_PesqVendaID_VENDA.Text;
    execute;
  end;

  with DMPesq.cds_PesqGeral do
  begin
    close;
    CommandText:= 'Delete from venda where id_venda = ' +
          DMPesq.cds_PesqVendaID_VENDA.Text;
    execute;
  end;

  DMPesq.cds_PesqVenda.Close;
  DMPesq.cds_PesqVenda.Open;
end;

procedure TF_LocalizaVenda.Button4Click(Sender: TObject);
begin
  verVendas('Localizar');
    if DMPesq.cds_PesqVendaID_VENDA.Text <> EmptyStr then
    dbValorNota.Text:= DMPesq.cds_PesqVendaTOTAL_NOTA.AsString
  else
    dbValorNota.Text:= '0';


end;

procedure TF_LocalizaVenda.Button5Click(Sender: TObject);
begin
 verVendas('Todos');
   if DMPesq.cds_PesqVendaID_VENDA.Text <> EmptyStr then
    dbValorNota.Text:= DMPesq.cds_PesqVendaTOTAL_NOTA.AsString
  else
    dbValorNota.Text:= '0';


end;

procedure TF_LocalizaVenda.dbCodProChange(Sender: TObject);
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

procedure TF_LocalizaVenda.dbCodProKeyPress(Sender: TObject; var Key: Char);
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

procedure TF_LocalizaVenda.dbDescontoChange(Sender: TObject);
begin
   if dbDescPerc.Text = EmptyStr then
    dbDescPerc.Text := '0';

      dbTotalGeral.Text := floatToStr(strToFloat(dbValorNota.Text) - strTofloat(dbDesconto.Text));
end;

procedure TF_LocalizaVenda.dbDescPercChange(Sender: TObject);
begin
   if dbDescPerc.Text = EmptyStr then
    dbDescPerc.Text := '0';

   if rbPerc.Checked then
      dbDesconto.Text:= floattoStr((strToFloat(dbValorNota.Text) * strToFloat(dbDescPerc.Text))/100)
   else if rbDescDinheiro.Checked then
      dbDesconto.Text:= dbDescPerc.Text;
end;

procedure TF_LocalizaVenda.DBGrid3CellClick(Column: TColumn);
begin
  if DMPesq.cds_PesqVendaID_VENDA.Text <> EmptyStr then
    dbValorNota.Text:= DMPesq.cds_PesqVendaTOTAL_NOTA.AsString
  else
    dbValorNota.Text:= '0';
end;

procedure TF_LocalizaVenda.dbTotalGeralChange(Sender: TObject);
begin
     if dbTotalGeral.Text = EmptyStr then
    dbDescPerc.Text := '0';
end;

procedure TF_LocalizaVenda.dbValorNotaChange(Sender: TObject);
begin
   if dbValorNota.Text = EmptyStr then
    dbDescPerc.Text := '0';
end;

procedure TF_LocalizaVenda.FormShow(Sender: TObject);
begin


  verVendas('Todos');
  if DMPesq.cds_PesqVendaID_VENDA.Text <> EmptyStr then
  begin
    dbValorNota.Text:= DMPesq.cds_PesqVendaTOTAL_NOTA.AsString;
    dbDesconto.Text:= DMPesq.cds_PesqVendaDESCONTO.AsString;
  end
  else
  begin
    dbValorNota.Text:= '0';
    dbDesconto.Text:= '0';
  end;
  dbDescPerc.Text:='0';

end;

procedure TF_LocalizaVenda.limpar;
begin
  dbCodPro.Clear;
  dbDescricao.Clear;
  dbPreco.Clear;
  dbQuant.Clear;

end;

procedure TF_LocalizaVenda.rbDescDinheiroClick(Sender: TObject);
begin
        dbDesconto.Text:= dbDescPerc.Text;
        dbDescPerc.SetFocus;
end;

procedure TF_LocalizaVenda.rbPercClick(Sender: TObject);
begin
      dbDesconto.Text:= floattoStr((strToFloat(dbValorNota.Text) * strToFloat(dbDescPerc.Text))/100);
      dbDescPerc.SetFocus;
end;

procedure TF_LocalizaVenda.verVendas(tipo: string);
var txt: string;
begin
  if tipo = 'Todos' then
    txt:= 'select v.*, c.cliente from VENDA v, cliente c  ' +
          ' where v.id_cliente = c.id_cliente and v.Venda = ''O''  '
  else if tipo = 'Localizar' then
    txt := 'select v.*, c.cliente from VENDA v, cliente c  ' +
           ' where v.id_cliente = c.id_cliente and v.id_venda = ' + edit1.Text;

  with DMPesq.cds_PesqVenda do
  begin
    close;
    CommandText:= txt;
    open;
  end;

end;

end.
