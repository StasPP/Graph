unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, CheckLst, Buttons,
  ExtDlgs, ComCtrls, Series, ImgList, Spin, DateUtils, Tabs, TeeShape;

type
  TMyPoint = record
     Xe, Ye : Double;
  end;

  TForm1 = class(TForm)
    Chart: TChart;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ShowSettings: TSpeedButton;
    ShowTextFile: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SavePictureDialog1: TSavePictureDialog;
    _label: TLabel;
    _shape: TShape;
    ShowDataRows: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Label19: TLabel;
    Shape8: TShape;
    StatusLabel: TLabel;
    ScrollBox1: TScrollBox;
    Yname: TStaticText;
    YFormat: TComboBox;
    Yend: TStaticText;
    YColN: TStaticText;
    Ybegin: TStaticText;
    Xname: TStaticText;
    Xformat: TComboBox;
    Xend: TStaticText;
    XColN: TStaticText;
    Xbegin: TStaticText;
    TittleBox: TStaticText;
    TearXY: TStaticText;
    TearByX: TStaticText;
    RefreshButton2: TSpeedButton;
    Spacer: TStaticText;
    Shape7: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    Shape1: TShape;
    RSpacer: TRadioGroup;
    NameColN: TStaticText;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    GraphTypes: TComboBox;
    Edit: TEdit;
    DoXCol: TCheckBox;
    DoTearXY: TCheckBox;
    DoTearByX: TCheckBox;
    DotandZpt: TCheckBox;
    DoNameCol: TCheckBox;
    BeginFrom: TStaticText;
    Shape10: TShape;
    Shape11: TShape;
    FileText: TMemo;
    ScrollBox2: TScrollBox;
    SaveDialog1: TSaveDialog;
    OpenDialog2: TOpenDialog;
    ShowLegend: TCheckBox;
    ProgressBar: TProgressBar;
    SaveDialog2: TSaveDialog;
    AutoLim: TCheckBox;
    A1: TStaticText;
    A2: TStaticText;
    A3: TStaticText;
    A4: TStaticText;
    Shape6: TShape;
    Anim: TCheckBox;
    Graphs: TCheckListBox;
    BUp: TSpeedButton;
    BDown: TSpeedButton;
    DelSeries: TSpeedButton;
    SortAz: TSpeedButton;
    Label11: TLabel;
    DateF: TStaticText;
    Label21: TLabel;
    TimeF: TStaticText;
    Ramka: TShape;
    ZoomIn: TImage;
    ZoomOut: TImage;
    LegendPos: TComboBox;
    Panel6: TPanel;
    Shape9: TShape;
    ScolorLabel: TLabel;
    SShow: TCheckBox;
    RB: TScrollBar;
    GB: TScrollBar;
    BB: TScrollBar;
    ChColour: TShape;
    Bevel1: TBevel;
    Label22: TLabel;
    Sname: TEdit;
    SNameLabel: TLabel;
    Label20: TLabel;
    DotSize: TSpinEdit;
    ShoDots: TCheckBox;
    Label23: TLabel;
    ShowBorder: TCheckBox;
    Label24: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label25: TLabel;
    UpDown1: TUpDown;
    ImageDot: TImage;
    Bevel2: TBevel;
    ImageList: TImageList;
    ShowDotBorder: TCheckBox;
    Shape15: TShape;
    Bevel3: TBevel;
    Shape16: TShape;
    Shape17: TShape;
    LineH: TSpinEdit;
    Label26: TLabel;
    SStairs: TCheckBox;
    Panel7: TPanel;
    HidePan2: TSpeedButton;
    Panel8: TPanel;
    ScrPanel2: TSpeedButton;
    ShowAllFile: TSpeedButton;
    ScrPanel: TSpeedButton;
    HidePan1: TSpeedButton;
    HidePan5: TSpeedButton;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    VY: TComboBox;
    VX: TComboBox;
    MapMode: TCheckBox;
    Panel9: TPanel;
    Label27: TLabel;
    IncX: TStaticText;
    Label28: TLabel;
    IncY: TStaticText;
    Panel10: TPanel;
    CheckUncheck: TSpeedButton;
    BP2: TPanel;
    BP3: TPanel;
    BP1: TPanel;
    ZoomInB: TSpeedButton;
    ZoomOutB: TSpeedButton;
    ResZoom: TSpeedButton;
    DoSquare: TSpeedButton;
    OpenTabFile: TSpeedButton;
    AddData: TSpeedButton;
    OpenSetFile: TSpeedButton;
    SaveSet: TSpeedButton;
    Refresh: TSpeedButton;
    BP4: TPanel;
    ShowXYB: TSpeedButton;
    SaveImg: TSpeedButton;
    BH1: TLabel;
    BL2: TLabel;
    BL3: TLabel;
    BL4: TLabel;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    BL1: TLabel;
    BH2: TLabel;
    BH3: TLabel;
    BH4: TLabel;
    BP5: TPanel;
    Shape28: TShape;
    BL5: TLabel;
    BH5: TLabel;
    SaveGraph: TSpeedButton;
    AddGraph: TSpeedButton;
    ResetAll: TSpeedButton;
    BP6: TPanel;
    Shape29: TShape;
    BL6: TLabel;
    BH6: TLabel;
    KeepP3: TCheckBox;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    SaveDialog3: TSaveDialog;
    OpenDialog3: TOpenDialog;
    NoWrite: TLabel;
    BP7: TPanel;
    Panel10C: TLabel;
    Shape18: TShape;
    BL7: TLabel;
    BH7: TLabel;
    LineMMB: TRadioButton;
    LineLMB: TRadioButton;
    Label29: TLabel;
    Label30: TLabel;
    Shape33: TShape;
    Label31: TLabel;
    Label32: TLabel;
    AxisTickSize: TStaticText;
    AxisHeaderSize: TStaticText;
    HeaderSize: TStaticText;
    Comments: TSpeedButton;
    Panel11: TPanel;
    Shape34: TShape;
    Label33: TLabel;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    HidePan11: TSpeedButton;
    Panel12: TPanel;
    AcceptComm: TSpeedButton;
    CommentList: TListBox;
    DeleteComm: TSpeedButton;
    CommText: TEdit;
    CommTextLabel: TLabel;
    ShowComms: TCheckBox;
    Shape38: TShape;
    CommX: TEdit;
    CommY: TEdit;
    Label35: TLabel;
    CommXLabel: TLabel;
    CommYLabel: TLabel;
    DoLabelCol: TCheckBox;
    LabelColN: TStaticText;
    Shape39: TShape;
    Shape40: TShape;
    PickGraph: TCheckBox;
    Shape41: TShape;
    StyleWin: TSpeedButton;
    Panel13: TPanel;
    StyleLabel: TLabel;
    StyleBox: TComboBox;
    ShowLeg2: TCheckBox;
    LegPos2: TComboBox;
    LegFSize: TSpinEdit;
    Label41: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    HSize2: TSpinEdit;
    SecondFont: TComboBox;
    MainFont: TComboBox;
    ATSize2: TSpinEdit;
    AHSize2: TSpinEdit;
    ScrollBox3: TScrollBox;
    HidePan13: TSpeedButton;
    ALim2: TCheckBox;
    Shape42: TShape;
    XBegin2: TEdit;
    XEnd2: TEdit;
    YBegin2: TEdit;
    YEnd2: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    IncY2: TEdit;
    Label47: TLabel;
    IncX2: TEdit;
    Label48: TLabel;
    Hold2: TCheckBox;
    Hold1: TCheckBox;
    BP3a: TPanel;
    Unblock: TSpeedButton;
    CommColor: TColorBox;
    CommArrow: TSpinEdit;
    CommFont: TSpinEdit;
    CommArrowLabel: TLabel;
    CommFontLabel: TLabel;
    Label34: TLabel;
    PickGraph2: TCheckBox;
    ImageDotHint: TImage;
    Bevel4: TBevel;
    UpDown2: TUpDown;
    HintDotSize: TSpinEdit;
    Label49: TLabel;
    Label50: TLabel;
    HintColorBox: TColorBox;
    Label51: TLabel;
    Label52: TLabel;
    WSX: TSpinEdit;
    WSY: TSpinEdit;
    WSS: TCheckBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    function PickToGraph(X,Y :Double; Gname: String):TMyPoint;
    function PickToAllGraph(X,Y :Double; ProjXY:Boolean):TMyPoint;
    procedure EditChange(Sender: TObject);
    procedure TittleBoxClick(Sender: TObject);
    procedure SetEdit(Sender: TObject);
    procedure TittleBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ChartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ShowSettingsClick(Sender: TObject);
    procedure ShowTextFileClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure OpenTabFileClick(Sender: TObject);
    procedure SaveImgClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
//////!
    procedure AddChildGraph(par:TLineSeries; num:integer;  x0,y0:double);
    procedure RefreshGraphs;
    procedure AddCosmetics;
//////!
    procedure RSpacerClick(Sender: TObject);
    procedure EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpenDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure LoadTabData(FN:String);
    procedure SavePictureDialog1CanClose(Sender: TObject;
      var CanClose: Boolean);
    procedure GraphTypesChange(Sender: TObject);
    procedure DoXColClick(Sender: TObject);
    procedure DoXColKeyPress(Sender: TObject; var Key: Char);
    procedure DoNameColClick(Sender: TObject);
    procedure DoNameColKeyPress(Sender: TObject; var Key: Char);
    procedure ScrPanelClick(Sender: TObject);
    procedure FileTextMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShowDataRowsClick(Sender: TObject);
    procedure GraphsClick(Sender: TObject);
    function FindChart(Cname:string):integer;
    function ChildsCount(Cname:string):integer;
    procedure RefreshChilds(GN:integer);
    procedure ShowAllFileClick(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpenSetFileClick(Sender: TObject);
    procedure OpenDialog2CanClose(Sender: TObject; var CanClose: Boolean);
    procedure LoadSets(FileName:string);
    procedure SaveSets(FileName:string);
    procedure AutoLimClick(Sender: TObject);
    procedure SaveSetClick(Sender: TObject);
    procedure ShowLegendClick(Sender: TObject);
    procedure ShowLegendKeyPress(Sender: TObject; var Key: Char);
    procedure BDownClick(Sender: TObject);
    procedure DelSeriesClick(Sender: TObject);
    procedure BUpClick(Sender: TObject);
    procedure SnameChange(Sender: TObject);
    procedure SortAzClick(Sender: TObject);
    procedure ChartMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ChartMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LegendPosChange(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure SShowClick(Sender: TObject);
    procedure ShowBorderClick(Sender: TObject);
    procedure ShoDotsClick(Sender: TObject);
    procedure DotSizeChange(Sender: TObject);
    procedure ShowDotBorderClick(Sender: TObject);
    procedure BBChange(Sender: TObject);
    procedure GraphsClickCheck(Sender: TObject);
    procedure LineHChange(Sender: TObject);
    procedure BarHChange(Sender: TObject);
    procedure SStairsClick(Sender: TObject);
    procedure HidePan2Click(Sender: TObject);
    procedure HidePan1Click(Sender: TObject);
    procedure HidePan5Click(Sender: TObject);
    procedure RefreshButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GetGToMemo;
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure AddDataClick(Sender: TObject);
    procedure GetMemoPos;
    procedure FileTextMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FileTextMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FileTextKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FileTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DoSquareClick(Sender: TObject);
    procedure ZoomInBClick(Sender: TObject);
    procedure ZoomOutBClick(Sender: TObject);
    procedure ResZoomClick(Sender: TObject);
    procedure AxisTiming;
    procedure ChartGetNextAxisLabel(Sender: TChartAxis;
      LabelIndex: Integer; var LabelValue: Double; var Stop: Boolean);
    procedure ChartMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure ShowXYBClick(Sender: TObject);
    procedure CheckUncheckClick(Sender: TObject);
    procedure BH1Click(Sender: TObject);
    procedure BL2DblClick(Sender: TObject);
    procedure BL3DblClick(Sender: TObject);
    procedure BL4DblClick(Sender: TObject);
    procedure BL5DblClick(Sender: TObject);
    procedure ResetAllClick(Sender: TObject);
    procedure Panel3CanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure BL6DblClick(Sender: TObject);
    procedure AddGraphClick(Sender: TObject);
    procedure SaveGraphClick(Sender: TObject);
    procedure SaveChart(Fname:String);
    procedure LoadChart(FName:String);
    procedure OpenDialog3CanClose(Sender: TObject; var CanClose: Boolean);
    procedure LineLMBClick(Sender: TObject);
    procedure LineLMBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BL7DblClick(Sender: TObject);
    procedure DoGrey;
    procedure Settings;
    procedure FormResize(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure HeaderSizeClick(Sender: TObject);
    procedure CommentsClick(Sender: TObject);
    procedure AddCommSerie;
    procedure HidePan11Click(Sender: TObject);
    procedure CommentListClick(Sender: TObject);
    procedure ShowCommsClick(Sender: TObject);
    procedure ShowCommsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DeleteCommClick(Sender: TObject);
    procedure CommArrowChange(Sender: TObject);
    procedure CommFontChange(Sender: TObject);
    procedure CommColorChange(Sender: TObject);
    procedure AcceptCommClick(Sender: TObject);
    procedure PickGraphClick(Sender: TObject);
    procedure PickGraphKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CommTextChange(Sender: TObject);
    procedure CommXChange(Sender: TObject);
    procedure CommYChange(Sender: TObject);
    procedure StyleWinClick(Sender: TObject);
    procedure StyleBoxChange(Sender: TObject);
    procedure ShowLeg2KeyPress(Sender: TObject; var Key: Char);
    procedure ShowLeg2Click(Sender: TObject);
    procedure LegPos2Change(Sender: TObject);
    procedure HSize2Change(Sender: TObject);
    procedure AHSize2Change(Sender: TObject);
    procedure ATSize2Change(Sender: TObject);
    procedure RefreshFont;
    procedure LegFSizeChange(Sender: TObject);
    procedure MainFontChange(Sender: TObject);
    procedure SecondFontChange(Sender: TObject);
    procedure HidePan13Click(Sender: TObject);
    procedure AutoLimKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ALim2Click(Sender: TObject);
    procedure ALim2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XBegin2Change(Sender: TObject);
    procedure IncX2Change(Sender: TObject);
    procedure Hold2Click(Sender: TObject);
    procedure Hold1Click(Sender: TObject);
    procedure Hold1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UnblockClick(Sender: TObject);
    procedure ChartResize(Sender: TObject);
    procedure ChartAfterDraw(Sender: TObject);
    procedure PickGraph2Click(Sender: TObject);
    procedure PickGraph2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure HintDotSizeChange(Sender: TObject);
    procedure HintColorBoxChange(Sender: TObject);
    procedure WSSClick(Sender: TObject);
    procedure WSXChange(Sender: TObject);
    procedure LoadLang(FN:String);
    procedure SaveLang(FN:String);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

    procedure ScriptLoad(FN:String);

//    procedure OpenDialog3CanClose(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    RNavArea : TChartShape;
  public
    { Public declarations }
     F3x,F3y : Double;
     CList2 :TStringList;
     ChangingBars:Boolean;
  end;
   function MySort(Iteml, Item2: Pointer): Integer;

var
  Form1: TForm1;
  ChangePar :TStaticText;
  GData, ErrLog:TStringList;
  GraphsCount, DotStyle, HintDotStyle, CarPos, CurComm :integer;
  MyDir, GFileName :String;
  Params: array [1..32] of String;
  DeltaR, DeltaRX, DeltaRY :Double;
  FirstStart, DoAdd, SqL, DoChk, DoThick, DoComz, DoSq, DoComGraphs, DoThickPts,
  DoProfi, ChartLoaded, isLoading, isChoosing, doRNav, doLng, DoNoZeros, DoCrosses,
  DoNoMarks :boolean;

  DoScript :Boolean;

  BPW :array [1..7] of Integer;
implementation

uses Unit2a, Unit3, Unit4;

procedure SyncPB;
begin
  if Form4.Showing then
     Form4.ProgressBar1.Position := Form1.ProgressBar.Position;
end;

function StrToFloat2(s:string):Double;

 function IsDigit(ch:char):boolean;
 begin
    IsDigit :=false;
    if (ch in ['0'..'9']) or (ch = DecimalSeparator) then
      IsDigit :=true;
 end;

var i:integer;
begin

 for I := 1 to length(s) do
   if (s[i]='.')or (s[i]=',') then
     s[i] := DecimalSeparator;

 for i:=length(s) Downto 1 do
    if IsDigit(s[i]) = false then
        if (s[i]<>'-') and (s[i]<>'+') and (s[i]<>'E') then
        begin
          Delete(s,i,1);
        end;
 try
   result := StrToFloat(s);
 except
   result :=0;
 end;
end;

function StrToLatLon(s : string) :Double ;

var    i, MaxCol, StartI :integer;
var South, West: boolean;

  function DeleteDegMinSecSeparators(s:string):string;
  var j:integer;
  begin
     Result := s;
     if result <> '' then
      for j:= length(Result)+1 DownTo 1 do
        Case Ord(Result[j]) of
            34, 39, 176 : Result[j] := ' ';
            Ord('N'),Ord('S'),Ord('W'),Ord('E'):
               if j=1 then
                 if Result[j+1]<>' ' then
                   Insert(' ', Result, j+1);
        end;
  end;


  function GetHemisphere(s:string; var South, West : boolean): boolean;
  begin
        Result :=false;
        if (s = 'N') or (s = 'E') then
        Begin
          Result := true;
        end
         else
           if  (s = 'S') then
           Begin
                Result := true;
                South := true;
           End
             else
              if (s = 'W') then
              Begin
                Result := true;
                West := true;
              End;
  end;


  function GetColN(str, sep: string; n: integer): integer;
  var j,stl,b :integer;
  begin

    Result:=0;
    stl:=0;
    b:=1;

    for j:=1 to n do
     if (copy(Str,j,1)=sep) and (copy(Str,j-1,1)<>sep) then
     begin
       inc(stl);
       b:=j+1;
     end;

    Result:=stl;
  end;

  function GetCols(str, sep: string; ColN, ColCount:integer): string;
  var j,stl,b :integer;
  begin

    Result:='';
    stl:=0;
    b:=1;

    for j:=1 to length(Str)+1 do
    Begin

      if ((copy(Str,j,1)=sep)or(j=length(Str)+1))and(copy(Str,j-1,1)<>sep) then
      begin

       if (stl>=ColN) and (Stl<ColN+ColCount) then
       Begin
        if result='' then
          Result:=(Copy(Str,b,j-b))
            else
              Result:=Result+' '+(Copy(Str,b,j-b));
       End;

       inc(stl);
       b:=j+1;

       if stl>ColN+ColCount then
          break;
      end;

    End;

    if result <> '' then
      for j:= 1 to length(Result)+1 do
        if ((Result[j] = '.') or (Result[j] = ','))and(Result[j]<>sep) then
           Result[j] := DecimalSeparator;
  end;

begin

  South := false;
  West := false;
      
  s := DeleteDegMinSecSeparators(s);

  MaxCol:= GetColN(S,' ',length(s));

  if MaxCol >= 1 then
  Begin

     StartI :=0;
       for i := 0 to MaxCol do
         if GetHemiSphere(GetCols(S,' ',i,1),South, West) then
         begin
           if i = 0 then
             StartI := 1;
           break;
         end;

     Result:= StrToFloat2(GetCols(S,' ', StartI , 1))
             +StrToFloat2(GetCols(S,' ', StartI +1, 1))/60
             +StrToFloat2(GetCols(S,' ', StartI +2, 1))/3600;

  End
   else
     Begin
       Result:= StrToFloat2(s);
     End;

    if West then
    begin
      Result := - Result;
    end else
    if South then
    begin
      Result := - Result;
    end;
end;



{$R *.dfm}
function MySort(Iteml, Item2: Pointer): Integer;
begin
   if (TChartSeries(Iteml).Title < (TChartSeries(Item2).Title))
     then Result := -1
     else if (TChartSeries(Iteml).Title > (TChartSeries(Item2).Title))
             then Result := 1
             else Result := 0;

end;

function PointIntoRect(Point: TPoint; Rect: TRect): boolean;
begin
  Result :=
    (Point.x >= Rect.Left) and
    (Point.x <= Rect.Right) and
    (Point.y >= Rect.Top) and
    (Point.y <= Rect.Bottom);
end;

function GetSep(str: string): string;
const
  n = 6;
  seps: array [1..n] of string = (':','/','\','-','.',',');
var i:integer;
begin
  Result:='';
  for i:=1 to n do
    if Pos(seps[i],str)>1 then
    begin
      Result:=seps[i];
      break;
    end;

//  if Result='' then
//  begin

//  end;
end;

function DS(Str:string):string;
var j :integer;
begin
  if Str <> '' then
  begin
    for j:=1 to length(Str)+1 do
      if Form1.DotAndZpt.Checked  then
        if ((str[j] = '.') or (str[j] = ',')) then
          str[j] := DecimalSeparator;
  end
   else Str :='0';

  Result := Str;
end;

function GetCols(str: string; ColN, ColCount:integer): string;
var j,stl,b :integer;
    sep :String;
begin
   // подготовка
   result:='';
   stl:=0;
   b:=1;
   sep:=' ';

   Case form1.RSpacer.itemIndex of
     0: sep:=' ';
     1: sep:=#$9;
     2: sep:=form1.Spacer.caption[1];
     3: sep:=',';
     4: sep:=';';
   end;

   for j:=1 to length(Str)+1 do
   Begin

     if ((copy(Str,j,1)=sep)or(j=length(Str)+1))and(copy(Str,j-1,1)<>sep) then
     begin

       if (stl>=ColN) and (Stl<ColN+ColCount) then
       Begin
        if result='' then
          Result:=(Copy(Str,b,j-b))
            else
              Result:=Result+' '+(Copy(Str,b,j-b));
       End;

       inc(stl);
       b:=j+1;

       if stl>ColN+ColCount then
          break;
     end;

  End;

  if result <> '' then
    for j:= 1 to length(Result)+1 do
      if Form1.DotAndZpt.Checked  then
        if ((result[j] = '.') or (result[j] = ','))and(result[j]<>sep) then
           result[j] := DecimalSeparator;
end;

function GetColN(str: string; n: integer): integer;
var j,stl,b :integer;
    sep :String;
begin
   // подготовка
   result:=0;
   stl:=0;
   b:=1;
   sep:=' ';

   Case form1.RSpacer.itemIndex of
     0: sep:=' ';
     1: sep:=#$9;
     2: sep:=form1.Spacer.caption[1];
     3: sep:=',';
     4: sep:=';';
   end;

   for j:=1 to n do
   Begin

     if ((copy(Str,j,1)=sep){or(j=length(Str)+1)})and(copy(Str,j-1,1)<>sep) then
     begin
       inc(stl);
       b:=j+1;
     end;

   end;

  result:=stl;
end;


function TimeToSec(ObsTime:string):real;
var i,j,k:integer;
    hour,min:integer;
    sec,rs:real;
begin
 try
  k:=0;
  j:=1;

  hour:=0;
  min:=0;
  sec:=0.0;

  for i := 1 to length(ObsTime) do
  Begin

   if (Copy(ObsTime,i,1)=':')or(i=length(ObsTime)) then
   Begin
    inc(k);

    case k of
      1: hour:=strtoint(copy(ObsTime,j,i-j));
      2: min:=strtoint(copy(ObsTime,j,i-j));
      3: sec:=strtofloat2(copy(ObsTime,j,i-j+1));
    end;

    j:=i+1;
   End;


  End;

 rs:=hour*3600+min*60+sec;
 Result:=rs; //format('%.11f',[rs]);
 except
  ErrLog.Add('Ошибка перевода времени! (1)');
  Result:=0;
 end;

end;

function SecToTime(Sec:real):string;
var h,m:integer;
begin
    try
      h:=trunc(sec/3600);
      sec:=sec-h*3600;
      m:=trunc(sec/60);
      sec:=sec-m*60;
      result:=IntToStr(h)+':'+IntToStr(m)+':'+format('%.3f',[sec]);
    except
      result:='00:00:0.000';
      ErrLog.Add('Ошибка перевода времени! (2)');
    end;
end;


function Grad(rad:real):real;
begin
  grad:=(rad*180)/pi;
end;

function MDYtoDMY(ObsDate:string):String;
var i,j,k:integer;
    D,M,Y:string;
begin
 try
  k:=0;
  j:=1;

  D:='';
  M:='';
  Y:='';

  for i := 1 to length(ObsDate) do
  Begin
   if (Copy(ObsDate,i,1)='/')or(i=length(ObsDate)) then
   Begin
    inc(k);
    case k of
      1: M:=copy(ObsDate,j,i-j);
      2: D:=copy(ObsDate,j,i-j);
      3: Y:=copy(ObsDate,j,i-j+1);
    end;
    j:=i+1;
   End;
  End;

 Result:=D+'/'+M+'/'+Y;
// Showmessage(result);
 except
  ErrLog.Add('Ошибка перевода даты!');
  Result:='';
 end;
end;

procedure RefreshCommList;
var i, GN: Integer;
begin
    Form1.CList2.Clear;
    Form1.Panel12.Visible := false;
    Form1.CommentList.Clear;

    for GN:= Form1.Chart.SeriesCount-1  Downto 0 do
     if Pos('_&_&_&_&_Comments',Form1.Chart.Series[GN].Title)>0 then
     begin
       if Form1.Chart.Series[GN].Count = 0 then
          Form1.Chart.Series[GN].Destroy
            else
              for i:=0 to Form1.Chart.Series[GN].Count-1 do
              Begin
                Form1.CommentList.Items.Add(Form1.Chart.Series[GN].ValueMarkText[i]);
                Form1.CList2.Add(Form1.Chart.Series[GN].Title)
              End;
     end;
end;


procedure TForm1.EditChange(Sender: TObject);
begin

  ChangePar.Caption := Edit.text;

  if ChangePar.Name = 'TittleBox' then
    begin
       if Chart.Title.Text.Count>0 then
        Chart.Title.Text[0] := TittleBox.Caption
         else
          Chart.Title.Text.Add(TittleBox.Caption);
       if TittleBox.Caption='' then
         Chart.Title.Text.Clear;
    end
  else
  if ChangePar.Name = 'Xname' then
    begin
       try
          Chart.BottomAxis.Title.Caption:=Xname.Caption;
        except
        end;
    end
    else
    if ChangePar.Name = 'Yname' then
    begin
       try
          Chart.LeftAxis.Title.Caption:=Yname.Caption;
        except
        end;
    end
    else
    if ChangePar.Name = 'BeginFrom' then
    begin
       try
          if StrToInt(Edit.Text)<0 then
            Edit.Text:='0';
        except
           ChangePar.Caption:='0';
        end;
    end
    else
    if ChangePar.Name = 'Spacer' then
    begin
       if length(Edit.Text)<1 then
            Edit.Text:=Edit.Text[length(Edit.Text)];
    end
     else
    if (ChangePar.Name = 'IncX')or(ChangePar.Name = 'IncY') then
    begin
       IncX.caption := DS(IncX.caption);
       IncY.caption := DS(IncY.caption);
       IncX2.Text := IncX.caption;
       IncY2.Text := IncY.caption;
       Chart.BottomAxis.Increment:=StrToFloat(IncX.caption);
       Chart.LeftAxis.Increment:=StrToFloat(IncY.caption);
    end
      else
    if (ChangePar.Name = 'Xend')or(ChangePar.Name = 'Xbegin')
        or(ChangePar.Name = 'Yend')or(ChangePar.Name = 'Ybegin') then
    begin
        XBegin2.Text := XBegin.Caption;
        XEnd2.Text := XEnd.Caption;
        YBegin2.Text := YBegin.Caption;
        YEnd2.Text := YEnd.Caption;

       if Autolim.Checked=false then
       try
        Chart.leftAxis.Automatic:=false;
        Chart.BottomAxis.Automatic:=false;
        if Chart.BottomAxis.IsDateTime=false then
        Begin
          Chart.BottomAxis.Minimum:= StrToFloat(Xbegin.caption);
          Chart.BottomAxis.Maximum:= StrToFloat(Xend.caption);
        end else
          begin
            Chart.BottomAxis.Minimum:= StrToDateTime(Xbegin.caption);
            Chart.BottomAxis.Maximum:= StrToDateTime(Xend.caption);
          end;
        if Chart.LeftAxis.isDateTime=false then
        Begin
          Chart.LeftAxis.Minimum:=StrToFloat(Ybegin.caption);
          Chart.LeftAxis.Maximum:=StrToFloat(Yend.caption);
        end  else
          begin
            Chart.LeftAxis.Minimum:=StrToDateTime(Ybegin.caption);
            Chart.LeftAxis.Maximum:=StrToDateTime(Yend.caption);
          end;
      except end;
    end;
    if (changePar.Name= 'HeaderSize') or (changePar.Name='AxisHeaderSize')
        or (changePar.Name='AxisTickSize') then
      try
        Chart.Title.Font.Size := StrToInt(HeaderSize.Caption);
        Chart.BottomAxis.Title.Font.Size := StrToInt(AxisHeaderSize.Caption);
        Chart.LeftAxis.Title.Font.Size := Chart.BottomAxis.Title.Font.Size;
        Chart.BottomAxis.LabelsFont.Size := StrToInt(AxisTickSize.Caption);
        Chart.LeftAxis.LabelsFont.Size := Chart.BottomAxis.LabelsFont.Size;
      finally
        if Chart.Title.Font.Size< 8 then
          Chart.Title.Font.Size := 8;
        if Chart.Title.Font.Size> 72 then
          Chart.Title.Font.Size := 72;
        if Chart.BottomAxis.Title.Font.Size < 8 then
          Chart.BottomAxis.Title.Font.Size := 8;
        if Chart.BottomAxis.Title.Font.Size > 24 then
          Chart.BottomAxis.Title.Font.Size := 24;
        Chart.LeftAxis.Title.Font.Size := Chart.BottomAxis.Title.Font.Size;
        if Chart.BottomAxis.LabelsFont.Size < 8 then
          Chart.BottomAxis.LabelsFont.Size := 8;
        if Chart.BottomAxis.LabelsFont.Size > 24 then
          Chart.BottomAxis.LabelsFont.Size := 24;
        Chart.LeftAxis.LabelsFont.Size := Chart.BottomAxis.LabelsFont.Size;


        AHSize2.Value := (Chart.BottomAxis.Title.Font.Size);
        ATSize2.Value  := (Chart.BottomAxis.LabelsFont.Size);
        HSize2.Value  := (Chart.Title.Font.Size);
      end;


    if Chart.Title.Text.Count>0 then
       Caption := Chart.Title.Text[0]
         else
           Caption := Application.Title;

end;

procedure TForm1.SetEdit(Sender: TObject);
begin
 if Sender is TStaticText then
   with TStaticText(Sender) do
   Begin
     Edit.text := TStaticText(Sender).Caption;
     Edit.Top := TStaticText(Sender).Top;
     Edit.Left := TStaticText(Sender).Left;
     Edit.Height := TStaticText(Sender).Height;
     Edit.Width := TStaticText(Sender).Width;
   end;


end;

procedure TForm1.TittleBoxClick(Sender: TObject);
begin
  ChangePar:= TStaticText(Sender);

  Edit.Text := TStaticText(Sender).Caption;
  Edit.Top := TStaticText(Sender).Top;
  Edit.Left := TStaticText(Sender).Left;
  Edit.Height := TStaticText(Sender).Height;
  Edit.Width := TStaticText(Sender).Width;

  Edit.Enabled:=true;
  Edit.Visible:=true;

  Edit.SetFocus;
end;

procedure TForm1.TittleBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Sender is TStaticText then
    TStaticText(Sender).BevelKind:=bkSoft;
end;

procedure TForm1.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var i:integer;
begin
  for i:=0 to ScrollBox1.ControlCount-1 do
   if ScrollBox1.Controls[i] is TStaticText then
      TStaticText(ScrollBox1.Controls[i]).BevelKind:=bkFlat;

  if not(KeepP3.Checked) then
    Panel3.Height:=2;
end;

procedure TForm1.ChartMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var tmpx,tmpy:double;
    ctmpXY :TMyPoint;
    GN, i, j: integer;
    s1,s2,s3,s4 :string;
begin
TRY
 if not Focused then
 begin
    SetFocus();
 end;

 if not(KeepP3.Checked) then
   Panel3.Height:=2;
 if ramka.Visible then
 Begin
     Ramka.Width := -Ramka.Left+X;
     Ramka.Height := -Ramka.top+Y;
     if (ramka.Width<0)or(ramka.Height<0) then
     begin
      ramka.Width :=0;
      ZoomOut.Width := 32;
      ZoomOut.Height := 32;
      ZoomOut.Top :=  y;
      ZoomOut.Left := x;
      ZoomOut.Visible := true;
      ZoomIn.Visible := false;
     end
      else
      begin
        ZoomIn.Width := Ramka.Width;
        ZoomIn.Height := Ramka.Height;
        ZoomIn.Top := Ramka.Top;
        ZoomIn.Left := Ramka.Left;
        ZoomIn.Visible := true;
        ZoomOut.Visible := false;
      end;
 end;


 if Panel11.Visible then
 Begin
   if Chart.SeriesCount>0 then
      BEGIN
        /// INITING

        Chart.Series[0].GetCursorValues(tmpX,tmpY);

        if tmpx > Chart.BottomAxis.Maximum then
            tmpx := Chart.BottomAxis.Maximum;
        if tmpx < Chart.BottomAxis.Minimum then
            tmpx := Chart.BottomAxis.Minimum;

        if tmpy > Chart.LeftAxis.Maximum then
            tmpy:= Chart.LeftAxis.Maximum;
        if tmpy < Chart.LeftAxis.Minimum then
            tmpy := Chart.LeftAxis.Minimum;

        /// CORRECTING
        if (PickGraph.Checked)and(Form2a.GrList.ItemIndex>-1) then
        begin
          cTmpXY:= PickToGraph(tmpx,tmpy,Form2a.GrList.Items[Form2a.GrList.ItemIndex]);
          tmpX := cTmpXY.Xe;
          tmpY := cTmpXY.Ye;
        end
          else
            if (GetKeyState(VK_SHIFT) < 0) or (GetKeyState(VK_CONTROL) < 0) then
            begin
              cTmpXY:= PickToAllGraph(tmpx,tmpy,(GetKeyState(VK_SHIFT) < 0));
              tmpX := cTmpXY.Xe;
              tmpY := cTmpXY.Ye;
            end;


        /// DRAWING

        GN:=FindChart('_&_&_&_&_&');
        if GN<>-1 then
        begin
          if Chart.Series[GN].Count<1 then
            Chart.Series[GN].AddXY(tmpX,tmpY)
            else
              begin
               Chart.Series[GN].XValue[0]:=tmpX;
               Chart.Series[GN].YValue[0]:=tmpY;
              end;
        end;

     END
 End;

 if Panel10.Visible then
 Begin
   if Chart.Seriescount>0 then
     begin
      Chart.Series[0].GetCursorValues(tmpX,tmpY);

      GN:=FindChart('_&_&_&_&_&');
      if GN<>-1 then
      if (Chart.Series[GN].Count < 3) then
        if (PickGraph2.Checked)and(Form2a.GrList.ItemIndex>-1) then
        begin
          cTmpXY:= PickToGraph(tmpx,tmpy,Form2a.GrList.Items[Form2a.GrList.ItemIndex]);
          tmpX := cTmpXY.Xe;
          tmpY := cTmpXY.Ye;
        end
          else
            if (GetKeyState(VK_SHIFT) < 0) or (GetKeyState(VK_CONTROL) < 0) then
            begin
              cTmpXY:= PickToAllGraph(tmpx,tmpy,(GetKeyState(VK_SHIFT) < 0));
              tmpX := cTmpXY.Xe;
              tmpY := cTmpXY.Ye;
            end;


        if Chart.BottomAxis.Title.Caption <> '' then
          s1 := Chart.BottomAxis.Title.Caption+': '
            else
              s1 := 'X: ';
        if Chart.LeftAxis.Title.Caption <> '' then
          s2 := Chart.LeftAxis.Title.Caption+': '
            else  s2 := 'Y: ';


        if  Chart.BottomAxis.IsDateTime then
           s1 := s1 + Chart.Series[0].GetHorizAxis.LabelValue(tmpX)
          else
            begin
                if abs(tmpX) <= 0.005 then
                   s1 := s1 + FloatToStr(tmpX)
                   else
                     s1 := s1 + Format('%.3f',[tmpX])
            end;

       if  Chart.LeftAxis.IsDateTime then
           s2 := s2  + Chart.Series[0].GetVertAxis.LabelValue(tmpY)
          else
          begin
            if abs(tmpY) <= 0.005 then
              s2 := s2 + FloatToStr(tmpY)
              else
                 s2 := s2 + Format('%.3f',[tmpY]);
          end;

      if DeltaR<>0 then
      Begin

         if DeltaR > 0.005 then
           s3:= 'Линейка: '+ Format('%.3f',[DeltaR])
            else
              s3:= 'Линейка: '+ FloatToStr(DeltaR);

          s3:= s3 + ' (';

          if Chart.BottomAxis.IsDateTime then
          Begin
             s3:= s3 + 'dX: ';
             if Abs(DeltaRX)>1 then
                 s3:= s3 + IntToStr(Trunc(DeltaRX))+'d ';
             s3:= s3 + TimeToStr((DeltaRX-Trunc(DeltaRX)));
          end else
            if Abs(DeltaRX) > 0.005 then
              s3:= s3 + 'dX: '+ Format('%.3f',[DeltaRX])
                else
                    s3:= s3 + 'dX: '+ FloatToStr(DeltaRX);

          s3 := s3 +',';

          if Chart.LeftAxis.IsDateTime then
           Begin
              s3:= s3 + ' dY: ';
             if Abs(DeltaRY)>1 then
                 s3:= s3 + IntToStr(Trunc(DeltaRY))+'d ';
             s3:= s3 + TimeToStr((DeltaRY-Trunc(DeltaRY)));
           end else
            if Abs(DeltaRY) > 0.005 then
              s3:= s3 + ' dY: '+ Format('%.3f',[DeltaRY])
                else
                    s3:= s3 + ' dY: '+ FloatToStr(DeltaRY);

            s3 := s3 +')';
      End;
       if windowstate<> wsmaximized then
         s4 := #13
           else
             s4 := ' ';
        if s3<>'' then
          Panel10C.Caption:= s1 + s4 + s2 + s4 + s3
            else
              Panel10C.Caption:= s1 + s4 + s2;

     end
       else
        Panel10C.Caption:='';

   GN:=FindChart('_&_&_&_&_&');
   if GN<>-1 then
     begin
            if Chart.Series[GN].Count < 1 then
               Chart.Series[GN].AddXY(tmpX,tmpY)
            else
              if (Chart.Series[GN].Count < 3) then
              begin
               Chart.Series[GN].XValue[Chart.Series[GN].Count-1] := tmpX;
               Chart.Series[GN].YValue[Chart.Series[GN].Count-1] := tmpY;
              end
               else
                begin
                   Chart.Series[GN].XValue[2] := Chart.Series[GN].XValue[1];
                   Chart.Series[GN].YValue[2] := Chart.Series[GN].YValue[1];
                end;



        deltaR :=0;

       { if Chart.Series[GN].Count=1 then
          Chart.Series[GN].AddXY(tmpX,tmpY)
            else
              if (Chart.Series[GN].Count>0)and(Chart.Series[GN].Count<3) then
              begin
               Chart.Series[GN].XValue[1]:=tmpX;
               Chart.Series[GN].YValue[1]:=tmpY;
              end;   }

        if Chart.Series[GN].Count>1 then
        Begin
           deltaRX := Chart.Series[GN].XValue[1]-Chart.Series[GN].XValue[0];
           deltaRY := Chart.Series[GN].YValue[1]-Chart.Series[GN].YValue[0];

           deltaR := SQRT( SQR(deltaRX) + SQR(deltaRY) );


        End;

 end;


 End;
 //// -------------
  if Chart.BottomAxis.IsDateTime then
  Begin
      XBegin.Caption := DateTimetoStr(Chart.BottomAxis.Minimum);
      XEnd.Caption := DateTimetoStr(Chart.BottomAxis.Maximum);
  End
   Else
    Begin
      XBegin.Caption := FLoattoStr(Chart.BottomAxis.Minimum);
      XEnd.Caption := FLoattoStr(Chart.BottomAxis.Maximum);
    End;

  if Chart.LeftAxis.IsDateTime then
  Begin
    YBegin.Caption := DateTimetoStr(Chart.LeftAxis.Minimum);
    YEnd.Caption := DateTimetoStr(Chart.LeftAxis.Maximum);
  End
    Else
    Begin
      YBegin.Caption := FLoattoStr(Chart.LeftAxis.Minimum);
      YEnd.Caption := FLoattoStr(Chart.LeftAxis.Maximum);
    End;
  try
    XBegin2.Text := XBegin.Caption;
    XEnd2.Text := XEnd.Caption;
    YBegin2.Text := YBegin.Caption;
    YEnd2.Text := YEnd.Caption;
  except
  end;
  Alim2.Checked :=not Autolim.Checked;

EXCEPT
END;
end;

procedure TForm1.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel3.Height:=50;
  if Panel2.Height = Form1.ClientHeight-2 then
      Panel2.Height := Form1.ClientHeight-50;
end;

procedure TForm1.ShowSettingsClick(Sender: TObject);
begin
  Panel1.Visible:= not(Panel1.Visible);
  if Panel1.Visible then TittleBox.OnClick(TittleBox);
end;

procedure TForm1.ShowTextFileClick(Sender: TObject);
begin
  Panel2.Visible:= not(Panel2.Visible);
end;

procedure TForm1.RefreshClick(Sender: TObject);
begin
  RefreshGraphs;
end;

procedure TForm1.OpenTabFileClick(Sender: TObject);
begin
   DoAdd:=false;
   Opendialog1.Execute;
end;

procedure TForm1.SaveImgClick(Sender: TObject);
 var Doit:boolean;
    Fname, fmt:String;
begin
  if not SavePictureDialog1.Execute then
    exit;

 Fname := SavePictureDialog1.FileName;
 DoIt := true;

 Case SavePictureDialog1.FilterIndex of
      1: fmt:='.bmp';
      2: fmt:='.wmf';
      3: fmt:='.emf';
 end;

 if Pos('.', Copy(Fname,length(Fname)-6,5))<=0 then
    FName:=Fname+fmt;

 if Fileexists(fname) then
    if MessageDlg('Файл с таким именем уже существует. Переписать его?',
      mtConfirmation,[mbYes, mbNo],0)<>6 then
        DoIt:=false;

 if DoIt then
 Begin
    Case SavePictureDialog1.FilterIndex of
      1: Chart.SaveToBitmapFile(Fname);
      2: Chart.SaveToMetafile(Fname);
      3: Chart.SaveToMetafileEnh(Fname);
    end;
  End;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.Title := 'Graph: Chart Builder';
  GData := TStringList.Create;
  ErrLog := TStringList.Create;
  CList2 := TStringList.Create;
  DotStyle := 0;
  MyDir := GetCurrentDir;
  FirstStart := true;
  DoThick := false;
  DoComGraphs := false;
  Mainfont.Items.Assign(Screen.Fonts);
  Secondfont.Items.Assign(Screen.Fonts);
  ChartLoaded := false;
  isLoading := False;
  isChoosing := False;
 // Application.OnMessage := AppOnMessage;
end;

procedure TForm1.RefreshGraphs;
var i, j, StartI, SeriesCount, SN, _SN, GN:integer;
    _NameColN, _XColN, _YColN, _LabelColN :integer;

    found :boolean;
    _X, _Y, _dX, _dY : Double;
    _XtoX, _YtoY, Tear, DoMap : Boolean;
    _String, _Mark, _OldMark :String;
    FormatSettings: TFormatSettings;
//    SeriesNames :array[1..256] of String;
    Series :array[1..10014] of TChartSeries;
    Mapper :array[1..10012] of Integer;
    LastX, LastY, TLX, TLY :array[1..10012] of Double;
    LastMRK :array[1..10012] of String;

    DotToZpt2:boolean;

//    test:array[1..5] of word;
begin

/// ПО УМОЛЧАНИЮ

  isLoading := True;
  ErrLog.Clear;
  StartI := 0;
  DeltaR := 0;
  _XColN := 1;
  _YColN := 2;
  _LabelColN := 3;
  Graphs.Clear;
  Panel6.Visible:=false;
  DoSquare.Enabled:=false;

  Panel11.Visible := false;
  Panel10.Visible := false;
  Chart.AllowZoom := true;

  for i:=1 to 10012 do
   Mapper[i] := 1;

///ОЧИСТКА
  Chart.SeriesList.Clear;
  SeriesCount:=0;
   if not DoNameCol.Checked then
     SeriesCount:=1;

/// ПРИСВОЕНИЕ ПЕРЕМЕННЫХ

  try
    StartI:=StrToInt(BeginFrom.caption)-1;

    _NameColN := StrToInt(NameColN.caption)-1;
    _XColN := StrToInt(XColN.caption)-1;
    _YColN := StrToInt(YColN.caption)-1;
    _LabelColN := StrToInt(LabelColN.caption)-1;
    DoMap := MapMode.Checked;

    if GraphTypes.ItemIndex<>0 then
       DoMap := false;

    if DoTearByX.Checked then
    Begin
      _XtoX := false;
      _dX := StrToInt(TearByX.Caption);

      case VX.ItemIndex of
        1: _dX := _dX*365;
        3: _dX := _dX/24;
        4: _dX := _dX/1440;
        5: _dX := _dX/86400;
        7: _dX := _dX/60;
        8: _dX := _dX/3600;
        9: _XtoX := true;
      end;
    End;

    if DoTearXY.Checked then
    Begin
      _YtoY := false;
      _dY := StrToInt(TearXY.Caption);
      case VY.ItemIndex of
        1: _dY := _dY*365;
        3: _dY := _dY/24;
        4: _dY := _dY/1440;
        5: _dY := _dY/86400;
        7: _dY := _dY/60;
        8: _dY := _dY/3600;
        9: _YtoY := true;
      end;
    End;

  except
    ErrLog.Add('Имеются ошибки в настройках!');
  end;

/// ПРИСВОЕНИЕ ГРАФИКУ ПАРАМЕТРОВ
  if Autolim.Checked then
  begin
    Chart.leftAxis.Automatic:=true;
    Chart.BottomAxis.Automatic:=true;
  end;
  Chart.Legend.Visible:=ShowLegend.Checked;
  Case LegendPos.ItemIndex of
    0:  Chart.Legend.Alignment:=laRight;
    1:  Chart.Legend.Alignment:=laLeft;
    2:  Chart.Legend.Alignment:=laBottom;
    3:  Chart.Legend.Alignment:=laTop;
  end;
  Chart.BottomAxis.Increment:=StrToFloat(IncX.caption);
  Chart.LeftAxis.Increment:=StrToFloat(IncY.caption);

  if Chart.Title.Text.Count>0 then
    Chart.Title.Text[0] := TittleBox.Caption
      else
        Chart.Title.Text.Add(TittleBox.Caption);

  if TittleBox.Caption='' then
    Chart.Title.Text.Clear;

  if Chart.Title.Text.Count>0 then
    Caption := Chart.Title.Text[0]
      else
      Caption := Application.Title;

  Chart.BottomAxis.Title.Caption:=Xname.Caption;
  Chart.LeftAxis.Title.Caption:=Yname.Caption;

/// ПОДГОТОВКА
  ProgressBar.Visible:=true;
  Form1.Repaint;

  // СОЗДАЮ ПЕРВЫЙ ГРАФИК
  Case GraphTypes.ItemIndex of
      0: Begin
          Series[1] := TLineSeries.Create(Chart);
         End;
      1: Begin
          Series[1] := TPointSeries.Create(Chart);
          TPointSeries(Series[1]).Pointer.VertSize := 3;
          TPointSeries(Series[1]).Pointer.HorizSize := 3;
          TPointSeries(Series[1]).Pointer.Style := psCircle;
          if DoCrosses then
             TPointSeries(Series[1]).Pointer.Style := psDiagCross;     
          if DoThickPts then
            TPointSeries(Series[1]).Pointer.Pen.Visible:= false;
         end;
      2: Series[1] := TAreaSeries.Create(Chart);
      3: Series[1] := TBarSeries.Create(Chart);
  end;
  Series[1].ParentChart:=Chart;
  Series[1].Title:= Label57.Caption+'-1';
  _String:= Label57.Caption+'-1';
  Series[1].Marks.Visible := DoLabelcol.Checked and Not(DoNoMarks);
  Series[1].Marks.Arrow.Color:=clBlack;
  if Xformat.ItemIndex>1 then
    Series[1].XValues.Datetime:=true;
  if Yformat.ItemIndex>1 then
    Series[1].YValues.Datetime:=true;

  if Series[1].YValues.Datetime=Series[1].XValues.Datetime then
    DoSquare.Enabled:=true;

  if (DoTearXY.Checked) or (DoTearByX.Checked) then
    Begin
       // СОЗДАЮ ГРАФИК РАЗРЫВОВ
       Series[10013]:=TPointSeries.Create(Chart);

       Series[10013].ParentChart:=Chart;
       Series[10013].Title:=  Label55.Caption;//'Разрывы';
       Series[10013].Marks.Visible:=false;
       Series[10013].Marks.Arrow.Color:=clBlack;
       Series[10013].SeriesColor:= clRed;
       TPointSeries(Series[10013]).Pointer.VertSize := 3;
       TPointSeries(Series[10013]).Pointer.HorizSize := 3;
       TPointSeries(Series[10013]).Pointer.Style := psCircle;
       if Xformat.ItemIndex>1 then
          Series[10013].XValues.Datetime:=true;
       if Yformat.ItemIndex>1 then
          Series[10013].YValues.Datetime:=true;
    end;

/// СОЗДАЮ СЕРИИ ДАННЫХ

  if GData.Count>StartI then
    For i:= StartI to GData.Count-1 do
    BEGIN
       // ЕСЛИ НАДО - ПРОВЕРЯЮ-ДОБАВЛЯЮ ИМЯ СЕРИИ

      if DoNameCol.Checked then
      Begin
        found:=false;
        _String:=GetCols(GData[i],_NameColN,1);
        if SeriesCount>0 then
        begin
          // ИЩУ ГРАФИК С ТЕМ ЖЕ ИМЕНЕМ
          for j := 1 to SeriesCount do
            if _String=Series[j].Title then
            begin
              // НАШЕЛ!!!
              SN:=J;
              Found:=true;
              Break;
            end;
        end
          else
          begin
            // ПЕРВЫЙ ГРАФИК
            found:=true;
            SN:=1;
            SeriesCount:=1;
            Series[1].Title:=_String;
          end;
        /// НЕ НАШЕЛ С ТАКИМ ИМЕНЕМ - СОЗДАЮ НОВЫЙ!
        if found=false then
        if SN<10012 then
        begin
           Inc(SeriesCount);
           SN:=SeriesCount;
           Case GraphTypes.ItemIndex of
              0: Series[SN]:=TLineSeries.Create(Chart);
              1: Begin
                  Series[SN]:=TPointSeries.Create(Chart);
                  TPointSeries(Series[SN]).Pointer.VertSize := 3;
                  TPointSeries(Series[SN]).Pointer.HorizSize := 3;
                  TPointSeries(Series[SN]).Pointer.Style := psCircle;
                  if DoCrosses then
                     TPointSeries(Series[SN]).Pointer.Style := psDiagCross;
                  if DoThickPts then
                     TPointSeries(Series[SN]).Pointer.Pen.Visible:= false;
                 end;
              2: Series[SN]:=TAreaSeries.Create(Chart);
              3: Series[SN]:=TBarSeries.Create(Chart);
           end;
           Series[SN].ParentChart:=Chart;
           Series[SN].Title:=_String;
           Series[SN].Marks.Visible:=DoLabelcol.Checked and Not(DoNoMarks);
           Series[SN].Marks.Arrow.Color:=clBlack;
           if Xformat.ItemIndex>1 then
              Series[SN].XValues.Datetime:=true;
           if Yformat.ItemIndex>1 then
              Series[SN].YValues.Datetime:=true;
           if SN>16 then
            Series[SN].SeriesColor:=RGB(50+Random(150),50+Random(150),50+Random(150));

           if (GetRValue(Series[SN].SeriesColor)>200)and(GetGValue(Series[SN].SeriesColor)>200)
               and(GetBValue(Series[SN].SeriesColor)>200) then
               Begin
                  Series[SN].SeriesColor:=RGB(Random(150),Random(150),Random(150));
               End;
        end
         else
         begin
           ErrLog.Add('Количество категорий превышает предельное!');
           SN:=10012;
           if  Series[SN]=nil then
              Series[SN]:=TLineSeries.Create(Chart);
           Series[SN].Active:=false;
         end;
      End
        Else
          SN:=1;

       _X:=0;
       _Y:=0;

       _mark :='';
                   
       if (DoLabelCol.Checked)or(DoComGraphs) then
         try
           _mark := GetCols(GData[i],_LabelColN,1);
         except
           _mark :=''
         end;

       // ВЫДЕЛЯЮ ЗНАЧЕНИЯ Х
       if DoXCol.Checked then
       Begin
         try
           case Xformat.ItemIndex of
               0: _X:=StrToFloat2(GetCols(GData[i],_XColN,1));
               1: _X:=StrToFloat2(GetCols(GData[i],_XColN,1))
                      +StrToFloat2(GetCols(GData[i],_XColN+1,1))/60
                      +StrToFloat2(GetCols(GData[i],_XColN+2,1))/3600;
               2: Begin
                     DotToZpt2:= DotAndZpt.Checked;  DotAndZpt.Checked := false;
                     FormatSettings.ShortDateFormat:= DateF.Caption+' '+TimeF.Caption;
                     Chart.BottomAxis.DateTimeFormat := DateF.Caption+' '+TimeF.Caption ;//.ShortDateFormat;
                     FormatSettings.DateSeparator := GetSep(DateF.Caption)[1];
                     FormatSettings.TimeSeparator := GetSep(TimeF.Caption)[1];
                     if Pos(',',TimeF.Caption) > 1 then
                       FormatSettings.DecimalSeparator := ','
                         else
                            FormatSettings.DecimalSeparator := '.';

                     _X:=StrToDateTime(GetCols(GData[i],_XColN,2),FormatSettings);
                     FormatSettings.DecimalSeparator := DecimalSeparator;
{                     DecodeTime(_X, test[1], test[2], test[3], test[4]);
                     showmessage( intToStr(test[1]) +' '+
                                  intToStr(test[2]) +' '+
                                  intToStr(test[3]) +' '+
                                  intToStr(test[4]));
 }
                     DotAndZpt.Checked := DotToZpt2;
                  end;
               3: Begin
                     FormatSettings.ShortDateFormat:= DateF.Caption;
                     FormatSettings.DateSeparator := GetSep(DateF.Caption)[1];
                     _X:=StrToDate(GetCols(GData[i],_XColN,1),FormatSettings);
                     Chart.BottomAxis.DateTimeFormat := FormatSettings.ShortDateFormat;
                  end;
               4: Begin
                     FormatSettings.ShortTimeFormat:= TimeF.Caption;
                     FormatSettings.TimeSeparator := GetSep(TimeF.Caption)[1];
                     if Pos(',',TimeF.Caption) > 1 then
                       FormatSettings.DecimalSeparator := ','
                         else
                            FormatSettings.DecimalSeparator := '.';

                     _X:=StrToTime(GetCols(GData[i],_XColN,1),FormatSettings);
                     FormatSettings.DecimalSeparator := DecimalSeparator;
                     Chart.BottomAxis.DateTimeFormat := FormatSettings.ShortTimeFormat;
                  end;
              end;
         except
            ErrLog.Add('Не удалось выделить X в строке: ' + IntToStr(i));
         end;
       End
         else
         Begin
            _X:=Series[SN].Count;
         End;

       /// РЕЖИМ КАРТЫ
       if DoMap then
       if not((Pos('#Comments',Series[SN].Title)>0)and(DoComGraphs)) then
       begin
        J := SN;
        if Series[SN].Count > 1 then
        BEGIN

          _SN := SN;

          // Ищу текущий Child
          if Mapper[SN]>1 then
              for j:=1 to SeriesCount do
                if Series[j].Title=Series[SN].Title+'_&'+IntToStr(Mapper[SN]) then
                begin
                  _SN:=j;
                  break;
                end;

          J := SN;

          // Нужен ли новый?
          if ((Mapper[SN] div 2)*2 <> Mapper[SN]) then
          begin

            if (_X - LastX [SN] >= 0) then     //+
            Begin
                Series[_SN].AddNullXY(Series[_SN].XValue[Series[_SN].Count-1],
                                    Series[_SN].YValue[Series[_SN].Count-1],_mark);

               inc(Mapper[SN]);

            //   Errlog.Add('!');
               if SeriesCount<10011 then
               begin
                  //AddChildGraph(TLineSeries(Series[SN]),Mapper[SN], Series[_SN].XValue[Series[_SN].Count-1],Series[_SN].YValue[Series[_SN].Count-1]);

                  Inc(SeriesCount);
                  SN:=SeriesCount;

                   Series[SN]:=TLineSeries.Create(Chart);
                   Series[SN].ParentChart:=Chart;
                   Series[SN].ShowInLegend:=false;
                   Series[SN].Title:=Series[j].Title+'_&'+IntToStr(Mapper[j]);
                   Series[SN].Marks.Visible:=DoLabelcol.Checked and Not(DoNoMarks);
                   Series[SN].Marks.Arrow.Color:=clBlack;
                   if Xformat.ItemIndex>1 then
                       Series[SN].XValues.Datetime:=true;
                   if Yformat.ItemIndex>1 then
                       Series[SN].YValues.Datetime:=true;
                   Series[SN].SeriesColor:=Series[j].SeriesColor;
                  //    Series1.AddNullXY(par.XValue[par.Count-1],
                  //                  par.YValue[par.Count-1],'');
                   if (Series[_SN].Count>0)and not((Mapper[j]<2)and(Series[j].Count=0)) then
                     Series[SN].AddXY(LastX[j],LastY[j],LastMrk[j]);


               end
                 else
                    ErrLog.Add('Превышен предел количества графиков');


            End
              else
                 SN:=_SN;
          end
           else
            if ((Mapper[SN] div 2)*2 = Mapper[SN]) then
            Begin
              if (_X - LastX [SN] < 0) then    // -
              begin
                Series[_SN].AddNullXY(Series[_SN].XValue[Series[_SN].Count-1],
                                    Series[_SN].YValue[Series[_SN].Count-1],_mark);

             //   Errlog.Add('!');
                inc(Mapper[SN]);
                if  SeriesCount<10011 then
                begin
                    //AddChildGraph(TLineSeries(Series[SN]),Mapper[SN],Series[_SN].XValue[Series[_SN].Count-1],Series[_SN].YValue[Series[_SN].Count-1]);
                    Inc(SeriesCount);
                    SN:=SeriesCount;
                    Series[SN]:=TLineSeries.Create(Chart);
                    Series[SN].ParentChart:=Chart;
                    Series[SN].ShowInLegend:=false;
                    Series[SN].Title:=Series[J].Title+'_&'+IntToStr(Mapper[j]);
                    Series[SN].Marks.Visible:=DoLabelcol.Checked and Not(DoNoMarks);
                    Series[SN].Marks.Arrow.Color:=clBlack;
                    if Xformat.ItemIndex>1 then
                       Series[SN].XValues.Datetime:=true;
                    if Yformat.ItemIndex>1 then
                       Series[SN].YValues.Datetime:=true;
                    Series[SN].SeriesColor:=Series[J].SeriesColor;
                  //    Series1.AddNullXY(par.XValue[par.Count-1],
                  //                  par.YValue[par.Count-1],'');
                  if (Series[_SN].Count>0)and not((Mapper[j]<2)and(Series[j].Count=0)) then
                    Series[SN].AddXY(LastX[J],LastY[J],LastMRK[j]);
                    //Series[SN]:=TLineSeries(Chart.Series[Chart.SeriesCount-1]);
                end
                   else
                      ErrLog.Add('Превышен предел количества графиков');
              end
                 else
                   SN:=_SN;
            End
              else
                 SN:=_SN;

         LastX[J]:=_X;
         LastMrk[J]:=_mark
       END
         ELSE
           begin
             LastX[SN]:=_X;
             LastMrk[SN]:=_mark;
           end;
      end;
       // ВЫДЕЛЯЮ ЗНАЧЕНИЯ Y
         try
            case Yformat.ItemIndex of
               0: _Y:=StrToFloat2(GetCols(GData[i],_YColN,1));
               1: _Y:=StrToFloat2(GetCols(GData[i],_YColN,1))
                      +StrToFloat2(GetCols(GData[i],_YColN+1,1))/60
                      +StrToFloat2(GetCols(GData[i],_YColN+2,1))/3600;
               2: Begin
                     FormatSettings.ShortDateFormat:= DateF.Caption+' '+TimeF.Caption;
                     FormatSettings.DateSeparator := GetSep(DateF.Caption)[1];
                     FormatSettings.TimeSeparator := GetSep(TimeF.Caption)[1];
                     _Y:=StrToDateTime(GetCols(GData[i],_YColN,2),FormatSettings);
                     Chart.LeftAxis.DateTimeFormat := DateF.Caption+' '+TimeF.Caption;
                  end;
               3: Begin
                     FormatSettings.ShortDateFormat:= DateF.Caption;
                     FormatSettings.DateSeparator := GetSep(DateF.Caption)[1];
                     _Y:=StrToDate(GetCols(GData[i],_YColN,1),FormatSettings);
                     Chart.LeftAxis.DateTimeFormat := FormatSettings.ShortDateFormat;
                  end;
               4: Begin
                     FormatSettings.ShortTimeFormat:= TimeF.Caption;
                     FormatSettings.TimeSeparator := GetSep(TimeF.Caption)[1];
                     _Y:=StrToTime(GetCols(GData[i],_YColN,1),FormatSettings);
                     Chart.LeftAxis.DateTimeFormat := FormatSettings.ShortTimeFormat;
                  end;
              end;

          if DoMap then
            LastY [J]:= _Y;

         except
            ErrLog.Add('Не удалось выделить Y в строке: ' + IntToStr(i));
         end;


     {   If Series[SN].XValues.DateTime then
          If not PreciseTime then
           If Series[SN].Count>1 then
           Begin
              if abs((Series[SN].XValue[Series[SN].Count-1]
                  - Series[SN].XValue[Series[SN].Count-2])) < 1/24/3600 then
                  Begin
                     PreciseTime := true;
                     Chart.BottomAxis.DateTimeFormat := FormatSettings;
                  End;
           End;    }

       /// Ignore Zeros

       if DoNoZeros then
       begin
         if _Y = 0 then
           continue;
       End;

       /// ПРОВЕРКА РАЗРЫВОВ
       if DoTearByX.Checked then
          If Series[SN].Count>1 then
          Begin
            Tear:=false;
            if not(_XtoX) then
            begin
              if Chart.BottomAxis.IsDateTime then
              begin
                if abs(DaySpan(TLX[SN],_X))>_dX then
                  tear := true;
              end else
              if abs(TLX[SN]-_X)>_dX then
                tear := true;
            end else
               try
                 if TLX[SN]/_X > _dX then
                    tear:=true;
               except
                 if TLX[SN] = 0 then
                    tear:=true;
               end;

              if tear then
              begin
                Series[10013].AddXY(TLX[SN], TLY[SN],_oldmark); // _oldmark
                Series[10013].AddXY(_X,_Y,_mark);
                Series[SN].AddNullXY(TLX[SN], TLY[SN],_oldmark);
              end;
        End;

       if DoTearXY.Checked then
       If Series[SN].Count>1 then
       Begin
           Tear:=false;
           if not(_YtoY) then
           begin
              if Chart.LeftAxis.IsDateTime then
              begin
                if abs(DaySpan(TLY[SN],_Y))>_dY then
                  tear := true;
              end else
                if abs(TLY[SN]-_Y)>_dY then
                  tear:=true
           end else
               try
                 if TLY[SN]/_Y > _dY then
                    tear:=true;
               except
                 if TLY[SN] = 0 then
                    tear:=true;
               end;

           if tear then
           begin
                Series[10013].AddXY(TLX[SN], TLY[SN],_oldmark);
                Series[10013].AddXY(_X,_Y,_mark);
                Series[SN].AddNullXY(TLX[SN], TLY[SN],_oldmark);
           end;
       End;


       if (DoTearByX.Checked)or(DoTearXY.checked) then
       Begin
           TLX [SN] := _X;
           TLY [SN] := _Y;
           _oldmark := _mark;
       End;


       /// ДОБАВЛЕНИЕ ТОЧКИ
      {  if (DoLabelCol.Checked)or(DoComGraphs) then}
         Series[SN].addXY(_X,_Y,_mark);
     {    else
           Series[SN].addXY(_X,_Y,'');     }
     //  Series[SN].add
                         //   zxz

       if  Anim.Checked then
        begin
         sleep(10);
         Chart.repaint;
        end;
       ProgressBar.Position:=I*100 div GData.Count;
       SyncPB;
    END;

  ProgressBar.Visible:=false;

  /// MIN and MAX
  if Autolim.Checked=false then
  begin
        Chart.leftAxis.Automatic:=false;
        Chart.BottomAxis.Automatic:=false;
        if Chart.BottomAxis.isDateTime=false then
        Begin
          Chart.BottomAxis.Minimum:=StrToFloat(Xbegin.caption);
          Chart.BottomAxis.Maximum:=StrToFloat(Xend.caption);
        end else
          begin
            Chart.BottomAxis.Minimum:=StrToDateTime(Xbegin.caption);
            Chart.BottomAxis.Maximum:=StrToDateTime(Xend.caption);
          end;
        if Chart.LeftAxis.isDateTime=false then
        Begin
          Chart.LeftAxis.Minimum:=StrToFloat(Ybegin.caption);
          Chart.LeftAxis.Maximum:=StrToFloat(Yend.caption);
        end  else
          begin
            Chart.LeftAxis.Minimum:=StrToDateTime(Ybegin.caption);
            Chart.LeftAxis.Maximum:=StrToDateTime(Yend.caption);
          end;
  end;


  if DoThick Then Begin
    for i:=0 To Chart.SeriesCount-1 do
    begin
      if Chart.Series[i] is TLineSeries  then
        TLineSeries(Chart.Series[i]).LinePen.Width:= 4;

      if Chart.Series[i] is TAreaSeries  then
        TAreaSeries(Chart.Series[i]).AreaLinesPen.Width:= 4;

      if Chart.Series[i] is TBarSeries  then
        TBarSeries(Chart.Series[i]).BarPen.Width:= 4;
    end;
    DoThick := false;
  End;

  if DoComz then
  Begin
    Comments.OnClick(nil);
    DoComz := False;
  End;

  if DoComGraphs then
  Begin
    For i := 0 to Chart.SeriesCount-1  do
    begin
      if Pos('#Comments',Chart.Series[i].Title)>0  then
      begin
        for j := 0 to Chart.Series[i].Count-1  do
        if not Chart.Series[i].IsNull(j) then
        begin
          AddCommSerie;
          GN:=FindChart('_&_&_&_&_Comments'+IntToStr(CurComm));
          if GN<>-1 then
            Chart.Series[GN].AddXY(Chart.Series[i].XValue[j],Chart.Series[i].YValue[j],Chart.Series[i].XLabel[j]);
        end;
      end;
    end;

    For i := Chart.SeriesCount-1 Downto 0   do
      if Pos('#Comments',Chart.Series[i].Title)>0  then
          Chart.Series[i].Destroy;

    RefreshCommList;

    DoComGraphs := False;
  End;

  if Panel10.Visible then
    Chart.AllowZoom := not LineLMB.Checked ;


  
  for i:=0 to Chart.SeriesCount-1 do
   if Chart.Series[i].ShowInLegend then
  begin
   Graphs.Items.Add(Chart.Series[i].Title);
   if Chart.Series[i].Active then
     Graphs.Checked[Graphs.Items.Count-1]:=true;
  end;

  AddCosmetics;


  XBegin.Caption := FLoattoStr(Chart.BottomAxis.Minimum);
  XEnd.Caption := FLoattoStr(Chart.BottomAxis.Maximum);
  YBegin.Caption := FLoattoStr(Chart.LeftAxis.Minimum);
  YEnd.Caption := FLoattoStr(Chart.LeftAxis.Maximum);
  XBegin2.Text := XBegin.Caption;
  XEnd2.Text := XEnd.Caption;
  YBegin2.Text := YBegin.Caption;
  YEnd2.Text := YEnd.Caption;
  Alim2.Checked :=not Autolim.Checked;

  ChartLoaded := true;
  isLoading := False;

  if DoRNav Then
  Begin
    case chart.SeriesCount-1 of
      1: chart.Series[0].SeriesColor := clBlue;
      2: Begin
           chart.Series[0].SeriesColor := clRed;
           chart.Series[1].SeriesColor := clBlue;

          /// chart.LeftAxis.Grid.
           if chart.Series[0].Count=2 then
            Begin
              if RNavArea = nil then
                 RNavArea := TChartShape.Create(Chart);

            
              RNavArea.Pen.Color := $00D5FFD5;
              RNavArea.Brush.Color := clLime;
              RNavArea.ParentChart := Chart;

              RNavArea.XValues.Datetime:=XFormat.ItemIndex > 1;
              RNavArea.Style := chasRectangle;
              RNavArea.X0 := chart.Series[0].XValues[0];
              RNavArea.Y0 := chart.Series[0].YValues[1];
              RNavArea.X1 := chart.Series[0].XValues[1];
              RNavArea.Y1 := 0;
              RNavArea.Pen.Style := psClear;

//              RNavArea.Brush.
             RNavArea.Brush.Style := bsBDiagonal;
               //RNavArea.Brush.Bitmap := Img0.Picture.Bitmap;
               //RNavArea.Brush.Bitmap.Transparent := true;
              // RNavArea.Brush.Bitmap.TransparentColor := clwhite;
              RNavArea.ShowInLegend := false;

              SN := FindChart(RNavArea.Title);
              if SN<>-1 then
                Chart.SeriesList.Move(SN, 0);
            End;
        End;
      3: Begin
           chart.Series[0].SeriesColor := clRed;
           chart.Series[1].SeriesColor := clRed;
           chart.Series[2].SeriesColor := clBlue;
           chart.Series[0].ShowInLegend := false;

           if (chart.Series[0].Count=2)and(chart.Series[1].Count=2) then
            Begin
              if RNavArea = nil then
                RNavArea := TChartShape.Create(Chart);
              RNavArea.XValues.Datetime:=XFormat.ItemIndex > 1;
              RNavArea.Pen.Color := $00D5FFD5;
              RNavArea.Brush.Color := clLime;
              RNavArea.ParentChart := Chart;
              RNavArea.Style := chasRectangle;
              RNavArea.X0 := chart.Series[0].XValues[0];
              RNavArea.Y0 := chart.Series[0].YValues[0];
              RNavArea.X1 := chart.Series[1].XValues[1];
              RNavArea.Y1 := chart.Series[1].YValues[1];

              RNavArea.Brush.Style := bsBDiagonal;
            //  RNavArea.Brush.Bitmap := Img0.Picture.Bitmap;

              RNavArea.Pen.Style := psClear;
              RNavArea.ShowInLegend := false;

              SN := FindChart(RNavArea.Title);
              if SN<>-1 then
                Chart.SeriesList.Move(SN, 0);
             // RNavArea.Bounds := Rect(round(chart.Series[0].XValues[0]),round(chart.Series[0].YValues[0]),round(chart.Series[1].XValues[1]),round(chart.Series[1].YValues[1]));
            End;
        End;
     end;

    SN := FindChart('Разрывы');
    if SN<> -1 then
       chart.Series[SN].Active := false;

    SN := FindChart('---');
    if SN<> -1 then
      chart.Series[SN].SeriesColor := $00EAEAEA;
  End;

  //if DoRNav then
    if Chart.BottomAxis.IsDateTime then
    begin
        Chart.BottomAxis.DateTimeFormat := TimeF.Caption;
        Chart.BottomAxis.Increment := 0.1 * (1/SecsPerDay);
    end;

  DoCrosses := False;
  DoNoMarks := False;
end;

procedure TForm1.RSpacerClick(Sender: TObject);
begin
  if RSpacer.ItemIndex=2 then
     Spacer.Show
      else
        Spacer.Hide;
  if ChangePar<>nil then
    Edit.Visible := ChangePar.Visible;
  Edit.Enabled := Edit.Visible;
end;

procedure TForm1.EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key= vk_Return) or (key=vk_Escape) then
   Begin
     Edit.Enabled:=false;
     Edit.Visible:=false;
   end;

end;

procedure TForm1.LoadTabData(FN:String);
var i :integer;
    S :TStringList;
begin

   S := TStringList.Create;
   S.LoadFromFile(FN);
     GData.Clear;
     for I := 0 To S.Count - 1 do
       GData.Add(S[i]);
   S.Free;

   GetGToMemo;

end;


procedure TForm1.OpenDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
var i, j:integer;
   AddF: TStringList;
begin
  if not DoAdd then
  begin
    GData.LoadFromFile(OpenDialog1.FileName);
    GFileName := OpenDialog1.FileName;

    Panel1.Visible:=true;
    TittleBox.OnClick(TittleBox);
    Panel2.Visible:=true;
    AddData.Enabled:=true;
  end else
  begin
    AddF:= Tstringlist.Create;
    AddF.LoadFromFile(OpenDialog1.FileName);
    j := 1;
      try
        if StrToInt(BeginFrom.Caption)>1 then
         if MessageDlg('Добавить файл со строки ' + BeginFrom.Caption +' ?'+
         #13 + '(в случае отказа, файл будет добавлен сначала)', mtConfirmation,[mbYes, mbNo],0)=6 then
           j:=StrToInt(BeginFrom.Caption);
      except
      end;
    for i := j-1 to AddF.Count-1 do
      GData.Add(AddF[i]);

    AddF.Destroy;
  end;

  GetGToMemo;
end;

procedure TForm1.SavePictureDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
//
end;

procedure TForm1.GraphTypesChange(Sender: TObject);
begin
  if GraphTypes.ItemIndex=0 then
  begin
    DoTearbyX.Visible := true;
    DoTearXY.Visible := true;
    TearbyX.Visible := true;
    TearXY.Visible := true;
    VX.Visible := true;
    VY.Visible := true;
    MapMode.Visible := true;
  end
   else
    begin
      DoTearbyX.Visible := false;
      DoTearXY.Visible := false;
      DoTearbyX.Checked := false;
      DoTearXY.Checked := false;
      TearbyX.Visible := false;
      TearXY.Visible := false;
      VX.Visible := false;
      VY.Visible := false;
      MapMode.Checked := false;
    end;

  if ChangePar<>nil then
     Edit.Visible := ChangePar.Visible;
  Edit.Enabled := Edit.Visible;
end;

procedure TForm1.DoXColClick(Sender: TObject);
begin
  Xformat.Visible := DoXCol.checked;
  XColN.Visible := DoXCol.checked;
  if ChangePar<>nil then
    Edit.Visible := ChangePar.Visible;
  Edit.Enabled := Edit.Visible;
end;

procedure TForm1.DoXColKeyPress(Sender: TObject; var Key: Char);
begin
  Xformat.Visible  := DoXCol.checked;
  XColN.Visible := DoXCol.checked;
  if ChangePar<>nil then
    Edit.Visible := ChangePar.Visible;
  Edit.Enabled := Edit.Visible;
end;

procedure TForm1.DoNameColClick(Sender: TObject);
begin
  NameColN.Visible  := DoNameCol.checked;

  if ChangePar<>nil then
    Edit.Visible := ChangePar.Visible;
  Edit.Enabled := Edit.Visible;
end;

procedure TForm1.DoNameColKeyPress(Sender: TObject; var Key: Char);
begin
  NameColN.Visible  := DoNameCol.checked;

  if ChangePar<>nil then
    Edit.Visible := ChangePar.Visible;
  Edit.Enabled := Edit.Visible;
end;

procedure TForm1.ScrPanelClick(Sender: TObject);
begin
 if Panel2.Height=85 then
  begin
    Panel2.Height := Form1.ClientHeight-Panel3.Height;
    ScrPanel2.Visible := true;
   end
     else
      begin
        Panel2.Height := 85;
        ScrPanel2.Visible := false;
      end;
  ScrPanel.Visible:= not (ScrPanel2.Visible);
end;

procedure TForm1.FileTextMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if not(KeepP3.Checked) then
   begin Panel3.Height:=2;
  if Panel2.Height = Form1.ClientHeight-50 then
    Panel2.Height := Form1.ClientHeight-2;
    end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetCurrentDir(MyDir);
  if ErrLog.Count>0 then
    ErrLog.SaveToFile('GrErrs.log');
  ErrLog.Destroy;
  GData.Destroy;
  CList2.Destroy;
end;

procedure TForm1.ShowDataRowsClick(Sender: TObject);
begin
  Panel5.Visible:= not(Panel5.Visible);
end;

procedure TForm1.GraphsClick(Sender: TObject);
var _col:TColor;
    _ps: TSeriesPointerStyle;
    GN : integer;    
begin

 isChoosing := true;

 if Graphs.ItemIndex<>-1 then
 begin
    GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);

    if GN<>-1 then
    Begin
      Panel6.Visible := true;

      if Graphs.Checked[Graphs.ItemIndex] then
         Chart.Series[GN].Active:=true
           else
             Chart.Series[GN].Active:=false;
      RefreshChilds(GN);

      SName.Text:=Graphs.Items[Graphs.ItemIndex];

      if Chart.Series[GN] is TBarSeries then
      Begin
        ShoDots.Enabled := false;
        ShoDots.Checked := false;
        DotSize.Enabled := false;
        UpDown1.Enabled := false;
        ShowDotBorder.Enabled := false;
        SStairs.Enabled := false;
        ShowDotBorder.Checked := false;
        LineH.Enabled := true;
        LineH.Value := TBarSeries(Chart.Series[GN]).BarPen.Width;
      end
        else
        Begin
          ShoDots.Enabled := true;
          DotSize.Enabled := true;
          UpDown1.Enabled := true;
          ShowDotBorder.Enabled := true;
          LineH.Enabled := true;
          SStairs.Enabled := true;
        end;

      if Chart.Series[GN] is TLineSeries then
      Begin
        ShoDots.Checked:=TLineSeries(Chart.Series[GN]).Pointer.Visible;
        ShowBorder.Enabled := false;
        ShowBorder.Checked := false;
        SStairs.Checked := TLineSeries(Chart.Series[GN]).Stairs;
        _ps := TLineSeries(Chart.Series[GN]).Pointer.Style;
        DotSize.Value := TLineSeries(Chart.Series[GN]).Pointer.VertSize;
        ShowDotBorder.Checked := TLineSeries(Chart.Series[GN]).Pointer.Pen.Visible;
        LineH.Value:= TLineSeries(Chart.Series[GN]).LinePen.Width;
      End;

      if Chart.Series[GN] is TAreaSeries then
      Begin
        ShoDots.Checked:=TAreaSeries(Chart.Series[GN]).Pointer.Visible;
        DotSize.Value := TAreaSeries(Chart.Series[GN]).Pointer.VertSize;
        ShowDotBorder.Checked := TAreaSeries(Chart.Series[GN]).Pointer.Pen.Visible;
        SStairs.Checked := TAreaSeries(Chart.Series[GN]).Stairs;
        _ps := TAreaSeries(Chart.Series[GN]).Pointer.Style;
        LineH.Value:= TAreaSeries(Chart.Series[GN]).AreaLinesPen.Width;
        ShowBorder.Checked := TAreaSeries(Chart.Series[GN]).AreaLinesPen.Visible;
        ShowBorder.Enabled := true;
      End;

      if Chart.Series[GN] is TPointSeries then
      Begin
        ShoDots.Checked:=TPointSeries(Chart.Series[GN]).Pointer.Visible;
        DotSize.Value := TPointSeries(Chart.Series[GN]).Pointer.VertSize;
        ShowDotBorder.Checked := TPointSeries(Chart.Series[GN]).Pointer.Pen.Visible;

        _ps := TPointSeries(Chart.Series[GN]).Pointer.style;

        SStairs.Enabled := false;
        ShowBorder.Enabled := false;
        ShowBorder.Checked := false;
        LineH.Enabled := false;
      End;

      SShow.Checked := Chart.Series[GN].Marks.Visible;

      _Col:= Chart.Series[GN].SeriesColor;
      RB.Position := GetRValue(_col);
      GB.Position := GetGValue(_col);
      BB.Position := GetBValue(_col);

      ChColour.Brush.Color:=RGB(RB.Position,GB.Position,BB.Position);

      Case _ps of
        psRectangle: Dotstyle :=0;
        psCircle: Dotstyle :=1;
        psTriangle: Dotstyle :=2;
        psDownTriangle: Dotstyle :=3;
        psCross: Dotstyle :=4;
        psDiagCross: Dotstyle :=5;
        psStar: Dotstyle :=6;
        psDiamond: Dotstyle :=7;
        psSmallDot: Dotstyle :=8;
      end;
      imageDot.Canvas.Brush.Color := imageDot.Canvas.Pixels[0,0];
      imageDot.Canvas.FillRect(Rect(0,0,imageDot.Width,ImageDot.Height));
      ImageList.Draw(ImageDot.Canvas,0,0,DotStyle,true);
    End
     else
       begin
          {SShow.Visible := false;
          SName.Visible := false;
          SColor.Visible := false;
          SNameLabel.Visible := false;
          SColorLabel.Visible := false;}
          Panel6.Visible:=false;
       end;
 end;

 isChoosing := false;
 
end;

procedure TForm1.ShowAllFileClick(Sender: TObject);
var i :integer;
begin
//  FileText.Lines.LoadFromFile(GFileName);
  FileText.Clear;
  FileText.Visible := false;

  for i := 0 to GData.Count-1 do
    FileText.Lines.Add(GData[i]);

  FileText.Visible := true;
  ShowAllFile.Visible := false;
  Statuslabel.Caption := '';
  
  if Panel8.ParentColor = false then
        Panel8.Color := Panel2.Color;
end;

procedure TForm1.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
   if Assigned(Screen.ActiveControl) And not (Screen.ActiveControl Is TCombobox) then
    if((PointIntoRect(MousePos, RECT(Left+Panel9.Left, Top+
    Panel9.Top, Left+Panel9.Left+Panel9.Width,Top+Panel9.top+Panel9.Height)))) then
      if WheelDelta>0 then
      begin
       if not Hold2.Checked then
         Chart.ZoomPercent(105)
      end
         else
           if not Hold2.Checked then
             Chart.ZoomPercent(95);
         // ZoomOutB.OnClick(Sender);

 if (panel1.Visible) then
   if Assigned(Screen.ActiveControl) And not (Screen.ActiveControl Is TCombobox) then
    if((PointIntoRect(MousePos, RECT(Left+Panel1.Left, Top+
    Panel1.Top, Left+Panel1.Left+Panel1.Width,Top+Panel1.top+Panel1.Height)))) then
       ScrollBox1.VertScrollBar.Position:=ScrollBox1.VertScrollBar.Position-WheelDelta div 5
    else
     if (panel5.Visible) then
      if((PointIntoRect(MousePos, RECT(Left+Panel5.Left, Top+
        Panel5.Top, Left+Panel5.Left+Panel5.Width,Top+Panel5.top+Panel5.Height)))) then
          if Assigned(Screen.ActiveControl) And not (Screen.ActiveControl Is TCombobox)
            And not (Screen.ActiveControl Is TCheckListBox)then
          ScrollBox2.VertScrollBar.Position:=ScrollBox2.VertScrollBar.Position-WheelDelta div 5;


end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F1 then
  Begin
    Panel3.Height:=50;
    if Panel2.Height = Form1.ClientHeight-2 then
      Panel2.Height := Form1.ClientHeight-50;
    SetCursorPos(Left+Width div 2,Top+25);
  End;

  if key = vk_F2 then
  Begin
    SaveImg.OnClick(Sender);
  end;

 if key = vk_F5 then
  Begin
    Refresh.OnClick(Sender);
  end;

  if key = vk_F3 then
  Begin
    if DoSquare.Enabled then
      DoSquare.OnClick(Sender);
  end;

  if key = vk_Up then
  Begin
     Chart.LeftAxis.Scroll((Chart.LeftAxis.Maximum - Chart.LeftAxis.Minimum)/10,true);
  end;

    if key = vk_Down then
  Begin
     Chart.LeftAxis.Scroll(-(Chart.LeftAxis.Maximum - Chart.LeftAxis.Minimum)/10,true);
  end;
    if key = vk_Left then
  Begin
     Chart.BottomAxis.Scroll(-(Chart.BottomAxis.Maximum - Chart.BottomAxis.Minimum)/10,true);
  end;
    if key = vk_Right then
  Begin
     Chart.BottomAxis.Scroll((Chart.BottomAxis.Maximum - Chart.BottomAxis.Minimum)/10,true);
  end;
end;

procedure TForm1.OpenSetFileClick(Sender: TObject);
begin
  OpenDialog2.Execute;
end;

procedure TForm1.OpenDialog2CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  LoadSets(OpenDialog2.FileName);
  Panel1.Visible:=true;
  TittleBox.OnClick(TittleBox);
end;

procedure TForm1.LoadSets(FileName: string);
var
  SetFile :TStringList;
  i :integer;
begin

  try
    SetFile:=TStringList.Create;
    SetFile.LoadFromFile(FileName);

    TittleBox.Caption := SetFile[0];
    XName.Caption := SetFile[1];
    Yname.Caption := SetFile[2];
    XBegin.Caption := DS(SetFile[3]);
    YBegin.Caption := DS(SetFile[4]);
    XEnd.Caption := DS(SetFile[5]);
    YEnd.Caption := DS(SetFile[6]);
    if SetFile[7]='1' then
      AutoLim.Checked := true
        else
          AutoLim.Checked := false;

    GraphTypes.ItemIndex := StrToInt(SetFile[8]);

    if SetFile[9]='1' then
      DoTearbyX.Checked := true
        else
          DoTearbyX.Checked := false;

    TearbyX.Caption := SetFile[10];

    if SetFile[11]='1' then
      DoTearXY.Checked := true
        else
          DoTearXY.Checked := false;
    TearXY.Caption := SetFile[12];

    if SetFile[13]='1' then
      ShowLegend.Checked := true
        else
          ShowLegend.Checked := false;

    RSpacer.ItemIndex := StrToInt(SetFile[14]);
    Spacer.Caption := SetFile[15];

    if SetFile[16]='1' then
      DotAndZpt.Checked := true
        else
          DotAndZpt.Checked:= false;

     BeginFrom.Caption := SetFile[17];

    if SetFile[18]='1' then
      DoNameCol.Checked := true
        else
          DoNameCol.Checked := false;

    NameColN.Caption := SetFile[19];

    if SetFile[20]='1' then
      DoXCol.Checked := true
        else
          DoXCol.Checked := false;

    XColN.Caption := SetFile[21];
    XFormat.ItemIndex := StrToInt(SetFile[22]);
    YColN.Caption := SetFile[23];
    YFormat.ItemIndex := StrToInt(SetFile[24]);
    DateF.Caption := SetFile[25];
    TimeF.Caption := SetFile[26];
    LegendPos.ItemIndex := StrToInt(SetFile[27]);
    VX.ItemIndex := StrToInt(SetFile[28]);
    VY.ItemIndex := StrToInt(SetFile[29]);

    if SetFile[30]='1' then
      MapMode.Checked := true
        else
          MapMode.Checked := false;
    IncX.Caption := DS(SetFile[31]);
    IncY.Caption := DS(SetFile[32]);
    try
      HeaderSize.Caption := SetFile[33];
      AxisTickSize.Caption := SetFile[35];
      AxisHeaderSize.Caption := SetFile[34];
      DoLabelCol.Checked := false;
      if SetFile[36]='1' then
         DoLabelCol.Checked := true;
      LabelColN.Caption := SetFile[37];
      LegFSize.Value := StrToInt(SetFile[38]);

      //////////////////////////////////////

               For i:= 0 to Mainfont.Items.Count-1 do
                if SetFile[39] = Mainfont.Items[i] then
                begin
                  Mainfont.ItemIndex := i;
                  break;
                end;

               For i:= 0 to Secondfont.Items.Count-1 do
                if SetFile[40] = Secondfont.Items[i] then
                begin
                  Secondfont.ItemIndex := i;
                  break;
                end;

                Mainfont.OnChange(nil);
                Secondfont.OnChange(nil);

        //////////////////////////////////////

        ShowComms.Checked := (SetFile[41] = '1');
        CommFont.Value := StrToInt(SetFile[42]);
        CommArrow.Value := StrToInt(SetFile[43]);

        CommColor.Selected := RGB(StrToInt(SetFile[44]),
                                  StrToInt(SetFile[45]),StrToInt(SetFile[46]));
        Form3.CommColor.Selected := CommColor.Selected;
        ///////////////////////////////////////
      refreshfont;
    except
    end;

    SetFile.Destroy;
  except
    MessageDlg('Невозможно загрузить настройки из указанного файла',mtError,[mbOk],0);
  end;

  if AutoLim.Checked = false then
  Begin
    Hold2.Checked :=true;
    Hold2.OnClick(nil);
  End;
end;

procedure TForm1.SaveSets(FileName: string);
var
  SetFile :TStringList;
  i :integer;
begin
  SetFile:=TStringList.Create;
  SetFile.Add(TittleBox.Caption);          //0

  SetFile.Add(XName.Caption);              //1
  SetFile.Add(Yname.Caption);              //2
  SetFile.Add(XBegin.Caption);             //3
  SetFile.Add(YBegin.Caption);             //4
  SetFile.Add(XEnd.Caption);               //5
  SetFile.Add(YEnd.Caption);               //6
  if AutoLim.Checked then                  //7
    SetFile.Add('1')
      else
         SetFile.Add('0');

  SetFile.Add(IntToStr(GraphTypes.ItemIndex)); //8
  if DoTearbyX.Checked then                    //9
    SetFile.Add('1')
      else
         SetFile.Add('0');

  SetFile.Add(TearbyX.Caption);             //10

  if DoTearXY.Checked then                  //11
    SetFile.Add('1')
      else
         SetFile.Add('0');

  SetFile.Add(TearXY.Caption);              //12

  if ShowLegend.Checked then                //13
    SetFile.Add('1')
      else
         SetFile.Add('0');

  SetFile.Add(IntToStr(RSpacer.ItemIndex)); //14
  SetFile.Add(Spacer.Caption);              //15

  if DotAndZpt.Checked then
    SetFile.Add('1')
      else
         SetFile.Add('0');

  SetFile.Add(BeginFrom.Caption);
  if DoNameCol.Checked then
    SetFile.Add('1')
      else
         SetFile.Add('0');
  SetFile.Add(NameColN.Caption);
  if DoXCol.Checked then
    SetFile.Add('1')
      else
         SetFile.Add('0');
  SetFile.Add(XColN.Caption);
  SetFile.Add(IntToStr(XFormat.ItemIndex));
  SetFile.Add(YColN.Caption);
  SetFile.Add(IntToStr(YFormat.ItemIndex));
  SetFile.Add(DateF.Caption);
  SetFile.Add(TimeF.Caption);
  SetFile.Add(IntToStr(LegendPos.ItemIndex));

  SetFile.Add(IntToStr(VX.ItemIndex));
  SetFile.Add(IntToStr(VY.ItemIndex));
  if MapMode.Checked then
    SetFile.Add('1')
      else
         SetFile.Add('0');
  SetFile.Add(IncX.Caption);
  SetFile.Add(IncY.Caption);

  SetFile.Add(HeaderSize.Caption);
  SetFile.Add(AxisHeaderSize.Caption);
  SetFile.Add(AxisTickSize.Caption);

  if DoLabelcol.Checked then
    SetFile.Add('1')
      else
         SetFile.Add('0');

  SetFile.Add(LabelColN.Caption);
  SetFile.Add(IntToStr(LegFSize.Value));  //38


  SetFile.Add(MainFont.Items[MainFont.ItemIndex]);   //39
  SetFile.Add(SecondFont.Items[SecondFont.ItemIndex]); //40

    if  ShowComms.Checked then       //41
          SetFile.Add('1')
          else
             SetFile.Add('0');

    SetFile.Add(IntToStr(CommFont.Value));  //42
    SetFile.Add(IntToStr(CommArrow.Value));  //43
    SetFile.Add(IntToStr(GetRValue(CommColor.Selected)));  //44
    SetFile.Add(IntToStr(GetGValue(CommColor.Selected)));  //45
    SetFile.Add(IntToStr(GetBValue(CommColor.Selected)));  //46



  if Pos('.chs',FileName)<1 then
     FileName:=FileName+'.chs';

  SetFile.SaveToFile(FileName);

  SetFile.Destroy;
end;

procedure TForm1.AutoLimClick(Sender: TObject);
begin
  if AutoLim.Checked then
  Begin
     Xbegin.Visible := false;
     Ybegin.Visible := false;
     Xend.Visible := false;
     Yend.Visible := false;
     A1.Visible := true;
     A2.Visible := true;
     A3.Visible := true;
     A4.Visible := true;
    
     XBegin2.Enabled := false;
     XEnd2.Enabled := false;
     YBegin2.Enabled := false;
     YEnd2.Enabled := false;
  End
   else
   begin
     Xbegin.Visible := true;
     Ybegin.Visible := true;
     Xend.Visible := true;
     Yend.Visible := true;
     A1.Visible := false;
     A2.Visible := false;
     A3.Visible := false;
     A4.Visible := false;

     XBegin2.Enabled := true;
     XEnd2.Enabled := true;
     YBegin2.Enabled := true;
     YEnd2.Enabled := true;
   end;
  if ChangePar<>nil then
     Edit.Visible := ChangePar.Visible;

  Edit.Enabled := Edit.Visible;
  Alim2.Checked :=not Autolim.Checked;

end;

procedure TForm1.SaveSetClick(Sender: TObject);
  var DoIt:Boolean;
begin
 DoIt:=true;
 if Savedialog2.Execute then
 if Fileexists(SaveDialog2.FileName) then
    if MessageDlg('Файл с таким именем уже существует. Переписать его?',
      mtConfirmation,[mbYes, mbNo],0)<>6 then
            DoIt:=false;
  if DoIt then
    SaveSets(SaveDialog2.FileName);
end;

procedure TForm1.ShowLegendClick(Sender: TObject);
begin
   Chart.Legend.Visible:=ShowLegend.Checked;
   LegendPos.Visible:=ShowLegend.Checked;
   ShowLeg2.Checked := ShowLegend.Checked;
end;

procedure TForm1.ShowLegendKeyPress(Sender: TObject; var Key: Char);
begin
   Chart.Legend.Visible:=ShowLegend.Checked;
end;

procedure TForm1.BDownClick(Sender: TObject);
var i, j, GN1,GN2, NN:integer;
    GNTitle, GNTitle2: String;
begin

  if Graphs.ItemIndex=-1 then
    exit;
  if Graphs.ItemIndex=Graphs.Count-1 then
    exit;

  j := Graphs.ItemIndex;
  GN1 := FindChart(Graphs.Items[Graphs.ItemIndex]);
  GNTitle := Chart.Series[GN1].Title;
  GN2 := FindChart(Graphs.Items[Graphs.ItemIndex+1]);
  GNTitle2 := Chart.Series[GN2].Title;

  if (GN1<>-1)and(GN2<>-1) then
  if (Graphs.ItemIndex>-1)and(Graphs.ItemIndex<Graphs.Items.Count-1) then
  begin
    Chart.SeriesList.Move(GN1,GN2);

    for i:=1 to ChildsCount(GNTitle)+1 do
      begin
         NN:=FindChart(GNTitle+'_&'+inttostr(i+1));
          if NN<>-1 then
          begin
             GN1:=FindChart(GNTitle);
             Chart.SeriesList.Move(NN,GN1+i)
          end;
      end;
      
      for i:=1 to ChildsCount(GNTitle2)+1 do
      begin
         NN:=FindChart(GNTitle2+'_&'+inttostr(i+1));
          if NN<>-1 then
          begin
            GN2:=FindChart(GNTitle2);
            Chart.SeriesList.Move(NN,GN2+i);
          end;
      end;
    Chart.Repaint;
  end;

  Graphs.Clear;
  for i:=0 to Chart.SeriesCount-1 do
     if Chart.Series[i].ShowInLegend then
  begin
   Graphs.Items.Add(Chart.Series[i].Title);
   if Chart.Series[i].Active then
     Graphs.Checked[Graphs.Items.Count-1]:=true;
  end;

  Graphs.ItemIndex:=j+1;

{  ListBox1.Clear;
  for i:=0 to Chart.SeriesCount-1 do
  begin
   ListBox1.Items.Add(Chart.Series[i].Title);
  end;  }
end;

procedure TForm1.DelSeriesClick(Sender: TObject);
var i, GN, NN :integer;
begin
//
  if Graphs.ItemIndex=-1 then
    exit;

//  if Form2a.GrList.Items.Count>=Graphs.ItemIndex then
//  if Graphs.Items[Graphs.ItemIndex]=Form2a.GrList.Items[Form2a.GrList.ItemIndex] then
//  begin
    PickGraph.Checked :=false;
    PickGraph2.Checked :=false;
//  end;

  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if Graphs.ItemIndex>-1 then begin
    GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
    if GN<>-1 then
    begin
      for i:=0 to ChildsCount(Chart.Series[GN].Title) do
      begin
         NN:=FindChart(Chart.Series[GN].Title+'_&'+inttostr(i+1));
          if NN<>-1 then
            Chart.Series[NN].Destroy;
      end;
      GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
      Chart.Series[GN].Destroy;
    end;
  end;

  Graphs.Clear;
  for i:=0 to Chart.SeriesCount-1 do
     if Chart.Series[i].ShowInLegend then
  begin
   Graphs.Items.Add(Chart.Series[i].Title);
   if Chart.Series[i].Active then
     Graphs.Checked[Graphs.Items.Count-1]:=true;
  end;
  if Graphs.ItemIndex=-1 then
    Panel6.Visible:=false;
end;

procedure TForm1.BUpClick(Sender: TObject);
var i, j, GN1, GN2, NN:integer;
    GNtitle, GNtitle2:string;
begin
  if Graphs.ItemIndex<=0 then
  exit;
  
  j := Graphs.ItemIndex;
  GN1 := FindChart(Graphs.Items[Graphs.ItemIndex]);
  GNTitle := Chart.Series[GN1].Title;
  GN2 := FindChart(Graphs.Items[Graphs.ItemIndex-1]);
  GNTitle2 := Chart.Series[GN2].Title;

  if (GN1<>-1)and(GN2<>-1) then
  if (Graphs.ItemIndex>-1)and(Graphs.ItemIndex<=Graphs.Items.Count-1) then
  begin
    Chart.SeriesList.Move(GN1,GN2);

      for i:=1 to ChildsCount(GNTitle)+1 do
      begin
         NN:=FindChart(GNTitle+'_&'+inttostr(i+1));
          if NN<>-1 then
          begin
            GN1:=FindChart(GNTitle);
            Chart.SeriesList.Move(NN,GN1+i);
          end;
      end;

      for i:=1 to ChildsCount(GNTitle2)+1 do
      begin
         NN:=FindChart(GNTitle2+'_&'+inttostr(i+1));
          if NN<>-1 then
          begin
            GN2:=FindChart(GNTitle2);
            Chart.SeriesList.Move(NN,GN2+i);
          end;
      end;

    Chart.Repaint;
  end;




  Graphs.Clear;
  for i:=0 to Chart.SeriesCount-1 do
     if Chart.Series[i].ShowInLegend then
  begin
   Graphs.Items.Add(Chart.Series[i].Title);
   if Chart.Series[i].Active then
     Graphs.Checked[Graphs.Items.Count-1]:=true;
  end;

  Graphs.ItemIndex:=j-1;

  {ListBox1.Clear;
  for i:=0 to Chart.SeriesCount-1 do
  begin
   ListBox1.Items.Add(Chart.Series[i].Title);
  end;}
end;

procedure TForm1.SnameChange(Sender: TObject);
var GN, i, NN :integer;
begin
 if not isChoosing then
 begin
  if Graphs.ItemIndex<>-1 then
  Begin
   GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
   if GN<>-1 then
   begin
      Graphs.Items[Graphs.ItemIndex]:=SName.Text;

      for i:=0 to ChildsCount(Chart.Series[GN].Title) do
      begin
         NN:=FindChart(Chart.Series[GN].Title+'_&'+inttostr(i+1));
          if NN<>-1 then
            Chart.Series[NN].Title:=  SName.Text +'_&'+inttostr(i+1);
      end;

      Chart.Series[GN].Title:=SName.Text;
    end
  End;
  RefreshChilds(GN);
  Chart.Repaint;
 end;
end;

procedure TForm1.SortAzClick(Sender: TObject);
var i :integer;
begin

  if (Graphs.Items.Count>0) then
     Chart.SeriesList.Sort(Mysort);

  Graphs.Clear;
  for i:=0 to Chart.SeriesCount-1 do
     if Chart.Series[i].ShowInLegend then
  begin
   Graphs.Items.Add(Chart.Series[i].Title);
   if Chart.Series[i].Active then
     Graphs.Checked[Graphs.Items.Count-1]:=true;
  end;



  for i:=0 to Chart.SeriesCount-1 do
     if Chart.Series[i].Title = '_&_&_&_&_&' then
     begin
      Chart.SeriesList.Move(i,Chart.SeriesCount-1);
      break;
     end;

  Chart.repaint;

  if Graphs.ItemIndex=-1 then
    Panel6.Visible:=false;
end;

procedure TForm1.ChartMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var GN :integer;
    tmpX, tmpY :Double;
    cTmpXY :TMyPoint;
begin
inherited;

 Ramka.Visible := false;
 ZoomIn.Visible := false;
 ZoomOut.Visible := false;

 if (Panel10.Visible) then
 if ((Button=mbMiddle)and(LineMMB.Checked))
      or((Button=mbLeft)and(LineLMB.Checked)) then
 Begin
   GN:=FindChart('_&_&_&_&_&');
   if GN<>-1 then
     begin
        if Chart.Seriescount>0 then
        begin
          Chart.Series[0].GetCursorValues(tmpX,tmpY);
          if (PickGraph2.Checked)and(Form2a.GrList.ItemIndex>-1) then
          begin
            cTmpXY:= PickToGraph(tmpx,tmpy,Form2a.GrList.Items[Form2a.GrList.ItemIndex]);
            tmpX := cTmpXY.Xe;
            tmpY := cTmpXY.Ye;
          end
          else
            if (GetKeyState(VK_SHIFT) < 0) or (GetKeyState(VK_CONTROL) < 0) then
            begin
              cTmpXY:= PickToAllGraph(tmpx,tmpy,(GetKeyState(VK_SHIFT) < 0));
              tmpX := cTmpXY.Xe;
              tmpY := cTmpXY.Ye;
            end;
        end;

        deltaR :=0;

        if Chart.Series[GN].Count>2 then
           Chart.Series[GN].Clear
            else
              Chart.Series[GN].AddXY(tmpX,tmpY);

        if Chart.Series[GN].Count>1 then
         deltaR := SQRT (SQR(Chart.Series[GN].XValue[0]-Chart.Series[GN].XValue[1])+
                  +SQR(Chart.Series[GN].YValue[0]-Chart.Series[GN].YValue[1]))

     end
 End;

 if (Panel11.Visible) then
 if(Button=mbLeft) then
 Begin
    AddCommSerie;
    GN := FindChart('_&_&_&_&_Comments'+intToStr(CurComm));
   {for GN:= 0 to Form1.Chart.SeriesCount-1 do         zxcxc
   if Pos('_&_&_&_&_Comments',Form1.Chart.Series[GN].Title)>0 then}
     if GN<>-1 then
     begin
        if Chart.Seriescount>0 then
           Chart.Series[0].GetCursorValues(tmpX,tmpY);

        if tmpx > Chart.BottomAxis.Maximum then
            tmpx := Chart.BottomAxis.Maximum;
        if tmpx < Chart.BottomAxis.Minimum then
            tmpx := Chart.BottomAxis.Minimum;
        if tmpy > Chart.LeftAxis.Maximum then
            tmpy:= Chart.LeftAxis.Maximum;
        if tmpy < Chart.LeftAxis.Minimum then
            tmpy := Chart.LeftAxis.Minimum;

        if (PickGraph.Checked)and(Form2a.GrList.ItemIndex>-1) then
        begin
            cTmpXY:= PickToGraph(tmpx,tmpy,Form2a.GrList.Items[Form2a.GrList.ItemIndex]);

            tmpX := cTmpXY.Xe;
            tmpY := cTmpXY.Ye;
        end
          else
            if (GetKeyState(VK_SHIFT) < 0) or (GetKeyState(VK_CONTROL) < 0) then
            begin
              cTmpXY:= PickToAllGraph(tmpx,tmpy,(GetKeyState(VK_SHIFT) < 0));
              tmpX := cTmpXY.Xe;
              tmpY := cTmpXY.Ye;
            end;

        F3x := tmpx;
        F3y := tmpy;

        Form3.Edit1.Text :=  Label54.Caption;///'Новый комментарий';
        Form3.Edit1.SelStart := 0;
        Form3.Edit1.SelLength := length(Form3.Edit1.Text);
        Form3.Top := Mouse.CursorPos.Y - Form3.Height div 2;
        Form3.Left := Mouse.CursorPos.X - Form3.Width div 2;
        Form3.Showmodal;

        {Chart.Series[GN].AddXY(tmpX,tmpY,'Новый комментарий');}
        RefreshCommList;

        For GN := 0 to CList2.Count-1 do
          if Clist2[GN] = '_&_&_&_&_Comments'+IntToStr(CurComm) then
            begin
              CommentList.ItemIndex := GN;
              CommentList.OnClick(sender);
              break;
            end;

     end;
 end;
 AxisTiming;
 if CHart.BottomAxis.IsDateTime then
     Chart.BottomAxis.Scroll(Chart.BottomAxis.Increment/1000);
 Chart.BottomAxis.Draw(true);
end;

procedure TForm1.ChartMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if not Chart.AllowZoom then
    exit;
  inherited;

  if Button=mbLeft then
  Begin
    Ramka.Visible:=true;
    Ramka.Top:=y;
    Ramka.Left:=X;
    Ramka.Height:=1;
    Ramka.Width:=1;
  end;
    Chart.SetFocus;
end;

procedure TForm1.LegendPosChange(Sender: TObject);
begin
  Case LegendPos.ItemIndex of
    0:  Chart.Legend.Alignment:=laRight;
    1:  Chart.Legend.Alignment:=laLeft;
    2:  Chart.Legend.Alignment:=laBottom;
    3:  Chart.Legend.Alignment:=laTop;
  end;
  LegPos2.ItemIndex := LegendPos.ItemIndex;
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var _ps: TSeriesPointerStyle;
  GN :integer;
begin
  if Button=BtNext then
      Inc(DotStyle);
    if Button=BtPrev then
      Dec(DotStyle);

    if DotStyle <0 then
      DotStyle := 8
      else
        if DotStyle >8 then
          DotStyle :=0;

  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);

  if GN<>-1 then
  Begin

    Case DotStyle of
      0 : _ps :=psRectangle;
      1 : _ps :=psCircle;
      2 : _ps :=psTriangle;
      3 : _ps :=psDownTriangle;
      4 : _ps :=psCross;
      5 : _ps :=psDiagCross;
      6 : _ps :=psStar;
      7 : _ps :=psDiamond;
      8 : _ps :=psSmallDot;
    end;

    if Chart.Series[GN] is TLineSeries  then
      TLineSeries(Chart.Series[GN]).Pointer.Style := _ps;

    if Chart.Series[GN] is TPointSeries  then
      TPointSeries(Chart.Series[GN]).Pointer.Style := _ps;

    if Chart.Series[GN] is TAreaSeries  then
      TAreaSeries(Chart.Series[GN]).Pointer.Style := _ps;

    imageDot.Canvas.Brush.Color := imageDot.Canvas.Pixels[0,0];
    imageDot.Canvas.FillRect(Rect(0,0,imageDot.Width,ImageDot.Height));
    ImageList.Draw(ImageDot.Canvas,0,0,DotStyle,true);
    RefreshChilds(GN);
    Chart.Repaint;
  end;
end;

procedure TForm1.SShowClick(Sender: TObject);
var GN:integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
  begin
    Chart.Series[GN].Marks.Visible := SShow.Checked;
    RefreshChilds(GN);
  end;
 end;
end;

procedure TForm1.ShowBorderClick(Sender: TObject);
var GN:integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
  Begin
    if Chart.Series[GN] is TBarSeries  then
      TBarSeries(Chart.Series[GN]).BarPen.Visible:=ShowBorder.Checked;
    if Chart.Series[GN] is TAreaSeries  then
      TAreaSeries(Chart.Series[GN]).AreaLinesPen.Visible:=ShowBorder.Checked;

    RefreshChilds(GN);
    Chart.Repaint;
   End;
  end;  
end;

procedure TForm1.ShoDotsClick(Sender: TObject);
var GN:integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
  begin
    if Chart.Series[GN] is TLineSeries  then
      TLineSeries(Chart.Series[GN]).Pointer.Visible:=ShoDots.Checked;
    if Chart.Series[GN] is TAreaSeries  then
      TAreaSeries(Chart.Series[GN]).Pointer.Visible:=ShoDots.Checked;

    RefreshChilds(GN);
    Chart.Repaint;
  end;
 end;
end;

procedure TForm1.DotSizeChange(Sender: TObject);
var GN:integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
  try
    if Chart.Series[GN] is TLineSeries  then
    begin
      TLineSeries(Chart.Series[GN]).Pointer.VertSize := DotSize.Value;
      TLineSeries(Chart.Series[GN]).Pointer.HorizSize := DotSize.Value;
    end;
    if Chart.Series[GN] is TPointSeries  then
    begin
      TPointSeries(Chart.Series[GN]).Pointer.VertSize := DotSize.Value;
      TPointSeries(Chart.Series[GN]).Pointer.HorizSize := DotSize.Value;
    end;
    if Chart.Series[GN] is TAreaSeries  then
    begin
      TAreaSeries(Chart.Series[GN]).Pointer.VertSize := DotSize.Value;
      TAreaSeries(Chart.Series[GN]).Pointer.HorizSize := DotSize.Value;
    end;
    RefreshChilds(GN);
    Chart.Repaint;
  except
  end;
 end;
end;

procedure TForm1.ShowDotBorderClick(Sender: TObject);
var GN:integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
  begin
    if Chart.Series[GN] is TLineSeries  then
      TLineSeries(Chart.Series[GN]).Pointer.Pen.Visible:= ShowDotBorder.Checked;
    if Chart.Series[GN] is TPointSeries  then
      TPointSeries(Chart.Series[GN]).Pointer.Pen.Visible:= ShowDotBorder.Checked;
    if Chart.Series[GN] is TAreaSeries  then
      TAreaSeries(Chart.Series[GN]).Pointer.Pen.Visible:= ShowDotBorder.Checked;

    RefreshChilds(GN);
    Chart.Repaint;
  end;
 end;
end;

procedure TForm1.BBChange(Sender: TObject);
var GN, NN, i :integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
  Begin
    ChColour.Brush.Color:=RGB(RB.Position,GB.Position,BB.Position);
    Chart.Series[GN].SeriesColor:=ChColour.Brush.Color;
    RefreshChilds(GN);
    Chart.Repaint;
  End;
 end; 
end;

procedure TForm1.GraphsClickCheck(Sender: TObject);
begin
 Graphs.OnClick(Sender);
 Chart.Repaint;
end;

procedure TForm1.LineHChange(Sender: TObject);
var GN:integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
   try
    if Chart.Series[GN] is TLineSeries  then
      TLineSeries(Chart.Series[GN]).LinePen.Width:= LineH.Value;

    if Chart.Series[GN] is TAreaSeries  then
      TAreaSeries(Chart.Series[GN]).AreaLinesPen.Width:= LineH.Value;

    if Chart.Series[GN] is TBarSeries  then
      TBarSeries(Chart.Series[GN]).BarPen.Width:= LineH.Value;

    RefreshChilds(GN);
    Chart.Repaint;
   except
   end;
 end;
end;

procedure TForm1.BarHChange(Sender: TObject);
var GN:integer;
begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
  try
    if Chart.Series[GN] is TBarSeries  then
      TBarSeries(Chart.Series[GN]).BarWidthPercent:= LineH.Value;
  except
  end;
end;

procedure TForm1.SStairsClick(Sender: TObject);
var GN:integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(Graphs.Items[Graphs.ItemIndex]);
  if GN<>-1 then
  begin
    if Chart.Series[GN] is TLineSeries  then
        TLineSeries(Chart.Series[GN]).Stairs:=SStairs.Checked;
    if Chart.Series[GN] is TAreaSeries  then
        TAreaSeries(Chart.Series[GN]).Stairs:=SStairs.Checked;

    RefreshChilds(GN);
  end
 end 
end;

procedure TForm1.HidePan2Click(Sender: TObject);
begin
 panel2.Visible:=false;
end;

procedure TForm1.HidePan1Click(Sender: TObject);
begin
  Panel1.Visible:=false;
end;

procedure TForm1.HidePan5Click(Sender: TObject);
begin
  Panel5.Visible:=false;
end;

procedure TForm1.RefreshButton2Click(Sender: TObject);
begin
  RefreshGraphs;
  Panel5.Visible:=true;
end;

procedure TForm1.FormShow(Sender: TObject);
var I,j:integer;
    NoPan, Maxme, SqMe:boolean;
    AddF:TStringList;
    NewForm :TForm1;
    FC :integer;
    LF : string;
begin


  if FirstStart then
  TRY
   Form4.Show;
   FC:=0;
   LF :='';
   DoLng := false;

   Panel13.Visible := false;

   StyleBox.ItemIndex := 0;
   StyleBox.OnChange(nil);

 {  for i:= 0 to Application.ComponentCount-1 do
     if Application.Components[i] is TForm
       then Inc(FC);

   if (FC>2)or(Name<>'Form1') then
   begin
      Form2.Show;
      OnResize(sender);
   end else
    // if Form2.Visible then
      //9  Form2.Hide;  }

   FirstStart:=false;
   maxme:=false;


   //// ОФОРМЛЕНИЕ
   BPW[1]:=BP1.Width;
   BPW[2]:=BP2.Width;
   BPW[3]:=BP3.Width;
   BPW[4]:=BP4.Width;
   BPW[5]:=BP5.Width;
   BPW[6]:=BP6.Width;
   BPW[7]:=BP7.Width;
   BP7.Width := 10;
   //_Label.Caption := 'Подпрограмма для построения графиков'+#13+' Версия 1.15';

  //// ЗАГРУЗКА ДАННЫХ ПО ПАРАМЕТРАМ
  if Name='Form1' then
  BEGIN
    if ParamStr(1)<>'' then
    Begin
      i := 3;
      while ParamStr(i)<>'' do
      begin
        inc(i);
        if ParamStr(i)='-gray' then
          DoGrey;
      end;

    NoPan:= false;
    KeepP3.Checked := false;

    if not(KeepP3.Checked) then
      Panel3.Height:=2;



    SqMe:=false;

    DoScript := false;
    

    if ParamStr(1) <> '-script' then
    begin
      Gdata.LoadFromFile(ParamStr(1));
      GetGToMemo;
      GFileName:=ParamStr(1);
    end
      else
          DoScript := true;

    i := 3;
    while ParamStr(i)<>'' do
    begin
      if ParamStr(i)='-menu' then
      begin
         KeepP3.Checked := true;
         Panel3.Height:=50;
      end
       else
       if ParamStr(i)='-max' then
       begin
         WindowState:=wsMaximized;
         If Form4.Showing then
            Form4.Close;
       end
         else
            if ParamStr(i)='-sq' then
              DoSq:=true
            else
           if ParamStr(i)='-n' then
              NoPan:=true
            else
            if ParamStr(i)='-pro' then
              DoProfi:=true
            else
             if ParamStr(i)='-rnav' then
              DoRNav:=true
            else
             if Pos('-l_', ParamStr(i))=1 then
             Begin
               DoLng:= true;
               LF := Copy(ParamStr(i),4,length(ParamStr(i))-3);

             End
            else
              if ParamStr(i)='-readonly' then
              begin
                BP1.Visible := false;
                BP5.Visible := false;
                ShowTextFile.Visible := false;
                ShowSettings.Visible := false;
                NoWrite.Visible := true;
              end
             else
              if ParamStr(i)='-readonlyplus' then
              begin
                BP1.Visible := false;
               // BP5.Visible := false;
                ShowTextFile.Visible := false;
                ShowSettings.Visible := false;
                NoWrite.Visible := true;
              end
              else
              if ParamStr(i)='-comments' then
              begin
                DoComz := true;
              end
                else
              if ParamStr(i)='-cg' then
              begin
                DoComGraphs := true;
              end
                else
                  if ParamStr(i)='-gray' then
                  begin
                    /// ВЫНЕСЕНО ВЫШЕ!
                    DoGrey;
                    Panel8.ParentColor:=true;
                  end
                    else
                    if ParamStr(i)='-nozeros' then
                    begin
                      DoNoZeros := true;
                    end
                      else
                    if ParamStr(i)='-thickpts' then
                    begin
                      DothickPts := true;
                    end
                      else
                    if ParamStr(i)='-thick' then
                    begin
                      Dothick := true;
                     { j:=i;
                      try
                        NewForm := TForm1.Create(Application);
                        NewForm.Name := 'Form4';
                        NewForm.Caption :='TEST';
                        NewForm.Show;
                      finally
                        //NewForm.Free;
                      end;
                      break;  }
                    end
                      else
                      begin
                        AddF:= Tstringlist.Create;
                        AddF.LoadFromFile(ParamStr(i));
                        for j := 0 to AddF.Count-1 do
                         GData.Add(AddF[j]);
                           AddF.Destroy;
                      end;
       inc(i)
    end;

    Repaint;

    if DoScript then
    begin
      Panel5.Visible := not NoPan;
      ScriptLoad(ParamStr(2))
    end
    else
    if ParamStr(2)<>'' then
    begin
      ChartLoaded := false;
      LoadSets(ParamStr(2));
      Panel1.Visible := false;
      Panel2.Visible := false;
      RefreshGraphs;
      Panel5.Visible := true;
      Panel6.Visible := false;
    end
      else
        begin
          Panel1.Visible := true;
          Panel2.Visible := true;
          Panel3.Height := 50;
          if Panel2.Height = Form1.ClientHeight-2 then
             Panel2.Height := Form1.ClientHeight-50;
          SetCursorPos(Left+Width div 2,Top+25);
          ChartLoaded :=true;
        end;

       if NoPan then
         Panel5.Visible := false;
   End else
      Begin
        Panel3.Height := 50;
        if Panel2.Height = Form1.ClientHeight-2 then
           Panel2.Height := Form1.ClientHeight-50;
        SetCursorPos(Left+Width div 2,Top+25);
      End;
  END;
  if ParamStr(1)='' then
     Settings;

  FINALLY
    Form4.Close;
  END;


   if DoLng then
   Begin
     Try
       LoadLang(LF);
     Except
     End;
   End
     else
        _Label.Caption:= 'Подпрограмма для построения графиков'+#13+' Версия 1.2';

end;

procedure TForm1.GetGToMemo;
var i:integer;
begin
  FileText.Lines.Clear;
  for i:=0 to 149 do
  begin
    if GData.Count>i+1 then
      FileText.Lines.Add(GData[i])
        else break;
  end;

  if i>=149 then
  begin
    ShowAllFile.Visible:= true;

    if Panel8.ParentColor = false then
      Panel8.Color := Shape22.Brush.Color;

    Statuslabel.Caption := 'Показаны первые 150 строк';
  end
  else
    begin
      ShowAllFile.Visible:= false;
      if Panel8.ParentColor = false then
        Panel8.Color := Panel2.Color;
      Statuslabel.Caption := ' ';
    end;

  FileText.SelStart:= 1;
end;

procedure TForm1.EditKeyPress(Sender: TObject; var Key: Char);
begin
  if (ChangePar.Name = 'TearByX')or(ChangePar.Name = 'TearXY')or
     (ChangePar.Name = 'IncX')or(ChangePar.Name = 'IncY') or
     (ChangePar.Name = 'XEnd')or(ChangePar.Name = 'Xbegin') or
     (ChangePar.Name = 'YEnd')or(ChangePar.Name = 'Ybegin') then
    begin
       try
          if ((key = '.') or (key = ',')) then
               key := DecimalSeparator;
          ChangePar.Caption := Edit.text;
       except
       end;
    end
end;

procedure TForm1.AddDataClick(Sender: TObject);
begin
   DoAdd:=true;
   Opendialog1.Execute;
end;

procedure TForm1.GetMemoPos;
 var
  _X, _Y : Integer;
  X, Y : Word;
begin

  if CarPos <> -1 then// если нажали мышь и выделяем текст - то здесь начало выделяемого текста
    begin

    if ( FileText.SelStart + FileText.SelLength ) = CarPos // вычисляем в какую сторону выделяем
      then
        begin
        // строка - если выделяем в сторону начала текста
        Y := FileText.Perform( EM_LINEFROMCHAR, -1, -1 );
        // колонка - если выделяем в сторону начала текста
        X := LoWord( FileText.Perform( EM_GETSEL, 0, 0 ) ) - FileText.Perform( EM_LINEINDEX, -1, 0 );
        end
      else
        begin
        // строка - если выделяем в сторону конца текста
        Y := FileText.CaretPos.Y;
        // колонка - если выделяем в сторону конца текста
        X := HiWord( FileText.Perform( EM_GETSEL, 0, 0 ) ) - FileText.Perform( EM_LINEINDEX, -1, 0 );
        end;

    end
  else
  begin
   Y := FileText.Perform( EM_LINEFROMCHAR, -1, -1 );
   X := LoWord( FileText.Perform( EM_GETSEL, 0, 0 ) ) - FileText.Perform( EM_LINEINDEX, -1, 0 );
  end;

  _X := trunc(X)+1;
  _Y := trunc(Y)+1;
 if _X>0 then
  StatusLabel.Caption := 'Строка: ' +IntToStr( _Y ) + ', Символ: ' + IntToStr( _X )+
      ', Столбец:' + IntToStr(1+GetColN(FileText.Lines[_Y-1],_X))
      else StatusLabel.Caption := '';
end;

procedure TForm1.FileTextMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 CarPos := FileText.SelStart;
    GetMemoPos;
end;

procedure TForm1.FileTextMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if FileText.SelLength = 0 then
     CarPos := -1;
  GetMemoPos;
end;

procedure TForm1.FileTextKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if not (ssShift in Shift) and (FileText.SelLength = 0) then
   CarPos := -1;
 GetMemoPos;
end;

procedure TForm1.FileTextKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (CarPos = -1) and (ssShift in Shift) then
    CarPos := FileText.SelStart;
 GetMemoPos;
end;

procedure TForm1.DoSquareClick(Sender: TObject);
var ScaleXY: Real;
begin

         // -- Вертикальная ось
       {  With Chart.LeftAxis do begin
              Automatic   := False;
              Minimum     := - 0.5*AmplitudeY;
              Maximum     := + 0.5*AmplitudeY;
              Repaint;                                       // ОБЯЗАТЕЛЬНО вызвать перепостроение. Чтобы изменения выше применились к оси
              Increment   := (Maximum-Minimum)/MarkersCountY;
              StartPx     := CalcPosValue( Minimum );                          // Начало оси в пиксельных координатах
              EndPx       := CalcPosValue( Maximum );                          // Конец оси в пиксельных координатах
              PixPerCellY := Round( Abs(EndPx-StartPx) / ( (Maximum-Minimum)/Increment ));  // Кол-во пикселей, приходящихся на одну ячейку по OY
         end;

         // -- Горизональная ось
         With Chart.BottomAxis do begin
              Automatic   := False;
              Minimum     := 0;
              Maximum     := AmplitudeX;
              Repaint;
              StartPx     := CalcPosValue( Minimum );
              EndPx       := CalcPosValue( Maximum );
              Increment   := PixPerCellY*(Maximum-Minimum) /  Abs(EndPx-StartPx); // Шаг по оси из условия квадратности ячейки (т.е. должно помещаться столько же пикселей = PixPerCellY)
         end;
     end;    }

   Chart.leftAxis.Automatic:=false;
   Chart.BottomAxis.Automatic:=false;

   ScaleXY:= (Chart.ChartRect.Right- Chart.ChartRect.Left)/(Chart.ChartRect.Bottom - Chart.ChartRect.Top);

   Chart.BottomAxis.Maximum:=  ((Chart.LeftAxis.Maximum - Chart.LeftAxis.Minimum)*ScaleXY + Chart.BottomAxis.Minimum);

//   Chart.LeftAxis.Increment:=  Chart.BottomAxis.Increment;

//   Chart.BottomAxis.LabelValue :=  Chart.LeftAxis.LabelvALUE/5;
   Sql:=true;
   Chart.Repaint;


//   Chart.Repaint;
end;

function TForm1.FindChart(Cname: string): integer;
var i:integer;
begin
  result:=-1;
  for i:=0 to chart.SeriesCount-1 do
    if Chart[i].Title=Cname then
    begin
      result:=i;
      break;
    end;
end;

procedure TForm1.RefreshChilds(GN: integer);
var i, NN:integer;
begin
   for i:=1 to ChildsCount(Chart.Series[GN].Title)+1 do
   begin
     NN:=FindChart(Chart.Series[GN].Title+'_&'+inttostr(i+1));
     if NN<>-1 then
     Begin
      if Chart.Series[NN] is TlineSeries then
        with TLineSeries(Chart.Series[NN]) do
        begin
          Active := TlineSeries(Chart.Series[GN]).Active;
          Pointer.Style := TlineSeries(Chart.Series[GN]).Pointer.Style;
          Marks.Visible := TlineSeries(Chart.Series[GN]).Marks.Visible;
          Marks.Arrow.Color:=clBlack;
          Pointer.Visible := TlineSeries(Chart.Series[GN]).Pointer.Visible;
          Pointer.VertSize := TlineSeries(Chart.Series[GN]).Pointer.VertSize;
          Pointer.HorizSize := TlineSeries(Chart.Series[GN]).Pointer.HorizSize;
          Pointer.Pen.Visible := TlineSeries(Chart.Series[GN]).Pointer.Pen.Visible;
          LinePen.Width := TlineSeries(Chart.Series[GN]).LinePen.Width;
          SeriesColor := TlineSeries(Chart.Series[GN]).SeriesColor;
          Stairs := TlineSeries(Chart.Series[GN]).Stairs;
        end;
    end;
  End;
///
end;

procedure TForm1.ZoomInBClick(Sender: TObject);
begin
  if not Hold2.Checked then
  Chart.ZoomPercent(120);
  AxisTiming;
   if CHart.BottomAxis.IsDateTime then
  Chart.BottomAxis.Scroll(Chart.BottomAxis.Increment/1000);
 Chart.BottomAxis.Draw(true);
end;

procedure TForm1.ZoomOutBClick(Sender: TObject);
begin
  if not Hold2.Checked then
  Chart.ZoomPercent(80);
  AxisTiming;
  if CHart.BottomAxis.IsDateTime then
    Chart.BottomAxis.Scroll(Chart.BottomAxis.Increment/1000);
  Chart.BottomAxis.Draw(true);
end;

procedure TForm1.ResZoomClick(Sender: TObject);
begin
  Chart.UndoZoom;
end;


procedure TForm1.ChartGetNextAxisLabel(Sender: TChartAxis;
  LabelIndex: Integer; var LabelValue: Double; var Stop: Boolean);
begin

 AxisTiming;

 {Step:=(Chart.LeftAxis.Maximum-Chart.LeftAxis.Minimum)/5;
 i:=0.000000001;
 repeat
   i:=i*10
 until ((Step>i) and (step<=i*10));
 begin
   Step:=round(Step/i)*i
 end;
Step:= 10000;

 If Sql then begin
   Chart.leftAxis.Automatic:=false;
    if Sender=Chart.LeftAxis then
    Begin

     // if LabelValue>=round(Chart.LeftAxis.Minimum) then
       LabelValue:=0;//LabelValue+Step*10
                        // else LabelValue:=LabelValue-Step;
    End;
 end; }

end;

procedure TForm1.ChartMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin

  {Chart.ZoomPercent(WheelDelta);
 if WheelDelta>0 then
   Chart.ZoomPercent(102)
  // ZoomInB.OnClick(Sender)
    else
      Chart.ZoomPercent(100.0001);
    // ZoomOutB.OnClick(Sender);   }
end;


procedure TForm1.AddChildGraph(par:TLineSeries; num: integer; x0,y0:double);
var Series1: TLineSeries;
begin

                      Series1:=TLineSeries.Create(Chart);

                      Series1.ParentChart:=Chart;
                     // Series1.ShowInLegend:=false;
                      Series1.Title:=par.Title+'_&'+IntToStr(num);
                      Series1.Marks.Visible:=false;
                      Series1.Marks.Arrow.Color:=clBlack;
                      if Xformat.ItemIndex>1 then
                          Series1.XValues.Datetime:=true;
                      if Yformat.ItemIndex>1 then
                          Series1.YValues.Datetime:=true;

                      Series1.SeriesColor:=par.SeriesColor;

                  //    Series1.AddNullXY(par.XValue[par.Count-1],
                  //                  par.YValue[par.Count-1],'');

                      Series1.AddXY(x0,y0)


end;

function TForm1.ChildsCount(Cname: string): integer;
var i, j:integer;
begin
  j:=0;
  for i := 0 to Chart.SeriesCount-1 do
    If Pos(Cname+'_&',Chart.Series[i].Title)>0 then
      inc(j);
  result:=j;
end;

procedure TForm1.ShowXYBClick(Sender: TObject);
var GN :integer;
begin
  Panel10.Visible:= not (Panel10.Visible);
  if Panel11.Visible then
    Panel11.Visible:= not (Panel10.Visible);

  PickGraph.Checked :=false;
  PickGraph2.Checked :=false;

  GN:=FindChart('_&_&_&_&_&');
  if GN<>-1 then
    Chart.Series[GN].Clear
       else AddCosmetics;

  if Panel10.Visible = false then
  begin
  {  GN:=FindChart('_&_&_&_&_&');
   if GN<>-1 then
     Chart.Series[GN].Clear;}
    Chart.AllowZoom := true;
  end
    else
      Chart.AllowZoom := not LineLMB.Checked;
end;

procedure TForm1.CheckUncheckClick(Sender: TObject);
var i, GN: integer;
begin
  DoChk:= not(DoChk);
  PickGraph.Checked := false;
  PickGraph2.Checked := false;
  for i:=0 to Graphs.Count-1 do
  begin

     Graphs.Checked[i]:= not(DoChk);
     GN:=FindChart(Graphs.Items[i]);

     if GN<>-1 then
     begin
       if Graphs.Checked[i] then
         Chart.Series[GN].Active:=true
           else
             Chart.Series[GN].Active:=false;

       RefreshChilds(GN);
     end;
  end;

end;

procedure TForm1.BH1Click(Sender: TObject);
begin
 if BP1.Width = BPW[1] then
 Begin
    BP1.Width := 10;
    BL1.Visible := false;
    BH1.Caption:='+'
 end
   else
   begin
     BP1.Width := BPW[1];
     BL1.Visible := true;
     BH1.Caption:=''
   end;

//   BH1.Visible := not (BL1.Visible);
end;

procedure TForm1.BL2DblClick(Sender: TObject);
begin
 if BP2.Width = BPW[2] then
 Begin
    BP2.Width := 10;
    BL2.Visible := false;
    BH2.Caption := '+';
 end
   else
   begin
     BP2.Width := BPW[2];
     BL2.Visible := true;
     BH2.Caption := '';
   end;

//   BH2.Visible := not (BL2.Visible);
end;

procedure TForm1.BL3DblClick(Sender: TObject);
begin
 if BP3.Width = BPW[3] then
 Begin
    BP3.Width := 10;
    BL3.Visible := false;
    BH3.Caption := '+';
 end
   else
   begin
     BP3.Width := BPW[3];
     BL3.Visible := true;
     BH3.Caption := '';
   end;

//   BH3.Visible := not (BL3.Visible);
end;

procedure TForm1.BL4DblClick(Sender: TObject);
begin
  if BP4.Width = BPW[4] then
 Begin
    BP4.Width := 10;
    BL4.Visible := false;
    BH4.Caption := '+';
 end
   else
   begin
     BP4.Width := BPW[4];
     BL4.Visible := true;
     BH4.Caption := '';
   end;

//   BH4.Visible := not (BL4.Visible);
end;

procedure TForm1.BL5DblClick(Sender: TObject);
begin
  if BP5.Width = BPW[5] then
 Begin
    BP5.Width := 10;
    BL5.Visible := false;
    BH5.Caption := '+';
 end
   else
   begin
     BP5.Width := BPW[5];
     BL5.Visible := true;
     BH5.Caption := '';
   end;
end;

procedure TForm1.ResetAllClick(Sender: TObject);
begin
  Chart.SeriesList.Clear;
  Graphs.Clear;
  Chart.Repaint;
  Panel6.Visible :=False;
  Panel11.Visible :=False;
  Panel10.Visible :=False;
  PickGraph.Checked :=false;
  PickGraph2.Checked :=false;
  //SeriesCount:=0;
end;

procedure TForm1.Panel3CanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
if Resize then
  if (_label.Width<260) then
   _label.Font.Color := _label.Color
      else
      _label.Font.Color := clWhite;
end;

procedure TForm1.BL6DblClick(Sender: TObject);
begin
  if BP6.Width = BPW[6] then
 Begin
    BP6.Width := 10;
    BL6.Visible := false;
    BH6.Caption := '+';
 end
   else
   begin
     BP6.Width := BPW[6];
     BL6.Visible := true;
     BH6.Caption := '';
   end;
end;

procedure TForm1.AddGraphClick(Sender: TObject);
begin
 OpenDialog3.Execute;
end;

procedure TForm1.SaveChart(Fname:String);
var
    i, j :integer;
    _Col :TColor;
    FGraph :TStringList;
begin
   FGraph := TStringList.Create;

    //1 Header
    if Chart.Title.Text.Count>0 then
    FGraph.Add(Chart.Title.Text[0])
       else FGraph.Add('');                //0

    FGraph.Add(Chart.BottomAxis.Title.Caption);  //1
    FGraph.Add(Chart.LeftAxis.Title.Caption);    //2

    if Chart.Legend.Visible then
        FGraph.Add('1')
          else
            FGraph.Add('0');             // 3

    if Chart.Legend.Alignment=laRight then      //4
      FGraph.Add('1')
      else
        if Chart.Legend.Alignment=laLeft then
          FGraph.Add('2')
          else
           if Chart.Legend.Alignment=laBottom then
             FGraph.Add('3')
              else
               if Chart.Legend.Alignment=laTop then
                   FGraph.Add('4');

     if  Chart.BottomAxis.IsDateTime then       //5
          FGraph.Add('1')
          else
             FGraph.Add('0');

     if  Chart.LeftAxis.IsDateTime then       //6
          FGraph.Add('1')
          else
             FGraph.Add('0');

          // 27-04

    FGraph.Add('_&_&_&_&_&_V07ADDS');      /// 7

    FGraph.Add(HeaderSize.Caption);        //8
    FGraph.Add(AxisHeaderSize.Caption);    //9
    FGraph.Add(AxisTickSize.Caption);      //10
    FGraph.Add(IntToStr(LegFSize.Value));  //11

    FGraph.Add(MainFont.Items[MainFont.ItemIndex]);   //12
    FGraph.Add(SecondFont.Items[SecondFont.ItemIndex]); //13

    if  ShowComms.Checked then       //14
          FGraph.Add('1')
          else
             FGraph.Add('0');

    FGraph.Add(IntToStr(CommFont.Value));  //15
    FGraph.Add(IntToStr(CommArrow.Value));  //16
    FGraph.Add(IntToStr(GetRValue(CommColor.Selected)));  //17
    FGraph.Add(IntToStr(GetGValue(CommColor.Selected)));  //18
    FGraph.Add(IntToStr(GetBValue(CommColor.Selected)));  //19

    FGraph.Add('_&_&_&_&_&_V075ADDS');  /// 20
    FGraph.Add(XBegin.Caption);             //21
    FGraph.Add(YBegin.Caption);             //22
    FGraph.Add(XEnd.Caption);               //23
    FGraph.Add(YEnd.Caption);               //24
    if AutoLim.Checked then
      FGraph.Add('1')                        //25
      else
        FGraph.Add('0');

    FGraph.Add('_&_&_&_&_&_V094ADDS');  /// 26
    FGraph.Add(IncX.Caption);             //27
    FGraph.Add(IncY.Caption);             //28

    FGraph.Add('_&_&_&_&_&_V096ADDS');  /// 29
    FGraph.Add(WSX.Text);             //30
    FGraph.Add(WSY.Text);             //31
    if WSS.Checked then
      FGraph.Add('1')                     //32
      else
        FGraph.Add('0');

    /// 2. Series                        /// From 7 to EOF
    for i:=0 to chart.SeriesCount-1 do
    if chart[i]<>nil then
    if chart[i].Title<>'_&_&_&_&_&' then
    BEGIN
        /// 2a SerieHeader
        FGraph.Add(Chart.Series[i].Title);                    // k+0
        if Chart.Series[i] is TLineSeries then                // +1
           FGraph.Add('1')
           else
           if Chart.Series[i] is TPointSeries then
                FGraph.Add('2')
              else
              if Chart.Series[i] is TAreaSeries then
                  FGraph.Add('3')
                    else
                      FGraph.Add('0');

         if Chart.Series[i].Active then
            FGraph.Add('1')                 //+2
               else
                 FGraph.Add('0');

         if Chart.Series[i].ShowInLegend then  ///+3
            FGraph.Add('1')
               else
                 FGraph.Add('0');

         if Chart.Series[i].Marks.Visible then  //+4
            FGraph.Add('1')
                 else
                   FGraph.Add('0');

          _Col:= Chart.Series[i].SeriesColor;
          FGraph.Add(IntToStr(GetRValue(_col)));         //+5
          FGraph.Add(IntToStr(GetGValue(_col)));         //+6
          FGraph.Add(IntToStr(GetBValue(_col)));         //+7

          if Chart.Series[i] is TBarSeries then
          Begin
              FGraph.Add(IntToStr(TBarSeries(Chart.Series[i]).BarPen.Width));   //+8

              if TBarSeries(Chart.Series[i]).BarPen.Visible then           //+7
                FGraph.Add('1')
                  else
                    FGraph.Add('0');

          End;

          if Chart.Series[i] is TLineSeries then
          Begin
            if TLineSeries(Chart.Series[i]).Pointer.Visible then         // +8
              FGraph.Add('1')
               else
                 FGraph.Add('0');

            if TLineSeries(Chart.Series[i]).Stairs then                  // +9
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

            j:=0;
            case TLineSeries(Chart.Series[i]).Pointer.Style of
              psRectangle: j :=0;
              psCircle: j :=1;
              psTriangle: j:=2;
              psDownTriangle: j:=3;
              psCross: j :=4;
              psDiagCross: j :=5;
              psStar: j :=6;
              psDiamond: j :=7;
              psSmallDot: j :=8;
            end;
            FGraph.Add(IntToStr(j));                                  //+10

            FGraph.Add(IntToStr(TLineSeries(Chart.Series[i]).Pointer.VertSize));  //+11

            if TLineSeries(Chart.Series[i]).Pointer.Pen.Visible then //+12
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

            FGraph.Add(IntToStr(TLineSeries(Chart.Series[i]).LinePen.Width));  //+13

          End;

          if Chart.Series[i] is TAreaSeries then
          Begin
            if TAreaSeries(Chart.Series[i]).Pointer.Visible then        //+8
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

            FGraph.Add(IntToStr(TAreaSeries(Chart.Series[i]).Pointer.VertSize)); //+9

            if TAreaSeries(Chart.Series[i]).Pointer.Pen.Visible then   //+10
             FGraph.Add('1')
                 else
                   FGraph.Add('0');

            if TAreaSeries(Chart.Series[i]).Stairs then    //+11
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

              j:=0;
              case TAreaSeries(Chart.Series[i]).Pointer.Style of
                psRectangle: j :=0;
                psCircle: j :=1;
                psTriangle: j :=2;
                psDownTriangle: j :=3;
                psCross: j :=4;
                psDiagCross: j :=5;
                psStar: j :=6;
                psDiamond: j :=7;
                psSmallDot: j :=8;
              end;
              FGraph.Add(IntToStr(j));                                  //+12

              FGraph.Add(IntToStr(TAreaSeries(Chart.Series[i]).AreaLinesPen.Width)); //+13

              if TAreaSeries(Chart.Series[i]).AreaLinesPen.Visible then   //+14
                FGraph.Add('1')
                 else
                   FGraph.Add('0');
          End;

          if Chart.Series[i] is TPointSeries then
          Begin
            if TPointSeries(Chart.Series[i]).Pointer.Visible then  // +8
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

            FGraph.Add(IntToStr(TPointSeries(Chart.Series[i]).Pointer.VertSize));  // +9
            if TPointSeries(Chart.Series[i]).Pointer.Pen.Visible then     //+10
              FGraph.Add('1')
                 else
                   FGraph.Add('0');


            j:=0;
            case TPointSeries(Chart.Series[i]).Pointer.Style of
              psRectangle: j :=0;
              psCircle: j :=1;
              psTriangle: j :=2;
              psDownTriangle: j :=3;
              psCross: j :=4;
              psDiagCross: j :=5;
              psStar: j :=6;
              psDiamond: j :=7;
              psSmallDot: j :=8;
            end;
            FGraph.Add(IntToStr(j));                                  //+11

            FGraph.Add(IntToStr(TPointSeries(Chart.Series[i]).Marks.Font.Size));
            FGraph.Add(IntToStr(TPointSeries(Chart.Series[i]).Marks.ArrowLength));

            FGraph.Add(IntToStr(GetRValue(TPointSeries(Chart.Series[i]).Marks.BackColor)));
            FGraph.Add(IntToStr(GetGValue(TPointSeries(Chart.Series[i]).Marks.BackColor)));
            FGraph.Add(IntToStr(GetBValue(TPointSeries(Chart.Series[i]).Marks.BackColor)));  // 16
          End;

          FGraph.Add('');
          For j := 0 To Chart.Series[i].Count-1 do
          begin
            if (Chart.Series[i].IsNull(j))and(j<>0) then
              FGraph.Add(FloatToStr(Chart.Series[i].XValue[j])+#$9
                                +FloatToStr(Chart.Series[i].YValues[j])+#$9+'0'
                                +#$9+Chart.Series[i].XLabel[j])
               else
                FGraph.Add(FloatToStr(Chart.Series[i].XValue[j])+#$9
                                +FloatToStr(Chart.Series[i].YValues[j])+#$9+'1'
                                +#$9+Chart.Series[i].XLabel[j]);
          end;

          FGraph.Add('//');

   END;

   FGraph.SaveToFile(Fname);
   FGraph.Destroy;
end;

procedure TForm1.SaveGraphClick(Sender: TObject);
var
    FName :string;
begin
 if SaveDialog3.Execute then
 Begin
  FName := SaveDialog3.FileName;

  if Pos('.cht',FName)<1 then
     FName:=FName+'.cht';

  if Fileexists(fname) then
  if Not DoScript Then
    if MessageDlg('Файл с таким именем уже существует. Переписать его?',
      mtConfirmation,[mbYes, mbNo],0)<>6 then
        exit;

   SaveChart(FName);
  End;

{  if DoIt then
  Begin
    FGraph := TStringList.Create;


    //1 Header
    if Chart.Title.Text.Count>0 then
    FGraph.Add(Chart.Title.Text[0])
       else FGraph.Add('');                //0

    FGraph.Add(Chart.BottomAxis.Title.Caption);  //1
    FGraph.Add(Chart.LeftAxis.Title.Caption);    //2

    if Chart.Legend.Visible then
        FGraph.Add('1')
          else
            FGraph.Add('0');             // 3

    if Chart.Legend.Alignment=laRight then      //4
      FGraph.Add('1')
      else
        if Chart.Legend.Alignment=laLeft then
          FGraph.Add('2')
          else
           if Chart.Legend.Alignment=laBottom then
             FGraph.Add('3')
              else
               if Chart.Legend.Alignment=laTop then
                   FGraph.Add('4');

     if  Chart.BottomAxis.IsDateTime then       //5
          FGraph.Add('1')
          else
             FGraph.Add('0');

     if  Chart.LeftAxis.IsDateTime then       //6
          FGraph.Add('1')
          else
             FGraph.Add('0');

          // 27-04

    FGraph.Add('_&_&_&_&_&_V07ADDS');      /// 7

    FGraph.Add(HeaderSize.Caption);        //8
    FGraph.Add(AxisHeaderSize.Caption);    //9
    FGraph.Add(AxisTickSize.Caption);      //10
    FGraph.Add(IntToStr(LegFSize.Value));  //11

    FGraph.Add(MainFont.Items[MainFont.ItemIndex]);   //12
    FGraph.Add(SecondFont.Items[SecondFont.ItemIndex]); //13

    if  ShowComms.Checked then       //14
          FGraph.Add('1')
          else
             FGraph.Add('0');

    FGraph.Add(IntToStr(CommFont.Value));  //15
    FGraph.Add(IntToStr(CommArrow.Value));  //16
    FGraph.Add(IntToStr(GetRValue(CommColor.Selected)));  //17
    FGraph.Add(IntToStr(GetGValue(CommColor.Selected)));  //18
    FGraph.Add(IntToStr(GetBValue(CommColor.Selected)));  //19

    FGraph.Add('_&_&_&_&_&_V075ADDS');  /// 20
    FGraph.Add(XBegin.Caption);             //21
    FGraph.Add(YBegin.Caption);             //22
    FGraph.Add(XEnd.Caption);               //23
    FGraph.Add(YEnd.Caption);               //24
    if AutoLim.Checked then
      FGraph.Add('1')                        //25
      else
        FGraph.Add('0');

    FGraph.Add('_&_&_&_&_&_V094ADDS');  /// 26
    FGraph.Add(IncX.Caption);             //27
    FGraph.Add(IncY.Caption);             //28

    FGraph.Add('_&_&_&_&_&_V096ADDS');  /// 29
    FGraph.Add(WSX.Text);             //30
    FGraph.Add(WSY.Text);             //31
    if WSS.Checked then
      FGraph.Add('1')                     //32
      else
        FGraph.Add('0');

    /// 2. Series                        /// From 7 to EOF
    for i:=0 to chart.SeriesCount-1 do
      if chart[i]<>nil then
      if chart[i].Title<>'_&_&_&_&_&' then
      BEGIN
        /// 2a SerieHeader
        FGraph.Add(Chart.Series[i].Title);                    // k+0
        if Chart.Series[i] is TLineSeries then                // +1
           FGraph.Add('1')
           else
           if Chart.Series[i] is TPointSeries then
                FGraph.Add('2')
              else
              if Chart.Series[i] is TAreaSeries then
                  FGraph.Add('3')
                    else
                      FGraph.Add('0');

         if Chart.Series[i].Active then
            FGraph.Add('1')                 //+2
               else
                 FGraph.Add('0');

         if Chart.Series[i].ShowInLegend then  ///+3
            FGraph.Add('1')
               else
                 FGraph.Add('0');

         if Chart.Series[i].Marks.Visible then  //+4
            FGraph.Add('1')
                 else
                   FGraph.Add('0');
          
          _Col:= Chart.Series[i].SeriesColor;
          FGraph.Add(IntToStr(GetRValue(_col)));         //+5
          FGraph.Add(IntToStr(GetGValue(_col)));         //+6
          FGraph.Add(IntToStr(GetBValue(_col)));         //+7

          if Chart.Series[i] is TBarSeries then
          Begin
              FGraph.Add(IntToStr(TBarSeries(Chart.Series[i]).BarPen.Width));   //+8

              if TBarSeries(Chart.Series[i]).BarPen.Visible then           //+7
                FGraph.Add('1')
                  else
                    FGraph.Add('0');

          End;

          if Chart.Series[i] is TLineSeries then
          Begin
            if TLineSeries(Chart.Series[i]).Pointer.Visible then         // +8
              FGraph.Add('1')
               else
                 FGraph.Add('0');

            if TLineSeries(Chart.Series[i]).Stairs then                  // +9
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

            j:=0;
            case TLineSeries(Chart.Series[i]).Pointer.Style of
              psRectangle: j :=0;
              psCircle: j :=1;
              psTriangle: j:=2;
              psDownTriangle: j:=3;
              psCross: j :=4;
              psDiagCross: j :=5;
              psStar: j :=6;
              psDiamond: j :=7;
              psSmallDot: j :=8;
            end;
            FGraph.Add(IntToStr(j));                                  //+10

            FGraph.Add(IntToStr(TLineSeries(Chart.Series[i]).Pointer.VertSize));  //+11

            if TLineSeries(Chart.Series[i]).Pointer.Pen.Visible then //+12
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

            FGraph.Add(IntToStr(TLineSeries(Chart.Series[i]).LinePen.Width));  //+13

          End;

          if Chart.Series[i] is TAreaSeries then
          Begin
            if TAreaSeries(Chart.Series[i]).Pointer.Visible then        //+8
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

            FGraph.Add(IntToStr(TAreaSeries(Chart.Series[i]).Pointer.VertSize)); //+9

            if TAreaSeries(Chart.Series[i]).Pointer.Pen.Visible then   //+10
             FGraph.Add('1')
                 else
                   FGraph.Add('0');

            if TAreaSeries(Chart.Series[i]).Stairs then    //+11
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

              j:=0;
              case TAreaSeries(Chart.Series[i]).Pointer.Style of
                psRectangle: j :=0;
                psCircle: j :=1;
                psTriangle: j :=2;
                psDownTriangle: j :=3;
                psCross: j :=4;
                psDiagCross: j :=5;
                psStar: j :=6;
                psDiamond: j :=7;
                psSmallDot: j :=8;
              end;
              FGraph.Add(IntToStr(j));                                  //+12

              FGraph.Add(IntToStr(TAreaSeries(Chart.Series[i]).AreaLinesPen.Width)); //+13

              if TAreaSeries(Chart.Series[i]).AreaLinesPen.Visible then   //+14
                FGraph.Add('1')
                 else
                   FGraph.Add('0');
          End;

          if Chart.Series[i] is TPointSeries then
          Begin
            if TPointSeries(Chart.Series[i]).Pointer.Visible then  // +8
              FGraph.Add('1')
                 else
                   FGraph.Add('0');

            FGraph.Add(IntToStr(TPointSeries(Chart.Series[i]).Pointer.VertSize));  // +9
            if TPointSeries(Chart.Series[i]).Pointer.Pen.Visible then     //+10
              FGraph.Add('1')
                 else
                   FGraph.Add('0');


            j:=0;
            case TPointSeries(Chart.Series[i]).Pointer.Style of
              psRectangle: j :=0;
              psCircle: j :=1;
              psTriangle: j :=2;
              psDownTriangle: j :=3;
              psCross: j :=4;
              psDiagCross: j :=5;
              psStar: j :=6;
              psDiamond: j :=7;
              psSmallDot: j :=8;
            end;
            FGraph.Add(IntToStr(j));                                  //+11

            FGraph.Add(IntToStr(TPointSeries(Chart.Series[i]).Marks.Font.Size));
            FGraph.Add(IntToStr(TPointSeries(Chart.Series[i]).Marks.ArrowLength));

            FGraph.Add(IntToStr(GetRValue(TPointSeries(Chart.Series[i]).Marks.BackColor)));
            FGraph.Add(IntToStr(GetGValue(TPointSeries(Chart.Series[i]).Marks.BackColor)));
            FGraph.Add(IntToStr(GetBValue(TPointSeries(Chart.Series[i]).Marks.BackColor)));  // 16
          End;

          FGraph.Add('');
          For j := 0 To Chart.Series[i].Count-1 do
          begin
            if (Chart.Series[i].IsNull(j))and(j<>0) then
              FGraph.Add(FloatToStr(Chart.Series[i].XValue[j])+#$9
                                +FloatToStr(Chart.Series[i].YValues[j])+#$9+'0'
                                +#$9+Chart.Series[i].XLabel[j])
               else
                FGraph.Add(FloatToStr(Chart.Series[i].XValue[j])+#$9
                                +FloatToStr(Chart.Series[i].YValues[j])+#$9+'1'
                                +#$9+Chart.Series[i].XLabel[j]);
          end;

          FGraph.Add('//');

      END;

     FGraph.SaveToFile(Fname);
     FGraph.Destroy;
  End;
  end;}

end;

procedure TForm1.LoadChart(FName:String);
var
    i, j :integer;
    k : byte;
    Xdt, Ydt :Boolean;
    _Col :TColor;
    Series :TChartSeries;
    FGraph :TStringList;
    _X, _Y:Double;
    _M : String;

    B: Boolean;
begin
  isLoading := True;

  FGraph := TStringList.Create;
  k:= RSpacer.itemIndex;
  RSpacer.itemIndex:=1;
  ProgressBar.Visible := true;
  Progressbar.Position := 0;

  PickGraph.Checked := false;
  PickGraph2.Checked := false;

  Chart.leftAxis.Automatic:=true;
  Chart.BottomAxis.Automatic:=true;

  Try
    FGraph.LoadFromFile(FName);

    //1 Header
    if (Chart.Title.Text.Count=0) then
      Chart.Title.Text.Add('');

    if (Chart.Title.Text[0]<>FGraph[0]) then
    Begin
       B := DoScript;
       if B = false then B:= MessageDlg('Заменить заголовок графиков на подгружаемый?',
          mtConfirmation,[mbYes, mbNo],0)=6;

       if B then
       Begin
         Chart.Title.Text.Clear;
           if FGraph[0]<>'' then
             Chart.Title.Text.Add(FGraph[0]);

         TittleBox.Caption := FGraph[0];
       End;
    End;

    if (Chart.Title.Text.Count>0) then
      if  Chart.Title.Text[0]='' then
        Chart.Title.Text.Clear;

    if Chart.Title.Text.Count>0 then
       Caption := Chart.Title.Text[0]
         else
           Caption := Application.Title;

     if (Chart.BottomAxis.Title.Caption<>FGraph[1])or
        (Chart.LeftAxis.Title.Caption<>FGraph[2]) then
     Begin

       B := DoScript;
       if B  = false then
          B := MessageDlg('Заменить заголовки осей на подгружаемые?',
              mtConfirmation,[mbYes, mbNo],0)=6;

         if B then
         Begin
           Xname.Caption := FGraph[1];
           Chart.BottomAxis.Title.Caption := Xname.Caption;
           Yname.Caption := FGraph[2];
           Chart.LeftAxis.Title.Caption := Yname.Caption;
         End;
     End;




     B := DoScript;
     if B  = false then
        B := MessageDlg('Применить подгружаемые настройки легенды?',
            mtConfirmation,[mbYes, mbNo],0)=6;

     if B then
     Begin

        if FGraph[3]='1' then
           Chart.Legend.Visible := true
             else
               Chart.Legend.Visible := false;
        j := StrToInt(FGraph[4]);
        Case j of
           1: Chart.Legend.Alignment := laRight;
           2: Chart.Legend.Alignment := laLeft;
           3: Chart.Legend.Alignment := laBottom;
           4: Chart.Legend.Alignment := laTop;
        end;

     End;

     XDt := false;
     YDt := false;

     if  FGraph[5]='1' then
         XDt :=true;
     if  FGraph[6]='1' then
         YDt :=true;

     if Chart.SeriesCount > 0 then
     if ((Chart.BottomAxis.IsDateTime)and(not Xdt)) or
        ((Chart.BottomAxis.IsDateTime = false)and(Xdt))then
     Begin

       B := DoScript;
       if B  = false then
          B := MessageDlg('Несовместимые форматы осей X! Продолжить?',
                   mtError,[mbYes, mbNo],0) <> 6;

          if B then
          begin
                XDt := not(XDt);
                MessageDlg('Невозможно загрузить графики из указанного файла',mtError,[mbOk],0);
                FGraph.Destroy;
                Exit;
          end
     End;

     if Chart.SeriesCount > 0 then
     if ((Chart.LeftAxis.IsDateTime)and(not Ydt)) or
        ((Chart.LeftAxis.IsDateTime = false )and(Ydt))then
     Begin

       B := DoScript;
       if B  = false then
          B := MessageDlg('Несовместимые форматы осей Y! Продолжить?',
                   mtError,[mbYes, mbNo],0) <> 6;
       if B then
       begin
                YDt := not(YDt);
                MessageDlg('Невозможно загрузить графики из указанного файла',mtError,[mbOk],0);
                FGraph.Destroy;
                Exit;
       end
     End;

     if FGraph[7]='_&_&_&_&_&_V07ADDS' then
     Begin

       B := DoScript;
       if B  = false then
          B := MessageDlg('Применить подгружаемые настройки оформления?',
                 mtConfirmation,[mbYes, mbNo],0)=6;

       if B then
       begin

            For i:= 0 to Mainfont.Items.Count-1 do
                if FGraph[12] = Mainfont.Items[i] then
                begin
                  Mainfont.ItemIndex := i;
                  break;
                end;

            For i:= 0 to Mainfont.Items.Count-1 do
                if FGraph[13] = Secondfont.Items[i] then
                begin
                  Secondfont.ItemIndex := i;
                  break;
                end;

            AxisHeaderSize.Caption := FGraph[9];
            AxisTickSize.Caption := FGraph[10];
            LegFSize.Value := StrToInt(FGraph[11]);
            HeaderSize.Caption := FGraph[8];

            Mainfont.OnChange(nil);
            Secondfont.OnChange(nil);
            refreshfont;
       end;


       ShowComms.Checked := (FGraph[14] = '1');
       CommFont.Value := StrToInt(FGraph[15]);
       CommArrow.Value := StrToInt(FGraph[16]);

       CommColor.Selected := RGB(StrToInt(FGraph[17]),
                                    StrToInt(FGraph[18]),StrToInt(FGraph[19]));
       Form3.CommColor.Selected := CommColor.Selected;
       j := 20;


       if FGraph[20]='_&_&_&_&_&_V075ADDS' then
       begin
          j := 26;

          B := DoScript;
          if B  = false then
             B := MessageDlg('Применить границы рабочей области подгружаемого графика?',
                mtConfirmation,[mbYes, mbNo],0)=6;

          if B then
          begin
               XBegin2.Text:= DS(FGraph[21]);
               YBegin2.Text := DS(FGraph[22]);
               XEnd2.Text := DS(FGraph[23]);
               YEnd2.Text := DS(FGraph[24]);

               XBegin.Caption := DS(FGraph[21]);
               YBegin.Caption := DS(FGraph[22]);
               XEnd.Caption := DS(FGraph[23]);
               YEnd.Caption := DS(FGraph[24]);

               AutoLim.Checked := (FGraph[25]='1');
               Alim2.Checked := not Autolim.Checked;
               Hold2.Checked := not AutoLim.Checked;

          end;

       end;

       if FGraph[26]='_&_&_&_&_&_V094ADDS' then    // 27
       begin
         j := 29;

         IncX.Caption:= DS(FGraph[27]);
         IncY.Caption := DS(FGraph[28]);

         IncX2.Text:= DS(FGraph[27]);
         IncY2.Text := DS(FGraph[28]);

       end;

       if FGraph[29]='_&_&_&_&_&_V096ADDS' then    // 27
       begin

         j := 33;
         if DS(FGraph[32]) = '1' then
         Begin

            B := DoScript;
            if B  = false then
               B := MessageDlg('Закрепить размеры окна по настройкам загружаемого графика?',
                   mtConfirmation,[mbYes, mbNo],0)=6;

            if B then
            begin
                 WSS.Checked := DS(FGraph[32]) = '1';
                 WSX.Text:= DS(FGraph[30]);
                 WSY.Text := DS(FGraph[31]);
            end;
          End;
        end;
        end
          else
            j := 7;  ////////27-04



    /// 2. Series   /// From j to EOF

     i := 0;

     REPEAT   /// 2a. Serie Header

       Case StrToInt(FGraph[j+1]) of                 // j+1
        1: Series:=TLineSeries.Create(Chart);
        2: Begin
            Series:=TPointSeries.Create(Chart);
            TPointSeries(Series).Pointer.VertSize := 3;
            TPointSeries(Series).Pointer.HorizSize := 3;
            TPointSeries(Series).Pointer.Style := psCircle;
           end;
        3: Series:=TAreaSeries.Create(Chart);
        0: Series:=TBarSeries.Create(Chart);
       end;

       Series.Title:=FGraph[j];                    // j+0

       if XDt then
          Series.XValues.DateTime := true
            else
             Series.XValues.DateTime := false;

       if YDt then
          Series.YValues.DateTime := true
            else
             Series.YValues.DateTime := false;

       while FindChart(Series.Title)<>-1 do
         Series.Title := '_'+Series.Title;

       Series.ParentChart:=Chart;

       if FGraph[j+2]='1' then
          Series.Active := true                 //+2
           else
             Series.Active := false;

       if FGraph[j+3]='1' then
         Series.ShowInLegend := true                 //+3
           else
             Series.ShowInLegend := false;

       if FGraph[j+4]='1' then                       //+4
          Series.Marks.Visible := true
             else
               Series.Marks.Visible := false;

       Series.Marks.Arrow.Color := clBlack;

       if Pos('_&_&_&_&_Comments',Series.Title)>0 then
       begin
           Series.Marks.Arrow.Color := clGray;
           Series.Marks.Frame.Visible := false;  
       end;

       _Col := RGB(StrToInt(FGraph[j+5]),StrToInt(FGraph[j+6]),StrToInt(FGraph[j+7]));
       Series.SeriesColor := _Col;

       if Series is TBarSeries then
       Begin
          TBarSeries(Series).BarPen.Width := StrToInt(FGraph[j+8]);     //+8

          if FGraph[j+9]='1' then                                      //+9
            TBarSeries(Series).BarPen.Visible := true
             else
               TBarSeries(Series).BarPen.Visible := false;
            i := 10;
       End;

       if Series is TLineSeries then
       Begin
           if FGraph[j+8]='1' then                                     // +8
             TLineSeries(Series).Pointer.Visible := true
                else
                  TLineSeries(Series).Pointer.Visible := false;

           if FGraph[j+9]='1' then                                     // +9
              TLineSeries(Series).Stairs := true
                else
                  TLineSeries(Series).Stairs :=  false;

            case StrToInt(FGraph[j+10]) of                            //+10
              0:TLineSeries(Series).Pointer.Style := psRectangle;
              1:TLineSeries(Series).Pointer.Style := psCircle;
              2:TLineSeries(Series).Pointer.Style := psTriangle;
              3:TLineSeries(Series).Pointer.Style := psDownTriangle;
              4:TLineSeries(Series).Pointer.Style := psCross;
              5:TLineSeries(Series).Pointer.Style := psDiagCross;
              6:TLineSeries(Series).Pointer.Style := psStar;
              7:TLineSeries(Series).Pointer.Style := psDiamond;
              8:TLineSeries(Series).Pointer.Style := psSmallDot;
            end;

            TLineSeries(Series).Pointer.VertSize := StrToInt(FGraph[j+11]);   //+11
            TLineSeries(Series).Pointer.HorizSize := TLineSeries(Series).Pointer.VertSize;

            if FGraph[j+12]='1' then                                     // +12
              TLineSeries(Series).Pointer.Pen.Visible := true
                else
                  TLineSeries(Series).Pointer.Pen.Visible :=  false;

            TLineSeries(Series).LinePen.Width := StrToInt(FGraph[j+13]);   //+13
            i := 14;
          End;

         if Series is TAreaSeries then
         Begin
           if FGraph[j+8]='1' then                                     // +8
             TAreaSeries(Series).Pointer.Visible := true
                else
                  TAreaSeries(Series).Pointer.Visible := false;

           TAreaSeries(Series).Pointer.VertSize := StrToInt(FGraph[j+9]); //+9
           TAreaSeries(Series).Pointer.HorizSize := TAreaSeries(Series).Pointer.VertSize;

           if FGraph[j+10]='1' then                                     // +10
             TAreaSeries(Series).Pointer.Pen.Visible := true
                else
                  TAreaSeries(Series).Pointer.Pen.Visible := false;

           if FGraph[j+11]='1' then                                     // +11
             TAreaSeries(Series).Stairs := true
                else
                  TAreaSeries(Series).Stairs  := false;

             case StrToInt(FGraph[j+12]) of                            //+12
              0:TAreaSeries(Series).Pointer.Style := psRectangle;
              1:TAreaSeries(Series).Pointer.Style := psCircle;
              2:TAreaSeries(Series).Pointer.Style := psTriangle;
              3:TAreaSeries(Series).Pointer.Style := psDownTriangle;
              4:TAreaSeries(Series).Pointer.Style := psCross;
              5:TAreaSeries(Series).Pointer.Style := psDiagCross;
              6:TAreaSeries(Series).Pointer.Style := psStar;
              7:TAreaSeries(Series).Pointer.Style := psDiamond;
              8:TAreaSeries(Series).Pointer.Style := psSmallDot;
            end;

           TAreaSeries(Series).AreaLinesPen.Width := StrToInt(FGraph[j+13]); //+13

           if FGraph[j+14]='1' then                                     // +14
             TAreaSeries(Series).AreaLinesPen.Visible := true
                else
                  TAreaSeries(Series).AreaLinesPen.Visible  := false;
            i := 15;
          End;

          if Series is TPointSeries then
          Begin
             if FGraph[j+8]='1' then                                     // +8
               TPointSeries(Series).Pointer.Visible := true
                else
                  TPointSeries(Series).Pointer.Visible := false;

             TPointSeries(Series).Pointer.VertSize := StrToInt(FGraph[j+9]); //9
             TPointSeries(Series).Pointer.HorizSize := TPointSeries(Series).Pointer.VertSize;

             if FGraph[j+10]='1' then                                     // +10
               TPointSeries(Series).Pointer.Pen.Visible := true
                else
                  TPointSeries(Series).Pointer.Pen.Visible:= false;

             case StrToInt(FGraph[j+11]) of                            //+11
              0:TPointSeries(Series).Pointer.Style := psRectangle;
              1:TPointSeries(Series).Pointer.Style :=psCircle;
              2:TPointSeries(Series).Pointer.Style :=psTriangle;
              3:TPointSeries(Series).Pointer.Style :=psDownTriangle;
              4:TPointSeries(Series).Pointer.Style :=psCross;
              5:TPointSeries(Series).Pointer.Style :=psDiagCross;
              6:TPointSeries(Series).Pointer.Style :=psStar;
              7:TPointSeries(Series).Pointer.Style :=psDiamond;
              8:TPointSeries(Series).Pointer.Style :=psSmallDot;
            end;
             i := 12;

             if FGraph[j+12] <>'//' then
             begin
               i:=17;
              try
                Series.Marks.Font.Size := StrToInt(FGraph[j+12]);
                Series.Marks.ArrowLength := StrToInt(FGraph[j+13]);
                Series.Marks.BackColor := RGB(StrToInt(FGraph[j+14]),
                                              StrToInt(FGraph[j+15]),
                                              StrToInt(FGraph[j+16]));
              except
              end;
             end;
          End;

       repeat  // 2b. Serie Data
         inc(i);
         Progressbar.Position := trunc(100*(i+j)/FGraph.Count);
         SyncPB;
         if FGraph[i+j]<>'' then
           if FGraph[i+j]<>'//' then
              Begin
               // ShowMessage(FGraph[i+j] );
                _X := StrToFloat2(GetCols(FGraph[i+j],0,1));
                _Y := StrToFloat2(GetCols(FGraph[i+j],1,1));
                _M := GetCols(FGraph[i+j],3,1);

                if GetCols(FGraph[i+j],2,1)<>'0' then
                  Series.AddXY(_X,_Y,_M)
                    else  Series.AddNullXY(_X,_Y,_M);
              End;
         ///DATAAAA              #$9
       until (FGraph[i+j]='//')or(i+j>=FGraph.Count-2);
       j:= j+i+1;

       /// Добавить поиск Parentа и добавление в лист Graphs


       if Pos('_&',Series.Title)=0 then
       begin
        Graphs.AddItem(Series.Title,nil);
        Graphs.Checked[Graphs.Items.Count-1]:=Series.Active;
       end;

     UNTIL j>=FGraph.Count-2;


  Except
    MessageDlg('Невозможно загрузить графики из указанного файла',mtError,[mbOk],0);
  End;

  if Chart.BottomAxis.IsDateTime = Chart.LeftAxis.IsDateTime then
    DoSquare.Enabled:=true;

  ProgressBar.Visible := false;
  RSpacer.itemIndex:=k;
  AddCosmetics;


  if not Autolim.Checked then
  begin
     XBegin2.OnChange(nil);
     Hold2.OnClick(nil);
  end;

 //  CommFont.OnChange(sender);
 // CommArrow.OnChange(sender);
 //  CommColor.OnChange(sender);
  Secondfont.OnChange(nil);

  FGraph.Destroy;
  isLoading := False;
  for i:=0 to Chart.SeriesCount-1 do
        if (Chart.Series[i].ShowInLegend) and (Chart.Series[i].Active) then
           Form2a.GrList.Items.Add(Chart.Series[i].Title);

  if ALim2.Checked then
    Xbegin2.OnChange(nil);
end;

procedure TForm1.OpenDialog3CanClose(Sender: TObject;
  var CanClose: Boolean);
{var
    FName :string;
    i, j :integer;
    k : byte;
    Xdt, Ydt :Boolean;
    _Col :TColor;
    Series :TChartSeries;
    FGraph :TStringList;
    _X, _Y:Double;
    _M : String;  }
begin

  LoadChart(OpenDialog3.FileName);

  {isLoading := True;

  FName := OpenDialog3.FileName;

  FGraph := TStringList.Create;
  k:= RSpacer.itemIndex;
  RSpacer.itemIndex:=1;
  ProgressBar.Visible := true;
  Progressbar.Position := 0;

  PickGraph.Checked := false;
  PickGraph2.Checked := false;

  Chart.leftAxis.Automatic:=true;
  Chart.BottomAxis.Automatic:=true;

  Try
    FGraph.LoadFromFile(FName);

    //1 Header
    if (Chart.Title.Text.Count=0) then
      Chart.Title.Text.Add('');

    if (Chart.Title.Text[0]<>FGraph[0]) then
       if MessageDlg('Заменить заголовок графиков на подгружаемый?',
          mtConfirmation,[mbYes, mbNo],0)=6 then
       Begin
         Chart.Title.Text.Clear;
           if FGraph[0]<>'' then
             Chart.Title.Text.Add(FGraph[0]);

         TittleBox.Caption := FGraph[0];
       End;

    if (Chart.Title.Text.Count>0) then
      if  Chart.Title.Text[0]='' then
        Chart.Title.Text.Clear;

    if Chart.Title.Text.Count>0 then
       Caption := Chart.Title.Text[0]
         else
           Caption := Application.Title;

     if (Chart.BottomAxis.Title.Caption<>FGraph[1])or
        (Chart.LeftAxis.Title.Caption<>FGraph[2]) then
         if MessageDlg('Заменить заголовки осей на подгружаемые?',
              mtConfirmation,[mbYes, mbNo],0)=6 then
         Begin
           Xname.Caption := FGraph[1];
           Chart.BottomAxis.Title.Caption := Xname.Caption;
           Yname.Caption := FGraph[2];
           Chart.LeftAxis.Title.Caption := Yname.Caption;
         End;


        if MessageDlg('Применить подгружаемые настройки легенды?',
            mtConfirmation,[mbYes, mbNo],0)=6 then
            Begin
              if FGraph[3]='1' then
                Chart.Legend.Visible := true
                  else
                    Chart.Legend.Visible := false;
              j := StrToInt(FGraph[4]);
              Case j of
                1: Chart.Legend.Alignment := laRight;
                2: Chart.Legend.Alignment := laLeft;
                3: Chart.Legend.Alignment := laBottom;
                4: Chart.Legend.Alignment := laTop;
              end;

            End;

            XDt := false;
            YDt := false;

            if  FGraph[5]='1' then
                    XDt :=true;
            if  FGraph[6]='1' then
                    YDt :=true;

            if ((Chart.BottomAxis.IsDateTime)and(not Xdt)) or
               ((Chart.BottomAxis.IsDateTime = false)and(Xdt))then
            Begin
               if MessageDlg('Несовместимые форматы осей X! Продолжить?',
                   mtError,[mbYes, mbNo],0)<>6 then
              begin
                XDt := not(XDt);
                MessageDlg('Невозможно загрузить графики из указанного файла',mtError,[mbOk],0);
                FGraph.Destroy;
                Exit;
              end
            End;


            if ((Chart.LeftAxis.IsDateTime)and(not Ydt)) or
               ((Chart.LeftAxis.IsDateTime= false )and(Ydt))then
            Begin
               if MessageDlg('Несовместимые форматы осей Y! Продолжить?',
                   mtError,[mbYes, mbNo],0)<>6 then
               begin
                YDt := not(YDt);
                MessageDlg('Невозможно загрузить графики из указанного файла',mtError,[mbOk],0);
                FGraph.Destroy;
                Exit;
               end
            End;

        if FGraph[7]='_&_&_&_&_&_V07ADDS' then
        begin
          if MessageDlg('Применить подгружаемые настройки оформления?',
            mtConfirmation,[mbYes, mbNo],0)=6 then
            begin
               For i:= 0 to Mainfont.Items.Count-1 do
                if FGraph[12] = Mainfont.Items[i] then
                begin
                  Mainfont.ItemIndex := i;
                  break;
                end;

               For i:= 0 to Mainfont.Items.Count-1 do
                if FGraph[13] = Secondfont.Items[i] then
                begin
                  Secondfont.ItemIndex := i;
                  break;
                end;

                AxisHeaderSize.Caption := FGraph[9];
                AxisTickSize.Caption := FGraph[10];
                LegFSize.Value := StrToInt(FGraph[11]);
                HeaderSize.Caption := FGraph[8];

                Mainfont.OnChange(Sender);
                Secondfont.OnChange(Sender);
                refreshfont;
          end;


          ShowComms.Checked := (FGraph[14] = '1');
          CommFont.Value := StrToInt(FGraph[15]);
          CommArrow.Value := StrToInt(FGraph[16]);

          CommColor.Selected := RGB(StrToInt(FGraph[17]),
                                    StrToInt(FGraph[18]),StrToInt(FGraph[19]));
          Form3.CommColor.Selected := CommColor.Selected;
          j := 20;


          if FGraph[20]='_&_&_&_&_&_V075ADDS' then
          begin
            j := 26;

            if MessageDlg('Применить границы рабочей области подгружаемого графика?',
                mtConfirmation,[mbYes, mbNo],0)=6 then
            begin
               XBegin2.Text:= DS(FGraph[21]);
               YBegin2.Text := DS(FGraph[22]);
               XEnd2.Text := DS(FGraph[23]);
               YEnd2.Text := DS(FGraph[24]);

               XBegin.Caption := DS(FGraph[21]);
               YBegin.Caption := DS(FGraph[22]);
               XEnd.Caption := DS(FGraph[23]);
               YEnd.Caption := DS(FGraph[24]);

               AutoLim.Checked := (FGraph[25]='1');
               Alim2.Checked := not Autolim.Checked;
               Hold2.Checked := not AutoLim.Checked;

            end;

          end;

          if FGraph[26]='_&_&_&_&_&_V094ADDS' then    // 27
          begin
            j := 29;

               IncX.Caption:= DS(FGraph[27]);
               IncY.Caption := DS(FGraph[28]);

               IncX2.Text:= DS(FGraph[27]);
               IncY2.Text := DS(FGraph[28]);

          end;

          if FGraph[29]='_&_&_&_&_&_V096ADDS' then    // 27
          begin

            j := 33;
            if DS(FGraph[32]) = '1' then
               if MessageDlg('Закрепить размеры окна по настройкам загружаемого графика?',
                   mtConfirmation,[mbYes, mbNo],0)=6 then
            begin
                 WSS.Checked := DS(FGraph[32]) = '1';
                 WSX.Text:= DS(FGraph[30]);
                 WSY.Text := DS(FGraph[31]);
            end;
          end;
        end
          else
            j := 7;  ////////27-04



    /// 2. Series   /// From j to EOF

     i := 0;

     REPEAT   /// 2a. Serie Header

       Case StrToInt(FGraph[j+1]) of                 // j+1
        1: Series:=TLineSeries.Create(Chart);
        2: Begin
            Series:=TPointSeries.Create(Chart);
            TPointSeries(Series).Pointer.VertSize := 3;
            TPointSeries(Series).Pointer.HorizSize := 3;
            TPointSeries(Series).Pointer.Style := psCircle;
           end;
        3: Series:=TAreaSeries.Create(Chart);
        0: Series:=TBarSeries.Create(Chart);
       end;

       Series.Title:=FGraph[j];                    // j+0

       if XDt then
          Series.XValues.DateTime := true
            else
             Series.XValues.DateTime := false;

       if YDt then
          Series.YValues.DateTime := true
            else
             Series.YValues.DateTime := false;

       while FindChart(Series.Title)<>-1 do
         Series.Title := '_'+Series.Title;

       Series.ParentChart:=Chart;

       if FGraph[j+2]='1' then
          Series.Active := true                 //+2
           else
             Series.Active := false;

       if FGraph[j+3]='1' then
         Series.ShowInLegend := true                 //+3
           else
             Series.ShowInLegend := false;

       if FGraph[j+4]='1' then                       //+4
          Series.Marks.Visible := true
             else
               Series.Marks.Visible := false;

       Series.Marks.Arrow.Color := clBlack;

       if Pos('_&_&_&_&_Comments',Series.Title)>0 then
       begin
           Series.Marks.Arrow.Color := clGray;
           Series.Marks.Frame.Visible := false;  
       end;

       _Col := RGB(StrToInt(FGraph[j+5]),StrToInt(FGraph[j+6]),StrToInt(FGraph[j+7]));
       Series.SeriesColor := _Col;

       if Series is TBarSeries then
       Begin
          TBarSeries(Series).BarPen.Width := StrToInt(FGraph[j+8]);     //+8

          if FGraph[j+9]='1' then                                      //+9
            TBarSeries(Series).BarPen.Visible := true
             else
               TBarSeries(Series).BarPen.Visible := false;
            i := 10;
       End;

       if Series is TLineSeries then
       Begin
           if FGraph[j+8]='1' then                                     // +8
             TLineSeries(Series).Pointer.Visible := true
                else
                  TLineSeries(Series).Pointer.Visible := false;

           if FGraph[j+9]='1' then                                     // +9
              TLineSeries(Series).Stairs := true
                else
                  TLineSeries(Series).Stairs :=  false;

            case StrToInt(FGraph[j+10]) of                            //+10
              0:TLineSeries(Series).Pointer.Style := psRectangle;
              1:TLineSeries(Series).Pointer.Style := psCircle;
              2:TLineSeries(Series).Pointer.Style := psTriangle;
              3:TLineSeries(Series).Pointer.Style := psDownTriangle;
              4:TLineSeries(Series).Pointer.Style := psCross;
              5:TLineSeries(Series).Pointer.Style := psDiagCross;
              6:TLineSeries(Series).Pointer.Style := psStar;
              7:TLineSeries(Series).Pointer.Style := psDiamond;
              8:TLineSeries(Series).Pointer.Style := psSmallDot;
            end;

            TLineSeries(Series).Pointer.VertSize := StrToInt(FGraph[j+11]);   //+11
            TLineSeries(Series).Pointer.HorizSize := TLineSeries(Series).Pointer.VertSize;

            if FGraph[j+12]='1' then                                     // +12
              TLineSeries(Series).Pointer.Pen.Visible := true
                else
                  TLineSeries(Series).Pointer.Pen.Visible :=  false;

            TLineSeries(Series).LinePen.Width := StrToInt(FGraph[j+13]);   //+13
            i := 14;
          End;

         if Series is TAreaSeries then
         Begin
           if FGraph[j+8]='1' then                                     // +8
             TAreaSeries(Series).Pointer.Visible := true
                else
                  TAreaSeries(Series).Pointer.Visible := false;

           TAreaSeries(Series).Pointer.VertSize := StrToInt(FGraph[j+9]); //+9
           TAreaSeries(Series).Pointer.HorizSize := TAreaSeries(Series).Pointer.VertSize;

           if FGraph[j+10]='1' then                                     // +10
             TAreaSeries(Series).Pointer.Pen.Visible := true
                else
                  TAreaSeries(Series).Pointer.Pen.Visible := false;

           if FGraph[j+11]='1' then                                     // +11
             TAreaSeries(Series).Stairs := true
                else
                  TAreaSeries(Series).Stairs  := false;

             case StrToInt(FGraph[j+12]) of                            //+12
              0:TAreaSeries(Series).Pointer.Style := psRectangle;
              1:TAreaSeries(Series).Pointer.Style := psCircle;
              2:TAreaSeries(Series).Pointer.Style := psTriangle;
              3:TAreaSeries(Series).Pointer.Style := psDownTriangle;
              4:TAreaSeries(Series).Pointer.Style := psCross;
              5:TAreaSeries(Series).Pointer.Style := psDiagCross;
              6:TAreaSeries(Series).Pointer.Style := psStar;
              7:TAreaSeries(Series).Pointer.Style := psDiamond;
              8:TAreaSeries(Series).Pointer.Style := psSmallDot;
            end;

           TAreaSeries(Series).AreaLinesPen.Width := StrToInt(FGraph[j+13]); //+13

           if FGraph[j+14]='1' then                                     // +14
             TAreaSeries(Series).AreaLinesPen.Visible := true
                else
                  TAreaSeries(Series).AreaLinesPen.Visible  := false;
            i := 15;
          End;

          if Series is TPointSeries then
          Begin
             if FGraph[j+8]='1' then                                     // +8
               TPointSeries(Series).Pointer.Visible := true
                else
                  TPointSeries(Series).Pointer.Visible := false;

             TPointSeries(Series).Pointer.VertSize := StrToInt(FGraph[j+9]); //9
             TPointSeries(Series).Pointer.HorizSize := TPointSeries(Series).Pointer.VertSize;

             if FGraph[j+10]='1' then                                     // +10
               TPointSeries(Series).Pointer.Pen.Visible := true
                else
                  TPointSeries(Series).Pointer.Pen.Visible:= false;

             case StrToInt(FGraph[j+11]) of                            //+11
              0:TPointSeries(Series).Pointer.Style := psRectangle;
              1:TPointSeries(Series).Pointer.Style :=psCircle;
              2:TPointSeries(Series).Pointer.Style :=psTriangle;
              3:TPointSeries(Series).Pointer.Style :=psDownTriangle;
              4:TPointSeries(Series).Pointer.Style :=psCross;
              5:TPointSeries(Series).Pointer.Style :=psDiagCross;
              6:TPointSeries(Series).Pointer.Style :=psStar;
              7:TPointSeries(Series).Pointer.Style :=psDiamond;
              8:TPointSeries(Series).Pointer.Style :=psSmallDot;
            end;
             i := 12;

             if FGraph[j+12] <>'//' then
             begin
               i:=17;
              try
                Series.Marks.Font.Size := StrToInt(FGraph[j+12]);
                Series.Marks.ArrowLength := StrToInt(FGraph[j+13]);
                Series.Marks.BackColor := RGB(StrToInt(FGraph[j+14]),
                                              StrToInt(FGraph[j+15]),
                                              StrToInt(FGraph[j+16]));
              except
              end;
             end;
          End;

       repeat  // 2b. Serie Data
         inc(i);
         Progressbar.Position := trunc(100*(i+j)/FGraph.Count);
         if FGraph[i+j]<>'' then
           if FGraph[i+j]<>'//' then
              Begin
               // ShowMessage(FGraph[i+j] );
                _X := StrToFloat2(GetCols(FGraph[i+j],0,1));
                _Y := StrToFloat2(GetCols(FGraph[i+j],1,1));
                _M := GetCols(FGraph[i+j],3,1);

                if GetCols(FGraph[i+j],2,1)<>'0' then
                  Series.AddXY(_X,_Y,_M)
                    else  Series.AddNullXY(_X,_Y,_M);
              End;
         ///DATAAAA              #$9
       until (FGraph[i+j]='//')or(i+j>=FGraph.Count-2);
       j:= j+i+1;

       /// Добавить поиск Parentа и добавление в лист Graphs


       if Pos('_&',Series.Title)=0 then
       begin
        Graphs.AddItem(Series.Title,nil);
        Graphs.Checked[Graphs.Items.Count-1]:=Series.Active;
       end;

     UNTIL j>=FGraph.Count-2;


  Except
    MessageDlg('Невозможно загрузить графики из указанного файла',mtError,[mbOk],0);
  End;

  if Chart.BottomAxis.IsDateTime = Chart.LeftAxis.IsDateTime then
    DoSquare.Enabled:=true;

  ProgressBar.Visible := false;
  RSpacer.itemIndex:=k;
  AddCosmetics;


  if not Autolim.Checked then
  begin
     XBegin2.OnChange(sender);
     Hold2.OnClick(sender);
  end;

 //  CommFont.OnChange(sender);
 // CommArrow.OnChange(sender);
 //  CommColor.OnChange(sender);
  Secondfont.OnChange(Sender);

  FGraph.Destroy;
  isLoading := False;
  for i:=0 to Chart.SeriesCount-1 do
        if (Chart.Series[i].ShowInLegend) and (Chart.Series[i].Active) then
           Form2a.GrList.Items.Add(Chart.Series[i].Title);

  if ALim2.Checked then
    Xbegin2.OnChange(sender);
    }
end;

procedure TForm1.AddCosmetics;
var Series :TChartSeries;
begin
  //// КОСМЕТИЧЕСКИЙ СЛОЙ

  if FindChart('_&_&_&_&_&')=-1 then
  Begin
       Series:=TLineSeries.Create(Chart);

       Series.ParentChart:=Chart;
       Series.Title:='_&_&_&_&_&';
       Series.Marks.Visible:=false;

       Series.SeriesColor:= clGray;
       TLineSeries(Series).Pointer.Visible:=true;
       TLineSeries(Series).Pointer.VertSize := 8;
       TLineSeries(Series).Pointer.HorizSize := 8;
       TLineSeries(Series).Pointer.Style := psCross;
       if Xformat.ItemIndex>1 then
          Series.XValues.Datetime:=true;
       if Yformat.ItemIndex>1 then
          Series.YValues.Datetime:=true;

       Series.ShowInLegend:= false;
   End;
end;

procedure TForm1.LineLMBClick(Sender: TObject);
begin
  if Panel10.Visible then
    Chart.AllowZoom := not LineLMB.Checked
end;

procedure TForm1.LineLMBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Panel10.Visible then
    Chart.AllowZoom := not LineLMB.Checked
end;

procedure TForm1.BL7DblClick(Sender: TObject);
begin
  if BP7.Width = BPW[7] then
 Begin
    BP7.Width := 10;
    BL7.Visible := false;
    BH7.Caption := '+';
 end
   else
   begin
     BP7.Width := BPW[7];
     BL7.Visible := true;
     BH7.Caption := '';
   end;
end;

procedure TForm1.DoGrey;
begin
    NoWrite.Font.Color := clSilver;

    Shape24.Brush.Color := $00919191;
    Shape25.Brush.Color := $00919191;
    Shape26.Brush.Color := $00919191;
    Shape27.Brush.Color := clGray;
    Shape28.Brush.Color := clGray;
    Shape29.Brush.Color := clGray;

    BP1.Color := $00919191;
    BP2.Color := $00919191;
    BP3.Color := $00919191;
    BP4.Color := ClGray;
    BP5.Color := ClGray;        
    BP6.Color := ClGray;        
    BP7.Color := clGray;        

    BH1.Color := $00919191;
    BH2.Color := $00919191;
    BH3.Color := $00919191;
    BH4.Color := ClGray;
    BH5.Color := ClGray;
    BH6.Color := ClGray;
    BH7.Color := clGray;

    if (BP1.Visible=false)and(BP5.Visible) then
    begin
       Shape29.Brush.Color := $00919191;
       BP6.Color := $00919191;
       BH6.Color := $00919191;
    end;

    LineMMB.Color := clGray;
    LineLMB.Color := clGray;
    PickGraph2.Color := clGray;
    LineMMB.Font.Color := ClWhite;
    LineLMB.Font.Color := ClWhite;
    PickGraph2.Font.Color := ClWhite;

    KeepP3.Color := Shape29.Brush.Color;

    Panel3.Color := $006C6C6C;
    _shape.Brush.color := $006C6C6C;
    _Label.color := $006C6C6C;

    Panel1.Color := clBtnFace;
    Panel5.Color := clBtnFace;
    Panel2.Color := clBtnFace;
    Panel10.Color := clBtnFace;
    Panel8.Color := clBtnFace;
    Panel12.Color := clBtnFace;
    Panel11.Color := clBtnFace;
    Panel13.Color := clBtnFace;

    BP3a.Color := clGray;

    Shape1.Brush.Style := bsClear;
    Shape2.Brush.Style := bsClear;
    Shape3.Brush.Style := bsClear;
    Shape4.Brush.Style := bsClear;
    Shape5.Brush.Style := bsClear;
    Shape6.Brush.Style := bsClear;
    Shape7.Brush.Style := bsClear;
    Shape8.Brush.Style := bsClear;
    Shape9.Brush.Style := bsClear;
    Shape10.Brush.Style := bsClear;
    Shape11.Brush.Style := bsClear;
    Shape12.Brush.Style := bsClear;
    Shape13.Brush.Style := bsClear;
    Shape14.Brush.Style := bsClear;
    Shape15.Brush.Style := bsClear;
    Shape16.Brush.Style := bsClear;
    Shape17.Brush.Style := bsClear;
    Shape18.Brush.Style := bsClear;
    Shape19.Brush.Style := bsClear;
    Shape32.Brush.Style := bsClear;    // 18
    Shape31.Brush.Style := bsClear;
    Shape22.Brush.Style := bsClear;
    Shape23.Brush.Style := bsClear;

    Shape30.Brush.Style := bsClear;
    Shape31.Brush.Style := bsClear;
    Shape33.Brush.Style := bsClear;

    Shape42.Brush.Style := bsClear;

    Shape34.Brush.Style := bsClear;
    Shape35.Brush.Style := bsClear;
 //   Shape36.Brush.Style := bsClear;
    Shape37.Brush.Style := bsClear;
    Shape38.Brush.Style := bsClear;
    Shape39.Brush.Style := bsClear;

    Shape40.Brush.Style := bsClear;
    Shape41.Brush.Style := bsClear;
    
    Shape20.Brush.Color := clBtnFace;
    Shape21.Brush.Color := clBtnFace;
    Shape36.Brush.Color := clBtnFace;
    Label33.Color := clBtnFace;

    Shape19.Pen.Style := psSolid;
    Shape32.Pen.Style := psSolid;    // 18
    Shape22.Pen.Style := psSolid;
    Shape23.Pen.Style := psSolid;

    Shape1.Pen.Style := psSolid;
    Shape2.Pen.Style := psSolid;
    Shape3.Pen.Style := psSolid;
    Shape4.Pen.Style := psSolid;
    Shape5.Pen.Style := psSolid;
    Shape6.Pen.Style := psSolid;
    Shape7.Pen.Style := psSolid;
    Shape8.Pen.Style := psSolid;
    Shape9.Pen.Style := psSolid;
    Shape10.Pen.Style := psSolid;
    Shape14.Pen.Style := psSolid;
    Shape12.Pen.Style := psSolid;
    Shape13.Pen.Style := psSolid;
    Shape33.Pen.Style := psSolid;
    
    Shape35.Pen.Style := psSolid;
    Shape38.Pen.Style := psSolid;
    Shape37.Pen.Style := psSolid;
    Shape39.Pen.Style := psSolid;
    Shape40.Pen.Style := psSolid;
    Shape41.Pen.Style := psSolid;
    
    Panel8.ParentColor := true;
end;

procedure TForm1.Settings;
var i: integer;
    S: TStringList;
    p :string;
begin
  S := TStringList.Create;
  if fileexists('Graph.par') then
  try
    S.LoadFromFile('Graph.par');
    i:=0;
    repeat
      p:=GetCols(S[0],i,1);



      if p='-menu' then
      begin
         KeepP3.Checked := true;
         Panel3.Height:=50;
      end;

      if p='-max' then
      begin
         WindowState := wsMaximized;

        // form1.Resizing(WindowState);
      end;

      if ParamStr(i)='-sq' then
         DoSq := true;

      if ParamStr(i)='-pro' then
         DoProfi := true;

      if p='-readonly' then
              begin
                BP1.Visible := false;
                BP5.Visible := false;
                ShowTextFile.Visible := false;
                ShowSettings.Visible := false;
                NoWrite.Visible := true;
              end;

      if p='-readonlyplus' then
              begin
                BP1.Visible := false;
               // BP5.Visible := false;
                ShowTextFile.Visible := false;
                ShowSettings.Visible := false;
                NoWrite.Visible := true;
              end;

      if p='-comments' then
        begin
          DoComz := true;
        end;

      if p='-cg' then
         DoComGraphs := true;


      if p='-gray' then
      begin
        DoGrey;
        Panel8.ParentColor:=true;
      end;

     if p='-thick' then
        Dothick := true;


        
    //   Repaint;

         { Panel1.Visible := true;
          Panel2.Visible := true;
          Panel3.Height := 50;
          if Panel2.Height = Form1.ClientHeight-2 then
             Panel2.Height := Form1.ClientHeight-50;
          SetCursorPos(Left+Width div 2,Top+25);    }
       
      {if p = '-gray' then
          DoGrey;
      if p = '-menu' then
      begin
         KeepP3.Checked := true;
         Panel3.Height:=50;
      end;

      if p = '-max' then
         WindowState:=wsMaximized;

      if p = '-n' then
         Panel5.Visible := false;

      if p = '-readonly' then
      begin
        BP1.Visible := false;
        BP5.Visible := false;
        ShowTextFile.Visible := false;
        ShowSettings.Visible := false;
        NoWrite.Visible := true;
      end; }

      inc(i);
    until (p='')or(i>15);
  except
  end;
  S.Destroy;

  Repaint;
end;

procedure TForm1.FormResize(Sender: TObject);
begin

  {Form2.Top := Top+5;
  Form2.Left := Left+Width-Form2.Width-125; }
  if WSS.Checked then
    WSX.OnChange(Sender)
     else
      TRY
        WSX.Value := Width;
        WSY.Value := Height;
      EXCEPT
      END;
end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 { Form2.Top := Top+5;
  Form2.Left := Left+Width-Form2.Width-125;  }
end;

procedure TForm1.HeaderSizeClick(Sender: TObject);
begin
//
end;

procedure TForm1.CommentsClick(Sender: TObject);
var i, GN: integer;
   NeedNew :Boolean;
begin
 Panel11.Visible:= not (Panel11.Visible);
 if  Panel10.Visible then
   Panel10.Visible:= not (Panel11.Visible);

 PickGraph.Checked := false;
 PickGraph2.Checked := false;

 GN:=FindChart('_&_&_&_&_&');
 if GN<>-1 then
    Chart.Series[GN].Clear
      else AddCosmetics;


 if Panel11.Visible = true then
 begin

    CommentList.Clear;

    neednew := true;
    for GN:= 0 to Form1.Chart.SeriesCount-1 do
    if Pos('_&_&_&_&_Comments',Form1.Chart.Series[GN].Title)>0 then
      begin
        neednew := false;
        break
      end;

    if NeedNew then
      AddCommSerie
      else
        Begin
          RefreshCommList;

          if CommentList.Items.Count>0 then
            CommentList.OnClick(sender);

          // CommArrow.Value := (TPointSeries(Chart[GN]).Marks.ArrowLength);//(CommentList.ItemIndex);
          // CommFont.Value := (TPointSeries(Chart[GN]).Marks.Font.Size);
        end;

   Chart.AllowZoom := true;

   if CommentList.Items.Count>0 then
   begin
     CommentList.ItemIndex:=0;
     Panel12.Visible := true;
   end
     else
       CommentList.ItemIndex:=-1;

 end;

  Chart.AllowZoom := not Panel11.Visible;
end;

procedure TForm1.HidePan11Click(Sender: TObject);
var GN:Integer;
begin
 Panel11.Visible := false;
 Chart.AllowZoom := not Hold2.Checked;
 
 GN:=FindChart('_&_&_&_&_&');
 if GN<>-1 then
    Chart.Series[GN].Clear;
 
end;

procedure TForm1.CommentListClick(Sender: TObject);
var GN, i, j :Integer;
  _ps: TSeriesPointerStyle;
begin
  for i :=0 to CommentList.Items.Count-1 do
  Begin
    GN := FindChart(CList2[i]);
    Chart[GN].Marks.Frame.Visible := false;
  End;

  if CommentList.ItemIndex>-1 then
  Begin
    Panel12.Visible := true;
    GN :=FindChart(CList2[CommentList.ItemIndex]);
    if GN<>-1 then
    begin
        j:=0;
        For i:=0 to CommentList.ItemIndex-1 do
          if CList2[i]= CList2[CommentList.ItemIndex] then
             inc(j);

         CommText.Text := TPointSeries(Chart[GN]).ValueMarkText[j];
         CommX.Text := FloatToStr(TPointSeries(Chart[GN]).XValues[j]);
         CommY.Text := FloatToStr(TPointSeries(Chart[GN]).YValues[j]);
         CommArrow.Value := (TPointSeries(Chart[GN]).Marks.ArrowLength);//(CommentList.ItemIndex);
         CommFont.Value := (TPointSeries(Chart[GN]).Marks.Font.Size);
         CommColor.Selected := TPointSeries(Chart[GN]).Marks.BackColor;

         HintColorBox.Selected := TPointSeries(Chart[GN]).SeriesColor;
         HintDotSize.Value := TPointSeries(Chart[GN]).Pointer.VertSize;

         _ps := TPointSeries(Chart.Series[GN]).Pointer.style;

         Case _ps of
          psRectangle: HintDotstyle :=0;
          psCircle: HintDotstyle :=1;
          psTriangle: HintDotstyle :=2;
          psDownTriangle: HintDotstyle :=3;
          psCross: HintDotstyle :=4;
          psDiagCross: HintDotstyle :=5;
          psStar: HintDotstyle :=6;
          psDiamond: HintDotstyle :=7;
          psSmallDot: HintDotstyle :=8;
         end;

         imageDotHint.Canvas.Brush.Color := imageDot.Canvas.Pixels[0,0];
         imageDotHint.Canvas.FillRect(Rect(0,0,imageDotHint.Width,ImageDotHint.Height));
         ImageList.Draw(ImageDotHint.Canvas,0,0,HintDotStyle,true);


         Chart[GN].Marks.Frame.Visible := true;
    end;
  End;
end;

procedure TForm1.ShowCommsClick(Sender: TObject);
var GN :Integer;
begin
    for GN:= 0 to Form1.Chart.SeriesCount-1 do
     if Pos('_&_&_&_&_Comments',Form1.Chart.Series[GN].Title)>0 then
         TPointSeries(Chart[GN]).Active := ShowComms.Checked;
end;

procedure TForm1.ShowCommsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var GN :Integer;
begin
   for GN:= 0 to Form1.Chart.SeriesCount-1 do
     if Pos('_&_&_&_&_Comments',Form1.Chart.Series[GN].Title)>0 then
         TPointSeries(Chart[GN]).Active := ShowComms.Checked;
end;

procedure TForm1.DeleteCommClick(Sender: TObject);
var GN, i, j, n :Integer;
begin
  n := CommentList.ItemIndex-1;
  if CommentList.ItemIndex>-1 then
  Begin
    Panel12.Visible := true;
    GN :=FindChart(CList2[CommentList.ItemIndex]);
    if GN<>-1 then
    begin
        j:=0;
        For i:=0 to CommentList.ItemIndex-1 do
          if CList2[i]= CList2[CommentList.ItemIndex] then
             inc(j);

         Chart[GN].Delete(j);
    end;
  End;

  RefreshCommList;
  if n>=0 then
     CommentList.ItemIndex := n;
  CommentList.OnClick(sender);

{  i :=
  if CommentList.ItemIndex>-1 then
  Begin
    Panel12.Visible := true;
    for GN:= 0 to Form1.Chart.SeriesCount-1 do
     if Pos('_&_&_&_&_Comments',Form1.Chart.Series[GN].Title)>0 then
      TPointSeries(Chart[GN]).Delete(CommentList.ItemIndex);
  End;
  RefreshCommList;
  if i>=0 then
     CommentList.ItemIndex := i;
  CommentList.OnClick(sender); }
end;

procedure TForm1.CommArrowChange(Sender: TObject);
var GN :Integer;
begin
 if not isChoosing then
  if CommentList.ItemIndex>-1 then
  Begin
    GN :=FindChart(CList2[CommentList.ItemIndex]);
    if GN<>-1 then
         Chart[GN].Marks.Font.Size := CommFont.Value;
  End;   
end;

procedure TForm1.CommFontChange(Sender: TObject);
var GN:Integer;
begin
 if not isChoosing then
  if CommentList.ItemIndex>-1 then
  Begin
    GN :=FindChart(CList2[CommentList.ItemIndex]);
    if GN<>-1 then
        Chart[GN].Marks.ArrowLength := CommArrow.Value;
  End;
  
end;

procedure TForm1.CommColorChange(Sender: TObject);
var GN:Integer;
begin
 if not isChoosing then
  if CommentList.ItemIndex>-1 then
  Begin
    GN :=FindChart(CList2[CommentList.ItemIndex]);
    if GN<>-1 then
         Chart[GN].Marks.BackColor:= CommColor.Colors[CommColor.ItemIndex];
  End;

end;

procedure TForm1.AcceptCommClick(Sender: TObject);
var GN, i, j:Integer;
begin

  if CommentList.ItemIndex>-1 then
  Begin
    Panel12.Visible := true;
    GN :=FindChart(CList2[CommentList.ItemIndex]);
    if GN<>-1 then
    begin
        j:=0;
        For i:=0 to CommentList.ItemIndex-1 do
          if CList2[i]= CList2[CommentList.ItemIndex] then
             inc(j);

         Chart[GN].XValue[j] := StrToFloat(CommX.Text);
         Chart[GN].YValue[j] := StrToFloat(CommY.Text);
    end;
  End;

 { i := CommentList.ItemIndex;
  for GN:= 0 to Form1.Chart.SeriesCount-1 do
  if Pos('_&_&_&_&_Comments',Form1.Chart.Series[GN].Title)>0 then
  if (GN<>-1)and(CommentList.ItemIndex<>-1) then
    try
      TPointSeries(Chart[GN]).XLabel[CommentList.ItemIndex] := CommText.Text;
     // TPointSeries(Chart[GN]). := CommText.Text;
    //  if  Chart.BottomAxis.IsDateTime then
    //     TPointSeries(Chart[GN]).XValue[CommentList.ItemIndex] := StrToDateTime(CommX.Text)
    //      else
            TPointSeries(Chart[GN]).XValue[CommentList.ItemIndex] := StrToFloat(CommX.Text);
    //  if  Chart.LeftAxis.IsDateTime then
    //      TPointSeries(Chart[GN]).YValue[CommentList.ItemIndex] := StrToDateTime(CommY.Text)
    //        else
            TPointSeries(Chart[GN]).YValue[CommentList.ItemIndex] := StrToFloat(CommY.Text);
    except

    end;
  //  RefreshCommList;
  //  CommentList.ItemIndex := i;
  //  CommentList.OnClick(sender);   }
end;

procedure TForm1.PickGraphClick(Sender: TObject);
var i : integer;
begin
  if PickGraph.Checked then
  Begin
     Form2a.GrList.Clear;
     Form2a.forcom := true;
     for i:=0 to Chart.SeriesCount-1 do
        if (Chart.Series[i].ShowInLegend) and (Chart.Series[i].Active) then
           Form2a.GrList.Items.Add(Chart.Series[i].Title);

     Form2a.ShowModal;
  End;
end;

procedure TForm1.PickGraphKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  PickGraph.OnClick(Sender);
end;

procedure TForm1.CommTextChange(Sender: TObject);
var GN, i, j:Integer;
begin
 if not isChoosing then
  if CommentList.ItemIndex>-1 then
  Begin
    GN :=FindChart(CList2[CommentList.ItemIndex]);
    if GN<>-1 then
    begin
        j:=0;
        For i:=0 to CommentList.ItemIndex-1 do
          if CList2[i]= CList2[CommentList.ItemIndex] then
             inc(j);

         Chart[GN].XLabel[j] := CommText.Text;
         CommentList.Items[CommentList.ItemIndex]:= CommText.Text;
    end;
  End;
end;

procedure TForm1.CommXChange(Sender: TObject);
begin
 if CommX.Focused then
   AcceptComm.OnClick(sender);
end;

procedure TForm1.CommYChange(Sender: TObject);
begin
  if CommY.Focused then
   AcceptComm.OnClick(sender);
end;

procedure TForm1.StyleWinClick(Sender: TObject);
var I :integer;
begin
 Panel13.Visible := not (Panel13.Visible);

 LegPos2.ItemIndex := LegendPos.ItemIndex;
 ShowLeg2.Checked := ShowLegend.Checked;

 For i:= 0 to Mainfont.Items.Count-1 do
   if Chart.Title.Font.Name = Mainfont.Items[i] then
   begin
     Mainfont.ItemIndex := i;
     break;
   end;

 For i:= 0 to Secondfont.Items.Count-1 do
   if Chart.BottomAxis.Title.Font.Name = Mainfont.Items[i] then
   begin
     Secondfont.ItemIndex := i;
     break;
   end;

 LegFSize.Value := Chart.Legend.Font.Size;
end;

procedure TForm1.StyleBoxChange(Sender: TObject);
begin
 case StyleBox.ItemIndex of
   0: Chart.Color := clWhite;
   1: Chart.Color := clCream;
   2: Chart.Color := $00E6E6E6;
   3: Chart.Color := clBtnFace;
 end;
end;

procedure TForm1.ShowLeg2KeyPress(Sender: TObject; var Key: Char);
begin
  ShowLegend.Checked := ShowLeg2.Checked;
  ShowLegend.OnClick(Sender);
end;

procedure TForm1.ShowLeg2Click(Sender: TObject);
begin
  ShowLegend.Checked := ShowLeg2.Checked;
  ShowLegend.OnClick(Sender);
end;

procedure TForm1.LegPos2Change(Sender: TObject);
begin
  LegendPos.ItemIndex := LegPos2.ItemIndex;
  LegendPos.OnChange(Sender);
end;

procedure TForm1.HSize2Change(Sender: TObject);
begin
  HeaderSize.Caption := IntToStr(HSize2.Value);
  RefreshFont;
end;

procedure TForm1.AHSize2Change(Sender: TObject);
begin
  AxisHeaderSize.Caption := IntToStr(AHSize2.Value);
  RefreshFont;
end;

procedure TForm1.ATSize2Change(Sender: TObject);
begin
  AxisTickSize.Caption := IntToStr(ATSize2.Value);
  RefreshFont;
end;

procedure TForm1.RefreshFont;
begin
      try
        Chart.Title.Font.Size := StrToInt(HeaderSize.Caption);
        Chart.BottomAxis.Title.Font.Size := StrToInt(AxisHeaderSize.Caption);
        Chart.LeftAxis.Title.Font.Size := Chart.BottomAxis.Title.Font.Size;
        Chart.BottomAxis.LabelsFont.Size := StrToInt(AxisTickSize.Caption);
        Chart.LeftAxis.LabelsFont.Size := Chart.BottomAxis.LabelsFont.Size;

        Chart.Legend.Font.Size := LegFSize.Value;
      finally
        if Chart.Title.Font.Size< 8 then
          Chart.Title.Font.Size := 8;
        if Chart.Title.Font.Size> 72 then
          Chart.Title.Font.Size := 72;
        if Chart.BottomAxis.Title.Font.Size < 8 then
          Chart.BottomAxis.Title.Font.Size := 8;
        if Chart.BottomAxis.Title.Font.Size > 24 then
          Chart.BottomAxis.Title.Font.Size := 24;
        Chart.LeftAxis.Title.Font.Size := Chart.BottomAxis.Title.Font.Size;
        if Chart.BottomAxis.LabelsFont.Size < 8 then
          Chart.BottomAxis.LabelsFont.Size := 8;
        if Chart.BottomAxis.LabelsFont.Size > 24 then
          Chart.BottomAxis.LabelsFont.Size := 24;
        Chart.LeftAxis.LabelsFont.Size := Chart.BottomAxis.LabelsFont.Size;

        if Chart.Legend.Font.Size < 8 then
          Chart.Legend.Font.Size := 8;
        if Chart.Legend.Font.Size > 24 then
          Chart.Legend.Font.Size := 24;

      ATSize2.Value := StrToInt(AxisTickSize.Caption);
      AHSize2.Value := StrToInt(AxisHeaderSize.Caption);
      HSize2.Value := StrToInt(HeaderSize.Caption);
      end;
end;

procedure TForm1.LegFSizeChange(Sender: TObject);
begin
  RefreshFont;
end;

procedure TForm1.MainFontChange(Sender: TObject);
begin
 try
   Chart.Title.Font.Name := Mainfont.Items[Mainfont.ItemIndex];
 except
 end;
end;

procedure TForm1.SecondFontChange(Sender: TObject);
var GN :Integer;
begin
 try
   Chart.BottomAxis.Title.Font.Name := Secondfont.Items[Secondfont.ItemIndex];
   Chart.BottomAxis.LabelsFont.Name := Secondfont.Items[Secondfont.ItemIndex];
   Chart.LeftAxis.Title.Font.Name := Secondfont.Items[Secondfont.ItemIndex];
   Chart.LeftAxis.LabelsFont.Name := Secondfont.Items[Secondfont.ItemIndex];
   Chart.Legend.Font.Name := Secondfont.Items[Secondfont.ItemIndex];

   for GN:= 0 to Form1.Chart.SeriesCount-1 do
     if Pos('_&_&_&_&_Comments',Form1.Chart.Series[GN].Title)>0 then
         TPointSeries(Chart[GN]).Marks.Font.Name := Secondfont.Items[Secondfont.ItemIndex];
 except
 end;
end;

procedure TForm1.HidePan13Click(Sender: TObject);
begin
 Panel13.Visible := false;
end;

function TForm1.PickToGraph(X, Y: Double; Gname: String): TMyPoint;
var i, j, GN, k : Integer;
    started, neednext, wasnull :boolean;
    _x, _y, _my, _mx, _Lmin, _L, x1, y1, x2, y2, xt, yt, xp, yp : double;
    _x1,_y1,_x2,_y2 : double;  /// УБРАТЬ
begin
  Started := false;
  _x := x;
  _y := y;
  wasnull:=false;

  _mx := (Chart.BottomAxis.Maximum - Chart.BottomAxis.Minimum)/ Chart.Width;
  _my := (Chart.LeftAxis.Maximum - Chart.LeftAxis.Minimum)/ Chart.Height;
  try
    For i:=0 to Chart.SeriesCount-1 do
    if (Chart[i].Title = GName)or(Pos(Gname+'_&',Chart.Series[i].Title)>0) then
    begin
      Case Form2a.PickPar.ItemIndex of
         0: BEGIN
                for j := 0 to Chart[i].Count-1 do
                  if started = false then
                  begin
                    _x := Chart[i].XValue[j];
                    _y := Chart[i].YValue[j];
                    _Lmin := SQRT(sqr(_x/_mx-x/_mx)+sqr(_y/_my-y/_my));
                    Started := true;
                  end else
                  begin
                    _L := SQRT(sqr(Chart[i].XValue[j]/_mx-x/_mx)+sqr(Chart[i].YValue[j]/_my-y/_my));

                    if _L<_Lmin then
                    begin
                      _x := Chart[i].XValue[j];
                      _y := Chart[i].YValue[j];
                      _Lmin := _L;
                    End;

                  end;
           END;

           1: BEGIN
                for j := 0 to Chart[i].Count-1 do
                Begin

                  if started = false then
                  begin
                    if not Chart[i].IsNull(j) then
                    begin
                      /// начальное значение
                      k := j;

                      x1 := Chart[i].XValue[j];
                      y1 := Chart[i].YValue[j];

                      x2 := x1;
                      y2 := y1;

                      xp := x1;
                      yp := y1;

                      _Lmin := SQRT(sqr(x1/_mx-x/_mx)+sqr(y1/_my-y/_my));
                      Started := true;

                    end
                  end else
                  begin

                     x1 := x2;
                     y1 := y2;

                     x2 := Chart[i].XValue[j];
                     y2 := Chart[i].YValue[j];



                     if (Chart[i].IsNull(j)) then
                       wasnull :=true
                        else
                           if wasnull then
                           begin
                               x1 := x2;
                               y1 := y2;
                               wasnull :=false;
                           end;


                     if (Chart[i].IsNull(j)) or (j=0) then
                     begin
                       x1 := x2;
                       y1 := y2;
                     end;

                     if (x1=x2)or(y1=y2) then
                     begin
                       _L := SQRT(sqr(x1/_mx-x/_mx)+sqr(y1/_my-y/_my));
                       xp := x1;
                       yp := y1;
                     end
                       else
                        begin
                              xt := (y2-y1)/(x2-x1);

                              yt := (x-x1)/xt + (y-y1);

                              xp := x1 +  yt/(xt+1/xt) ;
                              yp := y1 +  xt*(xp-x1) ;

                              if ((y1<y2)and(yp>y1)and(yp<y2))or ((y1>y2)and(yp<y1)and(yp>y2)) then
                                _L := SQRT(sqr(xp/_mx-x/_mx)+sqr(yp/_my-y/_my))
                                  else
                                  begin
                                   //_L := _Lmin+1;

                           /// !!!
                             // if SQRT(sqr(x1/_mx-x/_mx)+sqr(y1/_my-y/_my))<_L*0.5 then
                             // Begin
                                 _L := SQRT(sqr(x1/_mx-x/_mx)+sqr(y1/_my-y/_my));
                                 xp := x1;
                                 yp := y1;
                             // End;
                              end;
                        end;

                             if (_L<_Lmin) then
                              Begin
                                _x := xp;
                                _y := yp;

                                _x2 := x2;
                                _y2 := y2;

                                _x1 := x1;
                                _y1 := y1;

                                _Lmin := _L;
                              End;
                   end;

              End;

           END;


      End;
    end;
  except
    _x := x;
    _y := y;
  end;


   if DoProfi then
     if Form2a.PickPar.ItemIndex=1 then
     Begin
        GN:=FindChart('_&_&_&_&_&');

        if Chart.Series[GN].Count<2 then
          Chart.Series[GN].AddXY(_X2,_Y2)
        else
          begin
            Chart.Series[GN].XValue[1]:=_X2;
            Chart.Series[GN].YValue[1]:=_Y2;
          end;

          if Chart.Series[GN].Count<3 then
            Chart.Series[GN].AddXY(_X1,_Y1)
          else
            begin
              Chart.Series[GN].XValue[2]:=_X1;
              Chart.Series[GN].YValue[2]:=_Y1;
            end;
     End;


  result.Xe := _x;
  result.Ye := _y;
end;

procedure TForm1.AutoLimKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  AutoLim.OnClick(Sender);
end;

procedure TForm1.AxisTiming;
var Step, i: double;
   odt : string;
begin

 if Chart.BottomAxis.IsDateTime then
  begin
    Step := Chart.BottomAxis.Increment;
    i := Chart.BottomAxis.CalcIncrement; //abs(Chart.BottomAxis.Maximum - Chart.BottomAxis.Minimum)*100/Chart.ChartWidth;
    odt := Chart.BottomAxis.DateTimeFormat;
    if I < (1/SecsPerDay) then
      Chart.BottomAxis.DateTimeFormat := 'hh:mm:ss'+DecimalSeparator+'zz'
    else
    if I < 60*(1/SecsPerDay) then
      Chart.BottomAxis.DateTimeFormat := '  hh:mm:ss  '
    else
    if I < 0.1 then
      Chart.BottomAxis.DateTimeFormat := '    hh:mm    '
    else
      Chart.BottomAxis.DateTimeFormat := DateF.Caption + ' hh:mm';

    Chart.BottomAxis.CalcLabelStyle;

    //Chart.BottomAxis.LabelWidth(
    //   Chart. TextWidth(Chart.BottomAxis.DateTimeFormat));

    Chart.BottomAxis.Increment := 0;
    i := Chart.BottomAxis.CalcIncrement;

    if I < 0.1 * (1/SecsPerDay)  then
       Chart.BottomAxis.Increment := 0.1 * (1/SecsPerDay)
    else
    if I < 0.2 * (1/SecsPerDay)  then
       Chart.BottomAxis.Increment := 0.2 * (1/SecsPerDay)
    else
    if I < 0.5 * (1/SecsPerDay)  then
       Chart.BottomAxis.Increment := 0.5 * (1/SecsPerDay)
    else
    if I < 2 * (1/SecsPerDay)  then
       Chart.BottomAxis.Increment := (1/SecsPerDay)
    else
      Chart.BottomAxis.Increment := 0;//(1/SecsPerDay);

    //if (I <> Step) or (odt <> Chart.BottomAxis.DateTimeFormat) then
      //   Chart.BottomAxis.Draw(true);
  end;

end;

procedure TForm1.ALim2Click(Sender: TObject);
begin
  Autolim.Checked := not Alim2.Checked;
  AutoLim.OnClick(Sender);
end;

procedure TForm1.ALim2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Alim2.OnClick(sender);
end;

procedure TForm1.XBegin2Change(Sender: TObject);
begin
  if not IsLoading then
  Begin
    XBegin.Caption := XBegin2.Text;
    XEnd.Caption := XEnd2.Text;
    YBegin.Caption := YBegin2.Text;
    YEnd.Caption := YEnd2.Text;

    if (XBegin.Caption ='') then
     XBegin.Caption :='0';
    if (XEnd.Caption ='') then
     XEnd.Caption :='0';
    if (YBegin.Caption ='') then
     YBegin.Caption :='0';
    if (YEnd.Caption ='') then
     YEnd.Caption :='0';


    if Autolim.Checked=false then
       try
        Chart.leftAxis.Automatic:=false;
        Chart.BottomAxis.Automatic:=false;
        if Chart.BottomAxis.IsDateTime=false then
        Begin
          if StrToFloat(Xbegin.caption)> Chart.BottomAxis.Maximum then
               Chart.BottomAxis.Maximum:=StrToFloat(Xend.caption);
          Chart.BottomAxis.Minimum:=StrToFloat(Xbegin.caption);
          Chart.BottomAxis.Maximum:=StrToFloat(Xend.caption);
        end else
          begin
            if StrToDateTime(Xbegin.caption)> Chart.BottomAxis.Maximum then
               Chart.BottomAxis.Maximum:=StrToDateTime(Xend.caption);
            Chart.BottomAxis.Minimum:=StrToDateTime(Xbegin.caption);
            Chart.BottomAxis.Maximum:=StrToDateTime(Xend.caption);
          end;
        if Chart.LeftAxis.isDateTime=false then
        Begin
           if StrToFloat(Ybegin.caption)> Chart.LeftAxis.Maximum then
               Chart.LeftAxis.Maximum:=StrToFloat(Yend.caption);
          Chart.LeftAxis.Minimum:=StrToFloat(Ybegin.caption);
          Chart.LeftAxis.Maximum:=StrToFloat(Yend.caption);
        end  else
          begin
            if StrToDateTime(Ybegin.caption)> Chart.LeftAxis.Maximum then
               Chart.LeftAxis.Maximum:=StrToDate(Yend.caption);
            Chart.LeftAxis.Minimum:=StrToDateTime(Ybegin.caption);
            Chart.LeftAxis.Maximum:=StrToDateTime(Yend.caption);
          end;
      except end;
  end;
end;

procedure TForm1.IncX2Change(Sender: TObject);
begin
  IncX2.Text := DS(IncX2.Text);
  IncY2.Text := DS(IncY2.Text);
  IncX.caption := IncX2.Text;
  IncY.caption := IncY2.Text;
  Chart.BottomAxis.Increment:=StrToFloat(IncX.caption);
  Chart.LeftAxis.Increment:=StrToFloat(IncY.caption);
end;

procedure TForm1.Hold2Click(Sender: TObject);
begin
  Hold1.Checked := Hold2.Checked;
  BP3a.Visible :=  Hold2.Checked;
  if Hold2.Checked then
    Chart.AllowPanning := pmNone
    else
       Chart.AllowPanning := pmBoth;

  Chart.AllowZoom := not Hold2.Checked;

  if  Chart.AllowZoom then
  begin
    if Panel10.Visible = false then
    begin
        Chart.AllowZoom := true;
    end
      else
        Chart.AllowZoom := not LineLMB.Checked;

    if Panel11.Visible = true then
      Chart.AllowZoom := false;
   end;
end;

procedure TForm1.Hold1Click(Sender: TObject);
begin
  Hold2.Checked := Hold1.Checked;
  Hold2.OnClick(Sender);
end;

procedure TForm1.Hold1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Hold2.Checked := Hold1.Checked;
  Hold2.OnClick(Sender);
end;

procedure TForm1.UnblockClick(Sender: TObject);
begin
  Hold2.Checked := false;
  ALim2.Checked := false;
  Hold2.OnClick(Sender);
  Alim2.OnClick(Sender);
end;

procedure TForm1.AddCommSerie;
var i:integer;
    Series: TPointSeries;
begin
  i:=0;

  repeat
    inc(i)
  until FindChart('_&_&_&_&_Comments'+intToStr(i))=-1;

    Series:=TPointSeries.Create(Chart);

    Series.ParentChart:=Chart;
    Series.Title:='_&_&_&_&_Comments'+intToStr(i);
    Series.Marks.Visible:=false;
    Series.Marks.Arrow.Color:=clBlack;
    Series.SeriesColor:= clBlack;
    TLineSeries(Series).Pointer.Visible:=true;
    TLineSeries(Series).Pointer.VertSize := 2;
    TLineSeries(Series).Pointer.HorizSize := 2;
    TLineSeries(Series).Pointer.Style := psCross;

    if Xformat.ItemIndex>1 then
       Series.XValues.Datetime:=true;
       if Yformat.ItemIndex>1 then
          Series.YValues.Datetime:=true;
    Series.ShowInLegend:= false;

    //Series.Marks.Clip := true;
    Series.Marks.Visible := true;
    Series.Marks.Style := smsLabel;
    Series.Marks.Frame.Visible := false;
    Series.Marks.ArrowLength := CommArrow.Value;
    Series.Marks.Arrow.Color := clGray;
    Series.Marks.Font.Size :=CommFont.Value;
    Series.Marks.Font.Name:= Secondfont.Items[Secondfont.ItemIndex];
    Series.Marks.BackColor := CommColor.Colors[CommColor.ItemIndex];
    //CommArrow.Value := 10;
    //CommFont.Value := 10;

    CurComm := i;
end;

procedure TForm1.ChartResize(Sender: TObject);
begin
//
end;

procedure TForm1.ChartAfterDraw(Sender: TObject);
begin
  if DoSq then
    if ChartLoaded then
    Begin
      Form1.OnResize(nil);
      Chart.Repaint;
      ResZoom.OnClick(nil);
      Dosquare.OnClick(nil);
      ResZoom.OnClick(nil);
      DoSq := false;
    End;
end;

procedure TForm1.PickGraph2Click(Sender: TObject);
var i:integer;
begin
  if PickGraph2.Checked then
  Begin
     Form2a.GrList.Clear;
     Form2a.forcom := false;
     for i:=0 to Chart.SeriesCount-1 do
        if (Chart.Series[i].ShowInLegend) and (Chart.Series[i].Active) then
           Form2a.GrList.Items.Add(Chart.Series[i].Title);

     Form2a.ShowModal;
  End;
end;

procedure TForm1.PickGraph2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  PickGraph2.OnClick(sender);
end;

function TForm1.PickToAllGraph(X, Y: Double; ProjXY: Boolean): TMyPoint;
var i, j, GN, k : Integer;
    started, neednext, wasnull :boolean;
    _x, _y, _my, _mx, _Lmin, _L, x1, y1, x2, y2, xt, yt, xp, yp : double;
    _x1,_y1,_x2,_y2 : double;  /// УБРАТЬ
begin
  Started := false;
  _x := x;
  _y := y;
  wasnull:=false;

  _mx := (Chart.BottomAxis.Maximum - Chart.BottomAxis.Minimum)/ Chart.Width;
  _my := (Chart.LeftAxis.Maximum - Chart.LeftAxis.Minimum)/ Chart.Height;
  try
    For i:=0 to Chart.SeriesCount-1 do
    if (Chart[i].Active) then
    begin
      Case ProjXY of
         false: BEGIN
                for j := 0 to Chart[i].Count-1 do
                  if started = false then
                  begin
                    _x := Chart[i].XValue[j];
                    _y := Chart[i].YValue[j];
                    _Lmin := SQRT(sqr(_x/_mx-x/_mx)+sqr(_y/_my-y/_my));
                    Started := true;
                  end else
                  begin
                    _L := SQRT(sqr(Chart[i].XValue[j]/_mx-x/_mx)+sqr(Chart[i].YValue[j]/_my-y/_my));

                    if _L<_Lmin then
                    begin
                      _x := Chart[i].XValue[j];
                      _y := Chart[i].YValue[j];
                      _Lmin := _L;
                    End;

                  end;
           END;

           true: BEGIN
                for j := 0 to Chart[i].Count-1 do
                Begin

                  if started = false then
                  begin
                    if not Chart[i].IsNull(j) then
                    begin
                      /// начальное значение
                      k := j;

                      x1 := Chart[i].XValue[j];
                      y1 := Chart[i].YValue[j];

                      x2 := x1;
                      y2 := y1;

                      xp := x1;
                      yp := y1;

                      _Lmin := SQRT(sqr(x1/_mx-x/_mx)+sqr(y1/_my-y/_my));
                      Started := true;

                    end
                  end else
                  begin

                     x1 := x2;
                     y1 := y2;

                     x2 := Chart[i].XValue[j];
                     y2 := Chart[i].YValue[j];



                     if (Chart[i].IsNull(j)) then
                       wasnull :=true
                        else
                           if wasnull then
                           begin
                               x1 := x2;
                               y1 := y2;
                               wasnull :=false;
                           end;


                     if (Chart[i].IsNull(j)) or (j=0) then
                     begin
                       x1 := x2;
                       y1 := y2;
                     end;

                     if (x1=x2)or(y1=y2) then
                     begin
                       _L := SQRT(sqr(x1/_mx-x/_mx)+sqr(y1/_my-y/_my));
                       xp := x1;
                       yp := y1;
                     end
                       else
                        begin
                              xt := (y2-y1)/(x2-x1);

                              yt := (x-x1)/xt + (y-y1);

                              xp := x1 +  yt/(xt+1/xt) ;
                              yp := y1 +  xt*(xp-x1) ;

                              if ((y1<y2)and(yp>y1)and(yp<y2))or ((y1>y2)and(yp<y1)and(yp>y2)) then
                                _L := SQRT(sqr(xp/_mx-x/_mx)+sqr(yp/_my-y/_my))
                                  else
                                  begin
                                   //_L := _Lmin+1;

                           /// !!!
                             // if SQRT(sqr(x1/_mx-x/_mx)+sqr(y1/_my-y/_my))<_L*0.5 then
                             // Begin
                                 _L := SQRT(sqr(x1/_mx-x/_mx)+sqr(y1/_my-y/_my));
                                 xp := x1;
                                 yp := y1;
                             // End;
                              end;
                        end;

                             if (_L<_Lmin) then
                              Begin
                                _x := xp;
                                _y := yp;

                                _x2 := x2;
                                _y2 := y2;

                                _x1 := x1;
                                _y1 := y1;

                                _Lmin := _L;
                              End;
                   end;

              End;

           END;


      End;
    end;
  except
    _x := x;
    _y := y;
  end;


   if DoProfi then
     if ProjXY then
     Begin
        GN:=FindChart('_&_&_&_&_&');

        if Chart.Series[GN].Count<2 then
          Chart.Series[GN].AddXY(_X2,_Y2)
        else
          begin
            Chart.Series[GN].XValue[1]:=_X2;
            Chart.Series[GN].YValue[1]:=_Y2;
          end;

          if Chart.Series[GN].Count<3 then
            Chart.Series[GN].AddXY(_X1,_Y1)
          else
            begin
              Chart.Series[GN].XValue[2]:=_X1;
              Chart.Series[GN].YValue[2]:=_Y1;
            end;
     End;


  result.Xe := _x;
  result.Ye := _y;
end;


procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
var _ps: TSeriesPointerStyle;
  GN :integer;
begin
  if Button=BtNext then
      Inc(HintDotStyle);
    if Button=BtPrev then
      Dec(HintDotStyle);

    if HintDotStyle <0 then
      HintDotStyle := 8
      else
        if HintDotStyle >8 then
          HintDotStyle :=0;

  GN:=FindChart(CList2[CommentList.ItemIndex]);

  if GN<>-1 then
  Begin

    Case HintDotStyle of
      0 : _ps :=psRectangle;
      1 : _ps :=psCircle;
      2 : _ps :=psTriangle;
      3 : _ps :=psDownTriangle;
      4 : _ps :=psCross;
      5 : _ps :=psDiagCross;
      6 : _ps :=psStar;
      7 : _ps :=psDiamond;
      8 : _ps :=psSmallDot;
    end;

    if Chart.Series[GN] is TLineSeries  then
      TLineSeries(Chart.Series[GN]).Pointer.Style := _ps;

    if Chart.Series[GN] is TPointSeries  then
      TPointSeries(Chart.Series[GN]).Pointer.Style := _ps;

    if Chart.Series[GN] is TAreaSeries  then
      TAreaSeries(Chart.Series[GN]).Pointer.Style := _ps;

    ImageDotHint.Canvas.Brush.Color := imageDot.Canvas.Pixels[0,0];
    ImageDotHint.Canvas.FillRect(Rect(0,0,imageDot.Width,ImageDot.Height));
    ImageList.Draw(ImageDotHint.Canvas,0,0,HintDotStyle,true);
    RefreshChilds(GN);
    Chart.Repaint;
  end;
end;

procedure TForm1.HintDotSizeChange(Sender: TObject);
var GN:integer;
begin
 if not isChoosing then
 begin
  GN:=FindChart(CList2[CommentList.ItemIndex]);
  if GN<>-1 then
  try
   if Chart.Series[GN] is TLineSeries  then
   begin
    TLineSeries(Chart.Series[GN]).Pointer.VertSize := HintDotSize.Value;
    TLineSeries(Chart.Series[GN]).Pointer.HorizSize := HintDotSize.Value;
   end;
   if Chart.Series[GN] is TPointSeries  then
   begin
    TPointSeries(Chart.Series[GN]).Pointer.VertSize := HintDotSize.Value;
    TPointSeries(Chart.Series[GN]).Pointer.HorizSize := HintDotSize.Value;
   end;
   if Chart.Series[GN] is TAreaSeries  then
   begin
     TAreaSeries(Chart.Series[GN]).Pointer.VertSize := HintDotSize.Value;
     TAreaSeries(Chart.Series[GN]).Pointer.HorizSize := HintDotSize.Value;
   end;
   RefreshChilds(GN);
   Chart.Repaint;
  except
  end;
 end
end;

procedure TForm1.HintColorBoxChange(Sender: TObject);
var GN :Integer;
begin
 if not isChoosing then
 if CommentList.ItemIndex>-1 then
  Begin
    GN :=FindChart(CList2[CommentList.ItemIndex]);
    if GN<>-1 then
         Chart[GN].SeriesColor := HintColorBox.Colors[CommColor.ItemIndex];
  End;

end;

procedure TForm1.WSSClick(Sender: TObject);
begin
  if WSS.Checked then
     WSX.OnChange(Sender);
end;

procedure TForm1.WSXChange(Sender: TObject);
begin
  if WSS.Checked then
  Begin
    Width := WSX.Value;
    Height := WSY.Value;

    WSX.Value := Width;
    WSY.Value := Height;
    //Resize;
  End;
end;

procedure TForm1.LoadLang(FN: String);
var S : TStringList;
    i: integer;

  procedure NameComponents(Fm:TForm);
  var j, n, ii:integer;
  Begin
    inc(i);
    For j := 0 to Fm.ComponentCount-1 do
    if Fm.Components[j].Name = s[i] then
    Begin
      if Fm.Components[j] is TLabel then
      begin
        TLabel(Fm.Components[j]).Caption := s[i+1];
      end else
      if Fm.Components[j] is TSpeedButton then
      begin
        TSpeedButton(Fm.Components[j]).Caption := s[i+1];
        TSpeedButton(Fm.Components[j]).Hint := s[i+2];
      end else
      if Fm.Components[j] is TCheckBox then
      begin
        TCheckBox(Fm.Components[j]).Caption := s[i+1];
      end else
      if Fm.Components[j] is TRadiobutton then
      begin
        TRadioButton(Fm.Components[j]).Caption := s[i+1];
      end else
      if Fm.Components[j] is TComboBox then
      begin
        n := i;
        ii :=  TComboBox(Fm.Components[j]).ItemIndex;
        repeat
          inc(n);
          if s[n]='//' then
             break;
          TComboBox(Fm.Components[j]).Items[n-i-1]:= s[n];
        until n>= S.Count-1;
        TComboBox(Fm.Components[j]).ItemIndex := ii;
      end else
      if Fm.Components[j] is TRadioGroup then
      begin
        TRadioGroup(Fm.Components[j]).Caption := s[i+1];
        n := i+1;
        ii :=  TRadioGroup(Fm.Components[j]).ItemIndex;
        repeat
          inc(n);
          if s[n]='//' then
             break;
          TRadioGroup(Fm.Components[j]).Items[n-i-2]:= s[n];
        until n>= S.Count-1;
        TRadioGroup(Fm.Components[j]).ItemIndex := ii;
      end;
  End;
  end;


begin
  S := TStringList.Create;

  S.LoadFromFile(FN);

  Caption := s[0];
  Form2a.Caption := s[1];
  Form3.Caption := s[2];
  i:= 3;
  While i < S.Count-1 do
  Begin
    inc(i);

    if s[i] = Form1.Name then
      NameComponents(Form1)
       else
        if s[i] = Form2a.Name then
           NameComponents(Form2a);

    repeat
      if s[i]='//' then
        break;
      inc(i);
    until i >= S.Count-1;

    if i >= S.Count-1 then
    break;
  End;

  BP3a.Caption := Label56.Caption;

  S.Destroy;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  LoadLang('Data\English.txt');
end;

procedure TForm1.SaveLang(FN: String);
var S : TStringList;
    i, j : integer;
begin
  S := TStringList.Create;

  For i := 0 to Form1.ComponentCount-1 do
  Begin
    if Form1.Components[i] is TLabel
      then
      Begin
        s.Add( Form1.Name);
        s.Add( Form1.Components[i].Name );
        s.Add( TLabel(Form1.Components[i]).Caption );
        s.Add('//');
      End
      else
    if Form1.Components[i] is TSpeedButton
      then
      Begin
        s.Add( Form1.Name);
        s.Add( Form1.Components[i].Name );
        s.Add( TSpeedButton(Form1.Components[i]).Caption );
        s.Add( TSpeedButton(Form1.Components[i]).Hint );
        s.Add('//');
      End
      else
    if Form1.Components[i] is TCheckBox
      then
      Begin
        s.Add( Form1.Name);
        s.Add( Form1.Components[i].Name );
        s.Add( TCheckBox(Form1.Components[i]).Caption );

        s.Add('//');
      End
      else
    if Form1.Components[i] is TComboBox
      then
      Begin
        s.Add( Form1.Name);
        s.Add( Form1.Components[i].Name );
        for j:= 0 to TComboBox(Form1.Components[i]).Items.Count-1 do
        s.Add( TComboBox(Form1.Components[i]).Items[j] );
        s.Add('//');
      End else
      if Form1.Components[i] is TRadioButton
      then
      Begin
        s.Add( Form1.Name);
        s.Add( Form1.Components[i].Name );
        s.Add( TRadioButton(Form1.Components[i]).Caption );
        s.Add('//');
      End
      else
     if Form1.Components[i] is TRadioGroup
      then
      Begin
        s.Add( Form1.Name);
        s.Add( Form1.Components[i].Name );
        s.Add( TRadioGroup(Form1.Components[i]).Caption);
        for j:= 0 to  TRadioGroup(Form1.Components[i]).Items.Count-1 do
        s.Add( TRadioGroup(Form1.Components[i]).Items[j]);
        s.Add('//');
      End;

   End;

  S.SaveToFile(FN);
  S.Destroy;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  SaveLang('Data\Dop.txt');
end;

procedure TForm1.ScriptLoad(FN: String);

  procedure ApplyCom( N:Integer; Par:String);
  var I:Integer;
  begin
    case N of
      1: LoadTabData(par);

      2: LoadSets(par);

      3: RefreshGraphs;

      4: SaveChart(par);

      5: LoadChart(Par);

      6: ResetAll.Click;

      7: Begin
            {for I := 0 to Graphs.Items.Count-1 Do
            begin
               Graphs.Checked[I] := False;
               Graphs.ItemIndex := I;
               Graphs.OnClickCheck(nil);
            end; }

            DoChk := False;
            CheckUncheck.Click();
         End;
      8: Begin
            for I := 0 to Graphs.Items.Count-1 Do
            if AnsiLowerCase(Graphs.Items[I]) = par then
            begin
               Graphs.Checked[I] := True;
               Graphs.ItemIndex := I;
               Graphs.OnClickCheck(nil);
               break;
            end;
            
         End;
       9:  SortAz.Click;
       10: DoNoZeros := True;
       11: DoCrosses := True;
       12: DoNoMarks := True;
    end;
  end;


  var
    S    :TStringList;
    str  :string;
    I, j :Integer;
    L    :Integer;
  const
    CmdMax = 12;
    Cmds: array [1..CmdMax] of String = ( 'loaddata',
                                          'loadset',
                                          'apply',
                                          'savechart',
                                          'loadchart',
                                          'reset',
                                          'hideall',
                                          'show',
                                          'sort',       
                                          'nozeros',
                                          'crosses',
                                          'nomarks');
begin


  if FileExists(FN) = false then
    exit;

  S := TStringList.Create;
  S.LoadFromFile(FN);

  For I := 0 To S.Count - 1 Do
  Begin
     str := AnsiLowerCase(S[I]);

     for j := 1 to CmdMax do
       if Pos(Cmds[j], str) > 0 then
       begin
          L := length(Cmds[j])+1;
          Delete(str, 1, L);
          ApplyCom(j, str);
          break;
       end;

  End;

  DoScript := false;
  S.Free;
end;

end.



