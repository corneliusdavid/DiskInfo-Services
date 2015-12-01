unit uDiskInfoService_Intf;

{----------------------------------------------------------------------------}
{ This unit was automatically generated by the RemObjects SDK after reading  }
{ the RODL file associated with this project .                               }
{                                                                            }
{ Do not modify this unit manually, or your changes will be lost when this   }
{ unit is regenerated the next time you compile the project.                 }
{----------------------------------------------------------------------------}

{$I RemObjects.inc}

interface

uses
  {$IFDEF DELPHIXE2UP}
    System.SysUtils, System.Classes, System.TypInfo,
  {$ELSE}
    SysUtils, Classes, TypInfo,
  {$ENDIF}
  {RemObjects:} uROUri, uROProxy, uROExceptions, uROXMLIntf, uROClasses, uROTypes, uROClientIntf;

const
  { Library ID }
  LibraryUID = '{D53F3AA3-7EFE-40EF-B27C-C1BC3708CC06}';
  TargetNamespace = '';

  { Service Interface ID's }
  IDiskInfoService_IID : TGUID = '{84AA059D-0111-4024-8E9B-BAFAEA4CA0AB}';

type
  { Forward declarations }
  IDiskInfoService = interface;

  {$IFDEF DELPHI10UP}{$REGION 'Services'}{$ENDIF}
  { IDiskInfoService }
  IDiskInfoService = interface
    ['{84AA059D-0111-4024-8E9B-BAFAEA4CA0AB}']
    function GetServerTime: DateTime;
    function CurrentDiskName: AnsiString;
    function VolumeName(const DiskName: AnsiString): AnsiString;
    function DiskType(const DiskName: AnsiString): AnsiString;
    function TotalDiskSize(const DiskName: AnsiString): Int64;
    function TotalDiskFree(const DiskName: AnsiString): Int64;
  end;

  { CoDiskInfoService }
  CoDiskInfoService = class
    class function Create(const aMessage: IROMessage; aTransportChannel: IROTransportChannel): IDiskInfoService; overload;
    class function Create(const aUri: TROUri): IDiskInfoService; overload;
    class function Create(const aUrl: string): IDiskInfoService; overload;
  end;

  { TDiskInfoService_Proxy }
  TDiskInfoService_Proxy = class(TROProxy, IDiskInfoService)
  protected
    function __GetInterfaceName:string; override;

    function GetServerTime: DateTime;
    function CurrentDiskName: AnsiString;
    function VolumeName(const DiskName: AnsiString): AnsiString;
    function DiskType(const DiskName: AnsiString): AnsiString;
    function TotalDiskSize(const DiskName: AnsiString): Int64;
    function TotalDiskFree(const DiskName: AnsiString): Int64;
  end;
  {$IFDEF DELPHI10UP}{$ENDREGION}{$ENDIF}

implementation

uses
  {RemObjects:} uROEventReceiver, uROSerializer, uROClient, uRORes;

{$IFDEF DELPHI10UP}{$REGION 'DiskInfoService'}{$ENDIF}
{ CoDiskInfoService }
class function CoDiskInfoService.Create(const aMessage: IROMessage; aTransportChannel: IROTransportChannel): IDiskInfoService;
begin
  Result := TDiskInfoService_Proxy.Create(aMessage, aTransportChannel);
end;

class function CoDiskInfoService.Create(const aUri: TROUri): IDiskInfoService;
begin
  Result := TDiskInfoService_Proxy.Create(aUri);
end;

class function CoDiskInfoService.Create(const aUrl: string): IDiskInfoService;
begin
  Result := TDiskInfoService_Proxy.Create(aUrl);
end;

{ TDiskInfoService_Proxy }
function TDiskInfoService_Proxy.__GetInterfaceName:string;
begin
  Result := 'DiskInfoService';
end;

function TDiskInfoService_Proxy.GetServerTime: DateTime;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
  try
    lMessage.InitializeRequestMessage(lTransportChannel, 'NewLibrary', __InterfaceName, 'GetServerTime');
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('Result', System.TypeInfo(DateTime), Result, [paIsDateTime]);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

function TDiskInfoService_Proxy.CurrentDiskName: AnsiString;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
  try
    lMessage.InitializeRequestMessage(lTransportChannel, 'NewLibrary', __InterfaceName, 'CurrentDiskName');
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('Result', System.TypeInfo(AnsiString), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

function TDiskInfoService_Proxy.VolumeName(const DiskName: AnsiString): AnsiString;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
  try
    lMessage.InitializeRequestMessage(lTransportChannel, 'NewLibrary', __InterfaceName, 'VolumeName');
    lMessage.Write('DiskName', System.TypeInfo(AnsiString), DiskName, []);
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('Result', System.TypeInfo(AnsiString), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

function TDiskInfoService_Proxy.DiskType(const DiskName: AnsiString): AnsiString;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
  try
    lMessage.InitializeRequestMessage(lTransportChannel, 'NewLibrary', __InterfaceName, 'DiskType');
    lMessage.Write('DiskName', System.TypeInfo(AnsiString), DiskName, []);
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('Result', System.TypeInfo(AnsiString), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

function TDiskInfoService_Proxy.TotalDiskSize(const DiskName: AnsiString): Int64;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
  try
    lMessage.InitializeRequestMessage(lTransportChannel, 'NewLibrary', __InterfaceName, 'TotalDiskSize');
    lMessage.Write('DiskName', System.TypeInfo(AnsiString), DiskName, []);
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('Result', System.TypeInfo(Int64), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

function TDiskInfoService_Proxy.TotalDiskFree(const DiskName: AnsiString): Int64;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
  try
    lMessage.InitializeRequestMessage(lTransportChannel, 'NewLibrary', __InterfaceName, 'TotalDiskFree');
    lMessage.Write('DiskName', System.TypeInfo(AnsiString), DiskName, []);
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('Result', System.TypeInfo(Int64), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;
{$IFDEF DELPHI10UP}{$ENDREGION}{$ENDIF}

initialization
  RegisterProxyClass(IDiskInfoService_IID, TDiskInfoService_Proxy);


finalization
  UnregisterProxyClass(IDiskInfoService_IID);
end.
