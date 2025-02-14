unit uCalculadoraIMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uExplicacaoIMC, uResultadoIMC, uDados, MaskUtils;

type
  Tcalculadora = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    sexo: TComboBox;
    altura: TEdit;
    peso: TEdit;
    resultado: TButton;
    calculo: TButton;
    procedure alturaEnter(Sender: TObject);
    procedure alturaExit(Sender: TObject);
    procedure pesoEnter(Sender: TObject);
    procedure pesoExit(Sender: TObject);
    procedure sexoEnter(Sender: TObject);
    procedure sexoExit(Sender: TObject);
    procedure calculoClick(Sender: TObject);
    procedure resultadoClick(Sender: TObject);
    procedure alturaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  calculadora: Tcalculadora;

implementation

{$R *.dfm}

procedure Tcalculadora.alturaEnter(Sender: TObject);
begin
  altura.Color := clCream;
end;

procedure Tcalculadora.alturaExit(Sender: TObject);
begin
  altura.Color := clWindow;
end;

procedure Tcalculadora.alturaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  altura.Text := formatmasktext ('0,00;0;', altura.Text);
end;

procedure Tcalculadora.calculoClick(Sender: TObject);
begin
  explicacaoIMC.ShowModal;
end;

procedure Tcalculadora.pesoEnter(Sender: TObject);
begin
  peso.Color := clCream;
end;

procedure Tcalculadora.pesoExit(Sender: TObject);
begin
  peso.Color := clWindow;
end;

procedure Tcalculadora.resultadoClick(Sender: TObject);
begin
  try
  dados.altura := StrToFloat(altura.Text);
  dados.peso := StrToFloat(peso.Text);
  dados.sexo := sexo.Text;
  dados.imc := CalcularIMC (dados.peso, dados.altura, dados.sexo);
  //dados.estado := '';

  resultadoIMC.ShowModal;
  except;
  ShowMessage('Dados inválidos!');
  end;

end;

procedure Tcalculadora.sexoEnter(Sender: TObject);
begin
  sexo.Color := clCream;
end;

procedure Tcalculadora.sexoExit(Sender: TObject);
begin
  sexo.Color := clWindow;
end;

end.
