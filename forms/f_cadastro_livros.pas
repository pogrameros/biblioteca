unit f_cadastro_livros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, ZSqlUpdate;

type
  Tfrm_cadastro_livros = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edt_titulo: TDBEdit;
    cbx_editora: TDBLookupComboBox;
    cbx_autor: TDBLookupComboBox;
    Label6: TLabel;
    cbx_genero: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    cbx_categoria: TDBLookupComboBox;
    Label8: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    cbx_fornecedor: TDBLookupComboBox;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    NovaCategoria1: TMenuItem;
    NovoGnero1: TMenuItem;
    NovoAutor1: TMenuItem;
    NovoFornecedor1: TMenuItem;
    NovaEditora1: TMenuItem;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    ZupLivros: TZUpdateSQL;
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure btn_buscaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NovaCategoria1Click(Sender: TObject);
    procedure NovaEditora1Click(Sender: TObject);
    procedure NovoGnero1Click(Sender: TObject);
    procedure NovoAutor1Click(Sender: TObject);
    procedure NovoFornecedor1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Salvar;override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastro_livros: Tfrm_cadastro_livros;

implementation

{$R *.dfm}

uses f_funcoes;

procedure Tfrm_cadastro_livros.btn_buscaClick(Sender: TObject);
var
   Valor : String;
begin
   inherited;
   Valor := BuscaDados('Referencia;Titulo;Autor;Editora','Refêrencia;Título;Autor;Editora','Livros','Livros');

   tab_principal.Locate('ID',Valor,[]);
end;

procedure Tfrm_cadastro_livros.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
   ApenasNumeros(DBEdit4,Key);
end;

procedure Tfrm_cadastro_livros.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  inherited;
//  ReportMemoryLeaksOnShutdown := True;
end;

procedure Tfrm_cadastro_livros.FormShow(Sender: TObject);
begin
   inherited;

   //adiciona propriedades ao combobox
   PreecheComboboxSubCadastro(cbx_categoria, '1' ,'Categoria','ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_editora  , '2' ,'Editora'  ,'ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_genero   , '3' ,'Genero'   ,'ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_autor    , '4' ,'Autor'    ,'ID' ,'Descricao');

   with tab_principal do begin
      SQl.Add(' SELECT');
      SQL.Add('	Autor.Descricao AS Desc_autor,');
      SQL.Add('	Editora.Descricao AS Desc_Editora,');
      SQL.Add('	Genero.Descricao AS Desc_Genero,');
      SQL.Add('	Categoria.Descricao AS Desc_Categoria,');
      SQL.Add('	livros.*');
      SQL.Add(' FROM livros');
      SQL.Add('	LEFT JOIN subcadastro Autor     ON livros.Autor   = autor.ID');
      SQL.Add('	LEFT JOIN subcadastro Editora   ON livros.Editora = Editora.ID');
      SQL.Add('	LEFT JOIN subcadastro Genero    ON livros.Genero    = Genero.ID');
      SQL.Add('	LEFT JOIN subcadastro Categoria ON livros.Categoria = Categoria.id');
      Open;
   end;

   TrataZUpdate(tab_principal,ZupLivros,'livros');
end;

procedure Tfrm_cadastro_livros.NovaCategoria1Click(Sender: TObject);
begin
   SubCadastro('Categoria','1');
end;

procedure Tfrm_cadastro_livros.NovaEditora1Click(Sender: TObject);
begin
   SubCadastro('Editoras','2');
end;

procedure Tfrm_cadastro_livros.NovoAutor1Click(Sender: TObject);
begin
   SubCadastro('Autores','4');

end;

procedure Tfrm_cadastro_livros.NovoFornecedor1Click(Sender: TObject);
begin
   //aguardando cadastro de fornecedores
end;

procedure Tfrm_cadastro_livros.NovoGnero1Click(Sender: TObject);
begin
  SubCadastro('Gêneros','3');
end;

procedure Tfrm_cadastro_livros.Salvar;
begin
   if frm_cadastro_livros.edt_titulo.Text = '' then begin
      Application.MessageBox('Obrigatório selecionar um Titulo.','Aviso',MB_OK);
      frm_cadastro_livros.edt_titulo.SetFocus;
      Abort;
   end;
end;

end.
