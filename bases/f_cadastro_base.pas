unit f_cadastro_base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.ImgList, rkGlassButton, StrUtils,
  Vcl.ComCtrls, Vcl.Menus, JvExDBGrids, JvDBGrid, f_form_base;

type
  Tfrm_form_cadastro_base = class(Tfrm_form_base)
    tab_principal: TZQuery;
    dts_master: TDataSource;
    Image1: TImage;
    lbl_titulo: TLabel;
    Panel1: TPanel;
    btn_salvar: TrkGlassButton;
    btn_alterar: TrkGlassButton;
    btn_apagar: TrkGlassButton;
    btn_sair: TrkGlassButton;
    Panel2: TPanel;
    btn_busca: TrkGlassButton;
    rkGlassButton1: TrkGlassButton;
    pop_opcoes: TPopupMenu;
    DBGrid1: TDBGrid;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Localiza;

    procedure Novo    ;virtual;
    procedure Salvar  ;virtual;
    procedure Alterar ;virtual;
  end;

var
  frm_form_cadastro_base: Tfrm_form_cadastro_base;
Const
   Caption_Salvar   : Array[0..1] of String = ('Novo','Salvar');
   Caption_Alterar  : Array[0..1] of String = ('Alterar','Salvar');
   Caption_Cancelar : Array[0..1] of String = ('Cancelar','Apagar');

implementation

uses f_menu, f_funcoes;

{$R *.dfm}

procedure Tfrm_form_cadastro_base.Alterar;
begin

end;

procedure Tfrm_form_cadastro_base.btn_alterarClick(Sender: TObject);
begin
    if tab_principal.RecordCount > 0 then begin
       case AnsiIndexText(btn_alterar.Caption,Caption_Alterar) of
         //Alterar
         0 : begin
            btn_salvar.Enabled := False;
            btn_alterar.Caption := 'Salvar';
            btn_apagar.Caption := 'Cancelar';
            btn_sair.Enabled := False;
            dbgrid1.Enabled := False;

            tab_principal.Edit;
         end;
         //salvar
         1: begin
            //metodo abstrato, deve ser implementado apenas na classe filho
            Salvar;
            btn_salvar.Enabled := True;
            btn_alterar.Caption := 'Alterar';
            btn_apagar.Caption := 'Apagar';
            btn_sair.Enabled := True;
            dbgrid1.Enabled := True;

            tab_principal.Post;
            tab_principal.Refresh;
         end;
       end;
    end;
end;

procedure Tfrm_form_cadastro_base.btn_apagarClick(Sender: TObject);
begin
   case AnsiIndexText(btn_apagar.Caption,Caption_Cancelar) of
      //Cancelar
      0: begin
         tab_principal.Cancel;
         tab_principal.CancelUpdates;

         btn_salvar.Enabled := True;
         btn_salvar.Caption := 'Novo';
         btn_alterar.Enabled := True;
         btn_alterar.Caption := 'Alterar';
         btn_sair.Enabled := True;
         dbgrid1.Enabled := True;
      end;
      //apagar
      1: begin
         if tab_principal.RecordCount > 0 then begin
            if Application.MessageBox('Deseja Apagar o Registro ?','Aviso',MB_YESNO) = mrYes then begin
               tab_principal.Delete;
            end;
         end;
      end;
   end;
end;

procedure Tfrm_form_cadastro_base.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_form_cadastro_base.btn_salvarClick(Sender: TObject);
begin
    case AnsiIndexText(btn_salvar.Caption,Caption_Salvar) of
      //novo
      0 : begin
         btn_salvar.Caption := 'Salvar';
         btn_alterar.Enabled := False;
         btn_apagar.Caption := 'Cancelar';
         btn_sair.Enabled := False;
         dbgrid1.Enabled := False;

         tab_principal.Append;
      end;
      //salvar
      1: begin
         Salvar;
         btn_salvar.Caption := 'Novo';
         btn_alterar.Enabled := True;
         btn_apagar.Caption := 'Apagar';
         btn_sair.Enabled := True;
         dbgrid1.Enabled := True;

         tab_principal.Post;
         tab_principal.Refresh;
         tab_principal.Last;
      end;
    end;
end;

procedure Tfrm_form_cadastro_base.Localiza;
begin
   tab_principal.Locate('ID',frm_menu.pub_string_busca,[]);
end;

procedure Tfrm_form_cadastro_base.Novo;
begin
  inherited;

end;

procedure Tfrm_form_cadastro_base.Salvar;
begin
  inherited;

end;

procedure Tfrm_form_cadastro_base.SpeedButton6Click(Sender: TObject);
begin
   Close;
end;

end.
