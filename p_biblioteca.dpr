program p_biblioteca;

uses
  Vcl.Forms,
  f_form_vazio in 'f_form_vazio.pas' {Form1},
  f_menu in 'forms\f_menu.pas' {frm_menu},
  f_funcoes in 'classes\f_funcoes.pas',
  Vcl.Themes,
  Vcl.Styles,
  f_form_base in 'bases\f_form_base.pas' {frm_form_base},
  f_form_normal in 'bases\f_form_normal.pas' {frm_form_normal},
  f_cadastro_livros in 'forms\f_cadastro_livros.pas' {frm_cadastro_livros},
  r_relatorio_base in 'bases\r_relatorio_base.pas' {fqr_relatorio_base},
  f_form_busca_base in 'bases\f_form_busca_base.pas' {frm_form_busca_base},
  f_cadastro_fornecedor in 'forms\f_cadastro_fornecedor.pas' {frm_form_cadastro_base1},
  f_cadastro_base in 'bases\f_cadastro_base.pas' {frm_form_cadastro_base},
  f_sub_cadastro in 'forms\f_sub_cadastro.pas' {frm_sub_cadastro},
  f_locacao_livros in 'forms\f_locacao_livros.pas' {frm_locacao_livros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(Tfrm_menu, frm_menu);
  Application.Run;
end.
