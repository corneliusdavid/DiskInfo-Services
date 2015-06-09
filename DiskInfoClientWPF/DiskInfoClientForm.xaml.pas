namespace DiskInfoClientWPF;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Windows,
  System.Windows.Controls,
  System.Windows.Data,
  System.Windows.Documents,
  System.Windows.Media,
  System.Windows.Navigation,
  System.Windows.Shapes,
  DiskInfoService;

type
  DiskInfoClientForm = public partial class(System.Windows.Window)
  private
    method btnDiskFree_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
    method btnDiskSize_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
    method btnDiskType_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
    method btnVolName_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
    method btnDiskName_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
    method btnGetTime_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
    DiskInfoServices: IDiskInfoService;
  public
    constructor;
  end;
  
implementation

constructor DiskInfoClientForm;
begin
  InitializeComponent();

  DiskInfoServices := CoDiskInfoService.Create('http://173.248.153.144:8099/bin');
end;

method DiskInfoClientForm.btnGetTime_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
begin
  var dt := DiskInfoServices.GetServerTime;

  lblDiskInfo.Content := 'Server time: ' + dt.ToString;
end;

method DiskInfoClientForm.btnDiskName_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
begin
  var s := DiskInfoServices.CurrentDiskName;

  lblDiskInfo.Content := 'Server Disk Name: ' + s;
end;

method DiskInfoClientForm.btnVolName_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
begin
  var s := DiskInfoServices.VolumeName(DiskInfoServices.CurrentDiskName);

  lblDiskInfo.Content := 'Server Volume Name: ' + s;
end;

method DiskInfoClientForm.btnDiskType_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
begin
  var s := DiskInfoServices.DiskType(DiskInfoServices.CurrentDiskName);

  lblDiskInfo.Content := 'Server Disk Type: ' + s;
end;

method DiskInfoClientForm.btnDiskSize_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
begin
  var zb := DiskInfoServices.TotalDiskSize(DiskInfoServices.CurrentDiskName);
  var zk := zb / 1024;
  var zm := zk / 1024;
  var zg := zm / 1024;

  lblDiskInfo.Content := 'Server Disk Size: ' + zm.ToString('N0') + ' MB (' + zg.ToString('N0') + ' GB)';
end;

method DiskInfoClientForm.btnDiskFree_Click(sender: System.Object; e: System.Windows.RoutedEventArgs);
begin
  var fb := DiskInfoServices.TotalDiskFree(DiskInfoServices.CurrentDiskName);
  var fk := fb / 1024;
  var fm := fk / 1024;
  var fg := fm / 1024;

  lblDiskInfo.Content := 'Server Disk Free: ' + fk.ToString('N0') + ' MB (' + fg.ToString('N0') + ' GB)';
end;
  
end.
