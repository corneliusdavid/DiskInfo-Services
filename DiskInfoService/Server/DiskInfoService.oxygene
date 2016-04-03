<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup>
    <RootNamespace>DiskInfoService</RootNamespace>
    <OutputType>Exe</OutputType>
    <AssemblyName>DiskInfoService</AssemblyName>
    <AllowGlobals>False</AllowGlobals>
    <AllowLegacyWith>False</AllowLegacyWith>
    <AllowLegacyCode>False</AllowLegacyCode>
    <AllowLegacyOutParams>True</AllowLegacyOutParams>
    <AllowUnsafeCode>False</AllowUnsafeCode>
    <ApplicationIcon>Properties\App.ico</ApplicationIcon>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <TargetFrameworkVersion>v4.0</TargetFrameworkVersion>
    <ProjectGuid>{f862bd76-0760-408f-9f8c-20b3b31659df}</ProjectGuid>
    <Name>DiskInfoService</Name>
    <DefaultUses />
    <StartupClass />
    <InternalAssemblyName />
    <TargetFrameworkProfile />
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
    <Reference Include="mscorlib">
      <HintPath>C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.5\mscorlib.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="RemObjects.SDK.ZeroConf">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.ZeroConf.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="RemObjects.SDK.ZLib">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.ZLib.dll</HintPath>
      <Name>RemObjects.SDK.ZLib.dll</Name>
      <Private>True</Private>
    </Reference>
    <Reference Include="RemObjects.InternetPack">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.InternetPack.dll</HintPath>
      <Name>RemObjects.InternetPack.dll</Name>
      <Private>True</Private>
    </Reference>
    <Reference Include="RemObjects.SDK">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.dll</HintPath>
      <Name>RemObjects.SDK.dll</Name>
      <Private>True</Private>
    </Reference>
    <Reference Include="RemObjects.SDK.Server">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.Server.dll</HintPath>
      <Name>RemObjects.SDK.Server.dll</Name>
      <Private>True</Private>
    </Reference>
    <Reference Include="System">
      <HintPath>C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.5\System.dll</HintPath>
    </Reference>
    <Reference Include="System.Configuration">
      <HintPath>C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.5\System.Configuration.dll</HintPath>
    </Reference>
    <Reference Include="System.Configuration.Install">
      <HintPath>C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.5\System.Configuration.Install.dll</HintPath>
    </Reference>
    <Reference Include="System.Core">
      <HintPath>C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.5\System.Core.dll</HintPath>
    </Reference>
    <Reference Include="System.ServiceProcess">
      <HintPath>C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.5\System.ServiceProcess.dll</HintPath>
    </Reference>
  </ItemGroup>
  <ItemGroup>
    <Compile Include="DiskInfoServiceLib_Intf.pas" />
    <Compile Include="DiskInfoServiceLib_Invk.pas" />
    <Compile Include="DiskInfoService_Impl.pas">
      <SubType>Component</SubType>
      <DesignableClassName>DiskInfoService.DiskInfoService</DesignableClassName>
    </Compile>
    <Compile Include="DiskInfoServiceClass.pas">
      <DesignableClassName>DiskInfoService.DiskInfoServiceClass</DesignableClassName>
      <SubType>Component</SubType>
    </Compile>
    <EmbeddedResource Include="Properties\licenses.licx" />
    <EmbeddedResource Include="DiskInfoServiceClass.resx">
      <DependentUpon>DiskInfoServiceClass.pas</DependentUpon>
    </EmbeddedResource>
    <Compile Include="ProjectInstaller.pas">
      <SubType>Component</SubType>
      <DesignableClassName>DiskInfoService.ProjectInstaller</DesignableClassName>
    </Compile>
    <Compile Include="ProjectInstaller.Designer.pas">
      <SubType>Component</SubType>
      <DesignableClassName>DiskInfoService.ProjectInstaller</DesignableClassName>
    </Compile>
    <EmbeddedResource Include="ProjectInstaller.resx" />
    <Compile Include="Properties\AssemblyInfo.pas" />
    <Rodl Include="DiskInfoService.RODL" />
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