namespace DiskInfoWindowsForms;

interface

uses
  System.Windows.Forms, 
  System.Drawing,
  RemObjects.SDK,
  RemObjects.SDK.Server;

type
  MainForm = partial class(System.Windows.Forms.Form)
  protected
    method Dispose(aDisposing: boolean); override;
  public
    constructor;
  end;

implementation

{$REGION Construction and Disposition}
constructor MainForm;
begin
  //
  // Required for Windows Form Designer support
  //
  InitializeComponent();

  //
  // TODO: Add any constructor code after InitializeComponent call
  //
end;

method MainForm.Dispose(aDisposing: boolean);
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

end.
