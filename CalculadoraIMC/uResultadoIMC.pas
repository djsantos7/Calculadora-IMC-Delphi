unit uResultadoIMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uDados;

type
  TresultadoIMC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    respeso: TLabel;
    ressexo: TLabel;
    resaltura: TLabel;
    resimc: TLabel;
    estado: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  resultadoIMC: TresultadoIMC;

implementation

{$R *.dfm}

procedure TresultadoIMC.FormShow(Sender: TObject);
begin
  resaltura.Caption := FloatToStr(dados.altura);
  respeso.Caption := FloatToStr(dados.peso);
  ressexo.Caption := dados.sexo;
  resimc.Caption := dados.imc;
  //estado.Caption := dados.estado;

end;

end.
