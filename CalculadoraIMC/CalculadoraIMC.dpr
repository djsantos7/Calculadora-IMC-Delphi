program CalculadoraIMC;

uses
  Vcl.Forms,
  uCalculadoraIMC in 'uCalculadoraIMC.pas' {calculadora},
  uExplicacaoIMC in 'uExplicacaoIMC.pas' {explicacaoIMC},
  uResultadoIMC in 'uResultadoIMC.pas' {resultadoIMC},
  uDados in 'uDados.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tcalculadora, calculadora);
  Application.CreateForm(TexplicacaoIMC, explicacaoIMC);
  Application.CreateForm(TresultadoIMC, resultadoIMC);
  Application.Run;
end.
