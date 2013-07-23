unit f_sub_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrm_sub_cadastro = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    edt_descricao: TDBEdit;
  private
    procedure Salvar;override;
  public
     FTitulo,FTipo_Cadastro : String;
  end;

var
  frm_sub_cadastro: Tfrm_sub_cadastro;

implementation

{$R *.dfm}

uses f_funcoes;



{ Tfrm_sub_cadastro }

procedure Tfrm_sub_cadastro.Salvar;
begin
   CampoPreenchido(edt_descricao);
   tab_principal.FieldByName('Tipo_Cadastro').AsString := FTipo_Cadastro;
end;

end.
