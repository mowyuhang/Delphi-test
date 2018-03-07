unit Unit1;

interface
{$APPTYPE CONSOLE}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, Buttons,
  Series, Grids, Math;
  
  Type
   Tcurvedata=record
   T,Y:Real;
   end;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    Button1: TButton;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ChtCurve: TChart;
    Series1: TLineSeries;
    BitBtn2: TBitBtn;
    BtnSave: TBitBtn;
    BitBtn4: TBitBtn;
    Memo2: TMemo;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    SaveDialog: TSaveDialog;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
begin
   i:=10;
   for i:=10 to 1000 do
     if (i mod 39)=0 then
      memo1.lines.add(inttostr(i));

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
close;
end;



procedure TForm1.BitBtn2Click(Sender: TObject);
  var I:integer;
  X,Y,DT:Real;

begin
   DT:=0.01;
   for I:=-500To 500 do
   begin
   X:=DT*I;
   Y:=10*cos(4*X);
   Chtcurve.series[0].AddXY(X,Y);

end;
    end;
procedure TForm1.BtnSaveClick(Sender: TObject);
Procedure GetDataFromCurve(var Data:array of TCurveData);
  var I:Integer;
  Begin
    For I:=Low(Data) to High(Data) Do
    Begin
      Data[I].T:=ChtCurve.Series[0].XValue[I];
      Data[I].Y:=ChtCurve.Series[0].YValue[I];
    End;
  End;

var
  F:File of TCurveData;
  Data:array of TCurveData;
  I,N:Integer;
begin
  N:=ChtCurve.Series[0].Count;
  SetLength(Data,N);
  GetDataFromCurve(Data);
  With SaveDialog Do
  If Execute Then
  Begin
    AssignFile(F,FileName+'.dat'); //建立文件变量与文件的联系
    Rewrite(F);                    //建立新文件
    For I:=0 To N-1 Do
      Write(F,Data[I]);  //保存数据到文件
    CloseFile(F);        //关闭文件
  End;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  with savedialog do
  begin
  if execute then
  chtcurve.SaveToBitmapFile(filename+'.bmp');
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);

function fact(m:integer):int64;
begin
    if(m=0)then
    begin
    fact:=1;
    exit;
    end
    else
    fact:=fact(m-1)*m;
    end;                  //定义阶乘Fact

    var n,x:integer;
        H,K:Real;
    begin
    {TODO -oUser -cCONSOLE Main:Insert code here}
    n:=1;
    x:=strtoint(edit1.text);
    K:=1+power(x,n)/fact(n);
    H:=0;
    repeat
    K:=K+H;
     n:=n+1;
     H:=power(x,n)/fact(n);

    until(power(x,n)/fact(n))<power(10,-6);
     Memo2.lines.add(floattostr(K));






end;

end.
