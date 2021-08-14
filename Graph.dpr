program Graph;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2a in 'Unit2a.pas' {Form2a},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Chart Builder';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2a, Form2a);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
