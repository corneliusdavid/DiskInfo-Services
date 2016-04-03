<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup>
    <RootNamespace>DiskInfoWindowsForms</RootNamespace>
    <OutputType>winexe</OutputType>
    <AssemblyName>DiskInfoWindowsForms</AssemblyName>
    <AllowGlobals>False</AllowGlobals>
    <AllowLegacyWith>False</AllowLegacyWith>
    <AllowLegacyCode>False</AllowLegacyCode>
    <AllowLegacyOutParams>True</AllowLegacyOutParams>
    <AllowUnsafeCode>False</AllowUnsafeCode>
    <ApplicationIcon>Properties\App.ico</ApplicationIcon>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <TargetFrameworkVersion>v4.5</TargetFrameworkVersion>
    <ProjectGuid>{e2b05bec-4c42-4309-8b02-3748d477ac35}</ProjectGuid>
    <Name>DiskInfoWindowsForms</Name>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <OutputPath>.\bin\Debug</OutputPath>
    <DefineConstants>DEBUG;TRACE;</DefineConstants>
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <EnableAsserts>True</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
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
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="mscorlib" />
    <Reference Include="RemObjects.SDK.ZeroConf">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.ZeroConf.dll</HintPath>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.Drawing" />
    <Reference Include="System.Windows.Forms" />
    <Reference Include="RemObjects.SDK.ZLib">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.ZLib.dll</HintPath>
      <Name>RemObjects.SDK.ZLib.dll</Name>
    </Reference>
    <Reference Include="RemObjects.InternetPack">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.InternetPack.dll</HintPath>
      <Name>RemObjects.InternetPack.dll</Name>
    </Reference>
    <Reference Include="RemObjects.SDK">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.dll</HintPath>
      <Name>RemObjects.SDK.dll</Name>
    </Reference>
    <Reference Include="RemObjects.SDK.Server">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.Server.dll</HintPath>
      <Name>RemObjects.SDK.Server.dll</Name>
    </Reference>
  </ItemGroup>
  <ItemGroup>
    <Compile Include="DiskInfoWindowsFormsLibrary_Intf.pas" />
    <Compile Include="DiskInfoWindowsFormsLibrary_Invk.pas" />
    <Compile Include="DiskInfoWindowsFormsService_Impl.pas">
      <SubType>Component</SubType>
      <DesignableClassName>DiskInfoWindowsForms.DiskInfoWindowsFormsService</DesignableClassName>
    </Compile>
    <Compile Include="Main.pas">
      <Subtype>Form</Subtype>
      <DesignableClassName>DiskInfoWindowsForms.MainForm</DesignableClassName>
    </Compile>
    <Compile Include="Main.Designer.pas">
      <SubType>Form</SubType>
      <DesignableClassName>DiskInfoWindowsForms.MainForm</DesignableClassName>
    </Compile>
    <EmbeddedResource Include="Properties\licenses.licx" />
    <EmbeddedResource Include="Main.resx" />
    <Compile Include="Program.pas" />
    <Compile Include="Properties\AssemblyInfo.pas" />
    <Rodl Include="DiskInfoWindowsForms.RODL" />
    <Content Include="Properties\App.ico" />
    <None Include="Getting Started.html">
      <ExcludeFromBuild>Yes</ExcludeFromBuild>
    </None>
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Properties\" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\..\..\lib\DiskInfo\DiskInfo.oxygene">
      <Name>DiskInfo</Name>
      <Project>{ea8ba804-fce9-4c91-adb7-71f8e2dd4d9d}</Project>
      <Private>True</Private>
      <HintPath>..\..\..\lib\DiskInfo\bin\Debug\DiskInfo.dll</HintPath>
    </ProjectReference>
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Elements\RemObjects.Elements.Echoes.targets" />
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\RemObjects SDK\RemObjects.SDK.targets" />
  <PropertyGroup>
    <PreBuildEvent />
  </PropertyGroup>
</Project>