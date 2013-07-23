unit f_locacao_livros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, rkGlassButton, Vcl.Menus, Vcl.Grids, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.Buttons;

type
  Tfrm_locacao_livros = class(Tfrm_form_normal)
    Panel2: TPanel;
    grade_usuarios: TStringGrid;
    tab_principal: TZQuery;
    pn_Livros: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    edt_pesquisar: TEdit;
    btn_pesquisar: TrkGlassButton;
    Panel6: TPanel;
    btn_add: TSpeedButton;
    btn_rem: TSpeedButton;
    Panel7: TPanel;
    Panel4: TPanel;
    JvDBGrid1: TJvDBGrid;
    Panel3: TPanel;
    JvDBGrid2: TJvDBGrid;
    Label2: TLabel;
    Panel8: TPanel;
    btn_cancelar: TrkGlassButton;
    btn_finalizar: TrkGlassButton;
    btn_sair: TrkGlassButton;
    btn_confirmar: TrkGlassButton;
    btn_selecionar: TrkGlassButton;
    tab_busca: TZReadOnlyQuery;
    dts_busca: TDataSource;
    procedure btn_selecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
  private
    FUsuario : String;
  public
    { Public declarations }
  end;

var
  frm_locacao_livros: Tfrm_locacao_livros;

implementation

{$R *.dfm}

uses f_funcoes, f_menu;

procedure Tfrm_locacao_livros.btn_pesquisarClick(Sender: TObject);
begin
   if Trim(edt_pesquisar.Text) <> '' then begin
      with tab_busca do begin
         Close;
         SQl.Clear;
         SQL.Add('CALL BuscaLivro("'+ Trim(edt_pesquisar.Text) +'")');
         Open;
      end;
   end;
end;

procedure Tfrm_locacao_livros.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_locacao_livros.btn_selecionarClick(Sender: TObject);
var
   tab_busca : TZReadOnlyQuery;
begin
   FUsuario := BuscaDados('Nome;SobreNome;RG,Bairro','Nome;Sobre Nome; Rg; Bairro','usuarios','Usuários');

   if FUsuario <> '' then begin

      tab_busca := TZReadOnlyQuery.Create(nil);
      with tab_busca do begin
         Connection := frm_menu.zconn;
         SQL.Add('SELECT ');
         SQL.Add('	ID,');
         SQL.Add('	Concat(Nome ," ",SobreNome) AS Nome_SobreNome,');
         SQL.Add('	Concat("Rua: ",Rua," nº ",Numero_Casa," Bairro: ",Bairro," - ",Complemento) AS endereco_completo');
         SQL.Add('FROM usuarios');
         SQL.Add('	WHERE ID = ' + FUsuario);
         Open;
      end;

     grade_usuarios.Cells[0,1] := tab_busca.FieldByName('ID').AsString;
     grade_usuarios.Cells[1,1] := tab_busca.FieldByName('Nome_SobreNome').AsString;
     grade_usuarios.Cells[2,1] := tab_busca.FieldByName('endereco_completo').AsString;

     tab_busca.Free;
   end;
end;

procedure Tfrm_locacao_livros.FormShow(Sender: TObject);
begin
  inherited;
  grade_usuarios.Cells[0,0] := 'Código';
  grade_usuarios.Cells[1,0] := 'Nome';
  grade_usuarios.Cells[2,0] := 'Endereço';

end;

procedure Tfrm_locacao_livros.btn_confirmarClick(Sender: TObject);
begin
   if FUsuario <> '0' then begin
      pn_Livros.Enabled := True;


   end;
end;

end.
