unit f_cadastro_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  Tfrm_form_cadastro_base1 = class(Tfrm_form_cadastro_base)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_form_cadastro_base1: Tfrm_form_cadastro_base1;

implementation

{$R *.dfm}

end.
