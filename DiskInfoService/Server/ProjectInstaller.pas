namespace DiskInfoService;

interface

uses
  System.ComponentModel,
  System.Configuration.Install, 
  System.Reflection;

type
  /// <summary>
  /// Summary description for ProjectInstaller.
  /// </summary>
  [RunInstaller(true)]
  ProjectInstaller = public partial class(System.Configuration.Install.Installer) 
  protected
  private
    method serviceProcessInstaller_AfterInstall(sender: System.Object; e: System.Configuration.Install.InstallEventArgs);
  public
    constructor;
  end;

implementation

{$REGION Construction and Disposition}
constructor ProjectInstaller;
begin
  //
  // Required for Installer Designer support
  //
  InitializeComponent();

  //
  // TODO: Add any constructor code after InitializeComponent call
  //
end;

{$ENDREGION}

method ProjectInstaller.serviceProcessInstaller_AfterInstall(sender: System.Object; e: System.Configuration.Install.InstallEventArgs);
begin
  
  Console.WriteLine('Assembly: ' +&Assembly.GetExecutingAssembly.GetName);
end;

end.
