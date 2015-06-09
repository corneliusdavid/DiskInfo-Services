namespace DiskInfoService;

interface

{$HIDE H7}

uses
  System.ComponentModel,
  System.Configuration.Install;

type
  /// <summary>
  /// Summary description for ProjectInstaller.
  /// </summary>
  ProjectInstaller = public partial class
  {$REGION Installer Designer generated fields}
  protected
    
  private
    serviceProcessInstaller: System.ServiceProcess.ServiceProcessInstaller;
    serviceInstaller: System.ServiceProcess.ServiceInstaller;
    components: System.ComponentModel.IContainer := NIL;
    method InitializeComponent;
  public
    method Dispose(disposing:Boolean); override;
  {$ENDREGION}
  end;

implementation

{$ENDREGION}

method ProjectInstaller.Dispose(disposing: Boolean);
begin
  if disposing AND assigned(components) then begin
    components.Dispose;
  end;
  inherited;
end;

method ProjectInstaller.InitializeComponent;
begin
  self.serviceProcessInstaller := new System.ServiceProcess.ServiceProcessInstaller();
  self.serviceInstaller := new System.ServiceProcess.ServiceInstaller();
  //  serviceProcessInstaller
  self.serviceProcessInstaller.Account := System.ServiceProcess.ServiceAccount.LocalSystem;
  self.serviceProcessInstaller.Password := nil;
  self.serviceProcessInstaller.Username := nil;
  self.serviceProcessInstaller.AfterInstall += new System.Configuration.Install.InstallEventHandler(@self.serviceProcessInstaller_AfterInstall);
  //  serviceInstaller
  self.serviceInstaller.DelayedAutoStart := true;
  self.serviceInstaller.Description := DiskInfoServiceClass.sDiskInfoServiceDescription;
  self.serviceInstaller.DisplayName := DiskInfoServiceClass.sDiskInfoServiceDisplayName;
  self.serviceInstaller.ServiceName := DiskInfoServiceClass.sDiskInfoServiceName;
  self.serviceInstaller.StartType := System.ServiceProcess.ServiceStartMode.Automatic;
  //  ProjectInstaller
  self.Installers.AddRange(array of System.Configuration.Install.Installer([self.serviceProcessInstaller, self.serviceInstaller]));
end;

end.