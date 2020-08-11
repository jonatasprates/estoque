program ControleEstoque;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_Modelo in 'U_Modelo.pas' {F_Modelo},
  U_DMPesq in 'U_DMPesq.pas' {DMPesq: TDataModule},
  U_Cliente in 'U_Cliente.pas' {F_Cliente},
  U_Produto in 'U_Produto.pas' {F_Produto},
  U_ModeloEntrada in 'U_ModeloEntrada.pas' {F_ModeloEntrada},
  U_Entrada in 'U_Entrada.pas' {F_Entrada},
  U_Saida in 'U_Saida.pas' {F_Saida},
  U_Venda in 'U_Venda.pas' {F_Venda},
  U_FinalizaVenda in 'U_FinalizaVenda.pas' {F_FinalizaVenda},
  U_excluir in 'U_excluir.pas' {Form1},
  U_LocalizaVenda in 'U_LocalizaVenda.pas' {F_LocalizaVenda},
  ravModule in 'ravModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Modelo, F_Modelo);
  Application.CreateForm(TDMPesq, DMPesq);
  Application.CreateForm(TF_Cliente, F_Cliente);
  Application.CreateForm(TF_Produto, F_Produto);
  Application.CreateForm(TF_ModeloEntrada, F_ModeloEntrada);
  Application.CreateForm(TF_Entrada, F_Entrada);
  Application.CreateForm(TF_Saida, F_Saida);
  Application.CreateForm(TF_Venda, F_Venda);
  Application.CreateForm(TF_FinalizaVenda, F_FinalizaVenda);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TF_LocalizaVenda, F_LocalizaVenda);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
