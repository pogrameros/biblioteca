unit f_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  ZAbstractConnection, ZConnection, Vcl.Buttons, rkGlassButton, Vcl.Menus;

type
  Tfrm_menu = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    zconn: TZConnection;
    StatusBar1: TStatusBar;
    btn_sair: TrkGlassButton;
    pop_locacoes: TPopupMenu;
    SaidadeLivros1: TMenuItem;
    DevoluodeLivros1: TMenuItem;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SaidadeLivros1Click(Sender: TObject);
  private
    { Private declarations }
  public
     //Strings publicas
     pub_string_busca : String;
  end;

var
  frm_menu: Tfrm_menu;

implementation

Uses f_funcoes,f_cadastro_livros, r_relatorio_base, f_locacao_livros;

{$R *.dfm}

procedure Tfrm_menu.FormShow(Sender: TObject);
begin
   ConectarBanco;
end;

procedure Tfrm_menu.SaidadeLivros1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_locacao_livros,frm_locacao_livros);
end;

end.
