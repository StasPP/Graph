unit Unit2a;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm2a = class(TForm)
    GrList: TListBox;
    OKButton: TSpeedButton;
    PickPar: TRadioGroup;
    F2Label: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure PickParClick(Sender: TObject);
  private
    { Private declarations }
  public
    forcom:boolean;
    { Public declarations }
  end;

var
  Form2a: TForm2a;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2a.OKButtonClick(Sender: TObject);
begin
   if forcom then
   Form1.PickGraph.Checked := (GrList.ItemIndex<>-1)
     else
       Form1.PickGraph2.Checked := (GrList.ItemIndex<>-1);
   Form2a.Close;
end;

procedure TForm2a.PickParClick(Sender: TObject);
begin
  // PickPar.ItemIndex := 0;
end;

end.
