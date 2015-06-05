﻿namespace DiskInfoService;

interface

uses
  System.ServiceProcess,
  RemObjects.SDK,
  RemObjects.SDK.Server;

type
  MainService = assembly class(System.ServiceProcess.ServiceBase)
  {$REGION Service Designer generated fields}
  private
  {$region designer-generated code}
    binMessage: RemObjects.SDK.BinMessage;
  {$endregion}
    serverChannel: RemObjects.SDK.Server.IpHttpServerChannel;
    
    components: System.ComponentModel.IContainer;
    soapMessage: RemObjects.SDK.SoapMessage;
    eventLog1: System.Diagnostics.EventLog;
    method InitializeComponent;
  {$ENDREGION}
  protected
    method Dispose(aDisposing: boolean); override;
    {$REGION Service Control Methods}
    procedure OnStart(args: array of string); override;
    procedure OnPause; override;
    procedure OnStop; override;
    procedure OnContinue; override;
    procedure OnShutdown; override;
    {$ENDREGION}
  public
    constructor;
    class method Main;
  end;

implementation

{$REGION Construction and Disposition}
constructor MainService;
const 
  DiskInfoSource = 'DiskInfoService';
  DiskInfoLog = 'DiskInfoLog';
begin
  //
  // Required for Service Designer support
  //
  InitializeComponent();

  //
  // TODO: Add any constructor code after InitializeComponent call
  //
  eventLog1 := new System.Diagnostics.EventLog();
  if not System.Diagnostics.EventLog.SourceExists(DiskInfoSource) then 
    System.Diagnostics.EventLog.CreateEventSource(DiskInfoSource, DiskInfoLog);
  
  eventLog1.Source := DiskInfoSource;
  eventLog1.Log := DiskInfoLog;
end;

method MainService.Dispose(aDisposing: boolean);
begin
  if aDisposing then begin
    if assigned(components) then
      components.Dispose();

    //
    // TODO: Add custom disposition code here
    //
  end;
  inherited Dispose(aDisposing);
end;
{$ENDREGION}

{$REGION Service Designer generated code}
method MainService.InitializeComponent;
begin
  self.components := new System.ComponentModel.Container();
  self.binMessage := new RemObjects.SDK.BinMessage();
  self.serverChannel := new RemObjects.SDK.Server.IpHttpServerChannel(self.components);
  self.soapMessage := new RemObjects.SDK.SoapMessage();
  self.eventLog1 := new System.Diagnostics.EventLog();
  (self.serverChannel as System.ComponentModel.ISupportInitialize).BeginInit();
  (self.eventLog1 as System.ComponentModel.ISupportInitialize).BeginInit();
  //  binMessage
  self.binMessage.ContentType := 'application/octet-stream';
  self.binMessage.SerializerInstance := nil;
  //  serverChannel
  self.serverChannel.Active := true;
  self.serverChannel.Dispatchers.&Add(new RemObjects.SDK.Server.MessageDispatcher('bin', self.binMessage));
  self.serverChannel.Dispatchers.&Add(new RemObjects.SDK.Server.MessageDispatcher('soap', self.soapMessage));
  self.serverChannel.HttpServer.Port := 8099;
  self.serverChannel.SendClientAccessPolicyXml := RemObjects.SDK.Server.ClientAccessPolicyType.AllowNone;
  self.serverChannel.SendCrossOriginHeader := false;
  //  soapMessage
  self.soapMessage.ContentType := 'text/xml; charset=utf-8';
  self.soapMessage.CustomLocation := '';
  self.soapMessage.LibraryName := '';
  self.soapMessage.SerializationOptions := (((RemObjects.SDK.SoapSerializationOptions.SendUntyped or RemObjects.SDK.SoapSerializationOptions.StrictStructureFieldOrder) or RemObjects.SDK.SoapSerializationOptions.Document) or RemObjects.SDK.SoapSerializationOptions.SplitServiceWsdls) as RemObjects.SDK.SoapSerializationOptions;
  self.soapMessage.SerializerInstance := nil;
  //  MainService
  self.ServiceName := 'MainService';
  (self.serverChannel as System.ComponentModel.ISupportInitialize).EndInit();
  (self.eventLog1 as System.ComponentModel.ISupportInitialize).EndInit();
end;
{$ENDREGION}

{$REGION Service Control Methods}
procedure MainService.OnStart(args: array of string);
begin
  inherited;

  //TODO: add service start code here
  eventLog1.WriteEntry("Started");
end;

procedure MainService.OnPause;
begin
  inherited;

  //TODO: add service pause code here
  eventLog1.WriteEntry("Paused");
end;

procedure MainService.OnStop;
begin
  inherited;

  //TODO: add service stop code here
  eventLog1.WriteEntry("Stopped");
end;

procedure MainService.OnContinue;
begin
  inherited;

  //TODO: add service continue code here
  eventLog1.WriteEntry("Continuing");
end;

procedure MainService.OnShutdown;
begin
  inherited;

  //TODO: add service shutdown code here
  eventLog1.WriteEntry("Shutting Down");
end;
{$ENDREGION}

{$REGION Application Entry Point}
class method MainService.Main;
begin
  System.ServiceProcess.ServiceBase.Run(new MainService);
end;
{$ENDREGION}

end.
