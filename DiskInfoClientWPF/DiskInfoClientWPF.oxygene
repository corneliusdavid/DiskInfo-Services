<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" ToolsVersion="4.0">
  <PropertyGroup>
    <ProductVersion>3.5</ProductVersion>
    <ProjectGuid>{84ca72f8-a475-41e1-8f29-3c8956f2cf95}</ProjectGuid>
    <RootNamespace>DiskInfoClientWPF</RootNamespace>
    <OutputType>winexe</OutputType>
    <AssemblyName>DiskInfoClientWPF</AssemblyName>
    <AllowGlobals>False</AllowGlobals>
    <AllowLegacyWith>False</AllowLegacyWith>
    <AllowLegacyOutParams>False</AllowLegacyOutParams>
    <AllowLegacyCreate>False</AllowLegacyCreate>
    <AllowUnsafeCode>False</AllowUnsafeCode>
    <ApplicationIcon>Properties\App.ico</ApplicationIcon>
    <ProjectTypeGuids>{89896941-7261-4476-8385-4DA3CE9FDB83};{60dc8134-eba5-43b8-bcc9-bb4bc16c2548};{656346D9-4656-40DA-A068-22D5425D4639}</ProjectTypeGuids>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <TargetFrameworkVersion>v4.5</TargetFrameworkVersion>
    <Name>DiskInfoClientWPF</Name>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <Conditionals>DEBUG;TRACE</Conditionals>
    <OutputPath>.\bin\Debug\</OutputPath>
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>True</GenerateMDB>
    <EnableAsserts>True</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
    <OutputPath>.\bin\Release</OutputPath>
    <GeneratePDB>False</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <EnableAsserts>False</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="mscorlib" />
    <Reference Include="PresentationCore" />
    <Reference Include="PresentationFramework" />
    <Reference Include="ReachFramework" />
    <Reference Include="RemObjects.InternetPack">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.InternetPack.dll</HintPath>
    </Reference>
    <Reference Include="RemObjects.SDK">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.dll</HintPath>
    </Reference>
    <Reference Include="RemObjects.SDK.ZLib">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.ZLib.dll</HintPath>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.Data" />
    <Reference Include="System.Drawing" />
    <Reference Include="System.Xaml">
      <RequiredTargetFramework>4.0</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Xml" />
    <Reference Include="UIAutomationProvider" />
    <Reference Include="UIAutomationTypes" />
    <Reference Include="WindowsBase" />
    <Reference Include="System.Core">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Xml.Linq">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Data.DataSetExtensions">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
  </ItemGroup>
  <ItemGroup>
    <ApplicationDefinition Include="App.xaml" />
    <Compile Include="..\DiskInfoService\Server\DiskInfoServiceLib_Intf.pas">
      <Link>DiskInfoServiceLib_Intf.pas</Link>
    </Compile>
    <Compile Include="App.xaml.pas" />
    <Page Include="DiskInfoClientForm.xaml">
      <Generator>MSBuild:Compile</Generator>
    </Page>
    <Compile Include="DiskInfoClientForm.xaml.pas">
      <DependentUpon>DiskInfoClientForm.xaml</DependentUpon>
    </Compile>
    <None Include="Properties\App.ico" />
    <Compile Include="Properties\AssemblyInfo.pas" />
    <Compile Include="Properties\Resources.Designer.pas" />
    <EmbeddedResource Include="Properties\Resources.resx">
      <Generator>ResXFileCodeGenerator</Generator>
    </EmbeddedResource>
    <Compile Include="Properties\Settings.Designer.pas" />
    <None Include="Properties\Settings.settings">
      <Generator>SettingsSingleFileGenerator</Generator>
    </None>
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Properties\" />
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Oxygene\RemObjects.Oxygene.Echoes.targets" />
</Project>