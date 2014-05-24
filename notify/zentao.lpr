program zentao;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, runtimetypeinfocontrols, LoginFormUnit, ZentaoAPIUnit, MainFormUnit,
  BackgroundWorkerUnit, PopWindowUnit;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TPopWindow, PopWindow);
  Application.Run;
end.

