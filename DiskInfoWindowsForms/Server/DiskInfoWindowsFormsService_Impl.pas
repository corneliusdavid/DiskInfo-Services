//------------------------------------------------------------------------------
// <autogenerated>
//     This Oxygene source code was generated by a tool.
//     Runtime Version: 4.0.30319.34014
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </autogenerated>
//------------------------------------------------------------------------------

{$HIDE H7}
{$HIDE W1}
{$HIDE W27}
{$HIDE H11}

namespace DiskInfoWindowsForms;

interface

uses
  System,
  RemObjects.SDK,
  RemObjects.SDK.Types,
  RemObjects.SDK.Server,
  RemObjects.SDK.Server.ClassFactories;
  
type
  [RemObjects.SDK.Server.ClassFactories.StandardClassFactory]
  [RemObjects.SDK.Server.Service(Name := 'DiskInfoWindowsFormsService', InvokerClass := typeOf(DiskInfoWindowsFormsService_Invoker), ActivatorClass := typeOf(DiskInfoWindowsFormsService_Activator))]
  DiskInfoWindowsFormsService = public class(RemObjects.SDK.Server.Service, IDiskInfoWindowsFormsService)
  private 
    method InitializeComponent;
    var components: System.ComponentModel.Container := nil;
  protected 
    method Dispose(disposing: System.Boolean); override;
  public 
    constructor;
    constructor(sessionManager: ISessionManager; eventManager: IEventSinkManager);
    method GetServerTime: System.DateTime; virtual;
    method CurrentDiskName: System.String;
    method VolumeName(DiskName: System.String): System.String;
    method DiskType(DiskName: System.String): System.String;
    method TotalDiskSize(DiskName: System.String): System.Int64;
    method TotalDiskFree(DiskName: System.String): System.Int64;
  end;
  
implementation

uses
  DiskInfoLib;

{ DiskInfoWindowsFormsService }

constructor DiskInfoWindowsFormsService;
begin
  constructor(nil, nil);
end;

constructor DiskInfoWindowsFormsService(sessionManager: ISessionManager; eventManager: IEventSinkManager);
begin
  inherited constructor(sessionManager, eventManager);
  self.InitializeComponent();
end;

method DiskInfoWindowsFormsService.InitializeComponent;
begin
end;

method DiskInfoWindowsFormsService.Dispose(disposing: System.Boolean);
begin
  if disposing then begin
    if (self.components <> nil) then begin
      self.components.Dispose();
    end;
  end;
  inherited Dispose(disposing);
end;

method DiskInfoWindowsFormsService.GetServerTime: System.DateTime;
begin
  result := DateTime.Now;
end;

method DiskInfoWindowsFormsService.CurrentDiskName: String;
var
  di: DiskInfo := new DiskInfo;
begin
  result := di.CurrentDiskName;
end;

method DiskInfoWindowsFormsService.VolumeName(DiskName: String): String;
var
  di: DiskInfo := new DiskInfo;
begin
  result := di.VolumeName(DiskName);
end;

method DiskInfoWindowsFormsService.DiskType(DiskName: String): String;
var
  di: DiskInfo := new DiskInfo;
begin
  result := di.DiskType(DiskName);
end;

method DiskInfoWindowsFormsService.TotalDiskSize(DiskName: String): Int64;
var
  di: DiskInfo := new DiskInfo;
begin
  result := di.TotalDiskSize(DiskName);
end;

method DiskInfoWindowsFormsService.TotalDiskFree(DiskName: String): Int64;
var
  di: DiskInfo := new DiskInfo;
begin
  result := di.TotalDiskFree(DiskName);
end;

end.
