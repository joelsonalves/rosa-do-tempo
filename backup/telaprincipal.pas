unit TelaPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonSobre: TButton;
    ButtonTestar: TButton;
    ButtonEncerrar: TButton;
    CheckBoxDomingo: TCheckBox;
    CheckBoxSegundaFeira: TCheckBox;
    CheckBoxTercaFeira: TCheckBox;
    CheckBoxQuartaFeira: TCheckBox;
    CheckBoxQuintaFeira: TCheckBox;
    CheckBoxSextaFeira: TCheckBox;
    CheckBoxSabado: TCheckBox;
    EditArquivoHorarioProgramado: TEdit;
    EditPastaMusical: TEdit;
    LabelNomeApp: TLabel;
    LabelTextoProximoToque: TLabel;
    LabelHorarioProximoToque: TLabel;
    LabelHorarioProgramado: TLabel;
    LabelTextoPastaMusical: TLabel;
    LabelDesenvolvedor: TLabel;
    OpenDialog1: TOpenDialog;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    procedure ButtonEncerrarClick(Sender: TObject);
    procedure EditArquivoHorarioProgramadoClick(Sender: TObject);
    procedure EditPastaMusicalClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonEncerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.EditArquivoHorarioProgramadoClick(Sender: TObject);
begin
   if (OpenDialog1.Execute) then
  begin
     EditArquivoHorarioProgramado.Text := ExtractFileName(OpenDialog1.FileName);
  end;
end;

procedure TForm1.EditPastaMusicalClick(Sender: TObject);
begin
   if (SelectDirectoryDialog1.Execute) then
  begin
     EditPastaMusical.Text := ExtractFileName(SelectDirectoryDialog1.FileName);
  end;
end;

end.

