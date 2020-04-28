unit U_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, LazHelpHTML, StdCtrls,
  AsyncProcess, ExtCtrls, ComCtrls, vinfo, process, versiontypes;

type

  { T_main }

  T_main = class(TForm)
    BMainPanel: TPanel;
    LabelVersion: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function GetPVersion():String;
  private

  public

  end;

var
  _main: T_main;

implementation

{$R *.lfm}

{ T_main }

function T_main.GetPVersion():String;
function ProductVersionToString(PV: TFileProductVersion): String;
 begin
   Result := Format('%d.%d.%d.%d', [PV[0],PV[1],PV[2],PV[3]])
 end;

var
 Info: TVersionInfo;
begin
   Info := TVersionInfo.Create;
 Info.Load(HINSTANCE);
 Result := ProductVersionToString(Info.FixedInfo.FileVersion);
end;

procedure T_main.Button1Click(Sender: TObject);
//function ProductVersionToString(PV: TFileProductVersion): String;
// begin
//   Result := Format('%d.%d.%d.%d', [PV[0],PV[1],PV[2],PV[3]])
// end;
//
//var
// Info: TVersionInfo;
begin
 //Info := TVersionInfo.Create;
 //Info.Load(HINSTANCE);
 //ShowMessage(ProductVersionToString(Info.FixedInfo.FileVersion));
 //ShowMessage(ProductVersionToString(Info.FixedInfo.ProductVersion));
 //Info.Free;
end;

procedure T_main.FormCreate(Sender: TObject);
begin
 LabelVersion.Caption := GetPVersion();
  // On Create
end;

procedure T_main.FormShow(Sender: TObject);
begin
  // On Show
end;



end.

