unit U_Saida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_ModeloEntrada, DB, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls;

type
  TF_Saida = class(TF_ModeloEntrada)
    dbMotivo: TEdit;
    procedure dbDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure dbMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure dbDescricaoChange(Sender: TObject);
  private
    { Private declarations }
  public
  procedure InserirProduto; override;
    { Public declarations }
  end;

var
  F_Saida: TF_Saida;

implementation

uses U_DM, U_DMPesq;

{$R *.dfm}

procedure TF_Saida.dbDescricaoChange(Sender: TObject);
begin
  _Pesq:= 'Select id_produto, produto  from Produto where  produto like ' +
          quotedStr(dbDescricao.Text + '%') + ' Order by produto';
  inherited;
end;

procedure TF_Saida.dbDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
   dbMotivo.SetFocus;
end;

procedure TF_Saida.dbMotivoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
   dbQuant.SetFocus;
end;

procedure TF_Saida.InserirProduto;
begin
  inherited;
   with dm.cds_CadSaida do
  begin
    close;
    Params[0].AsDate:= dtDataInicial.Date;
    params[1].AsInteger:= strtoint(dbCodigo.Text);
    Params[2].AsString:= dbMotivo.Text;
    Params[3].AsString:= dbQuant.Text;
    execute;
  end;
end;

end.
