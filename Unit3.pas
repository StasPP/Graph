unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    CommColor: TColorBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.SpeedButton1Click(Sender: TObject);
var GN, i: Integer;
begin
 with form1 do
 Begin
   GN:=FindChart('_&_&_&_&_Comments'+IntToStr(CurComm));
   if GN<>-1 then
     begin
        Chart.Series[GN].AddXY(F3x,F3y,Form3.Edit1.Text);
        Chart.Series[GN].Marks.BackColor := Form3.CommColor.Selected;
     end;
 end;
 close;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure TForm3.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     SpeedButton1.OnClick(sender);
  if key = vk_escape then
     SpeedButton2.OnClick(sender);
end;

end.
