namespace DiskInfoWindowsForms;

{$HIDE H7}

interface

uses
  System.Windows.Forms, 
  System.Drawing,
  RemObjects.SDK,
  RemObjects.SDK.Server;

type
  MainForm = partial class
  {$REGION Windows Form Designer generated fields}
  private
  {$region designer-generated code}
    binMessage: RemObjects.SDK.BinMessage;
  {$endregion}
    poweredByButton: RemObjects.SDK.PoweredByButton;
    serverChannel: RemObjects.SDK.Server.IpHttpServerChannel;
    
    components: System.ComponentModel.IContainer;
    soapMessage: RemObjects.SDK.SoapMessage;
    method InitializeComponent;
  {$ENDREGION}
  end;

implementation

{$REGION Windows Form Designer generated code}
method MainForm.InitializeComponent;
begin
  self.components := new System.ComponentModel.Container();
  var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeOf(MainForm));
  self.poweredByButton := new RemObjects.SDK.PoweredByButton();
  self.binMessage := new RemObjects.SDK.BinMessage();
  self.serverChannel := new RemObjects.SDK.Server.IpHttpServerChannel(self.components);
  self.soapMessage := new RemObjects.SDK.SoapMessage();
  (self.serverChannel as System.ComponentModel.ISupportInitialize).BeginInit();
  self.SuspendLayout();
  //  poweredByButton
  self.poweredByButton.ApplicationType := RemObjects.SDK.ApplicationType.Server;
  self.poweredByButton.Cursor := System.Windows.Forms.Cursors.Hand;
  self.poweredByButton.Location := new System.Drawing.Point(40, 8);
  self.poweredByButton.Name := 'poweredByButton';
  self.poweredByButton.Size := new System.Drawing.Size(212, 48);
  self.poweredByButton.TabIndex := 0;
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
  //  MainForm
  self.AutoScaleBaseSize := new System.Drawing.Size(5, 13);
  self.ClientSize := new System.Drawing.Size(292, 69);
  self.Controls.&Add(self.poweredByButton);
  self.Icon := resources.GetObject('$this.Icon') as System.Drawing.Icon;
  self.Name := 'MainForm';
  self.Text := 'RemObjects SDK for .NET Server';
  (self.serverChannel as System.ComponentModel.ISupportInitialize).EndInit();
  self.ResumeLayout(false);
end;
{$ENDREGION}

end.