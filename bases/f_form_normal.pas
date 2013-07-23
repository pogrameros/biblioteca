unit f_form_normal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_base, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, f_funcoes, f_menu;

type
  Tfrm_form_normal = class(Tfrm_form_base)
    lbl_titulo: TLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_form_normal: Tfrm_form_normal;

implementation

{$R *.dfm}


end.
