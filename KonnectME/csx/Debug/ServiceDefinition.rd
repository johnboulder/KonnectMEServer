<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="KonnectME" generation="1" functional="0" release="0" Id="103d1d58-c2f3-413b-8356-6ca12c3cd5be" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="KonnectMEGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebRole1:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/KonnectME/KonnectMEGroup/LB:WebRole1:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" />
          </inToChannel>
        </inPort>
        <inPort name="WebRole1:Web Endpoint" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/KonnectME/KonnectMEGroup/LB:WebRole1:Web Endpoint" />
          </inToChannel>
        </inPort>
        <inPort name="WorkerRole:Media_Endpoint" protocol="udp">
          <inToChannel>
            <lBChannelMoniker name="/KonnectME/KonnectMEGroup/LB:WorkerRole:Media_Endpoint" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WebRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/KonnectME/KonnectMEGroup/MapWebRole1Instances" />
          </maps>
        </aCS>
        <aCS name="WorkerRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/KonnectME/KonnectMEGroup/MapWorkerRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebRole1:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint">
          <toPorts>
            <inPortMoniker name="/KonnectME/KonnectMEGroup/WebRole1/Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:WebRole1:Web Endpoint">
          <toPorts>
            <inPortMoniker name="/KonnectME/KonnectMEGroup/WebRole1/Web Endpoint" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:WorkerRole:Media_Endpoint">
          <toPorts>
            <inPortMoniker name="/KonnectME/KonnectMEGroup/WorkerRole/Media_Endpoint" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWebRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/KonnectME/KonnectMEGroup/WebRole1Instances" />
          </setting>
        </map>
        <map name="MapWorkerRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/KonnectME/KonnectMEGroup/WorkerRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebRole1" generation="1" functional="0" release="0" software="C:\Users\dell\Documents\Visual Studio 2013\Projects\Workspace\KonnectMEServer\KonnectME\csx\Debug\roles\WebRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" protocol="tcp" portRanges="8172" />
              <inPort name="Web Endpoint" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint&quot; /&gt;&lt;e name=&quot;Web Endpoint&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WorkerRole&quot;&gt;&lt;e name=&quot;Media_Endpoint&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/KonnectME/KonnectMEGroup/WebRole1Instances" />
            <sCSPolicyUpdateDomainMoniker name="/KonnectME/KonnectMEGroup/WebRole1UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/KonnectME/KonnectMEGroup/WebRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="WorkerRole" generation="1" functional="0" release="0" software="C:\Users\dell\Documents\Visual Studio 2013\Projects\Workspace\KonnectMEServer\KonnectME\csx\Debug\roles\WorkerRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Media_Endpoint" protocol="udp" portRanges="11000" />
            </componentports>
            <settings>
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WorkerRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint&quot; /&gt;&lt;e name=&quot;Web Endpoint&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WorkerRole&quot;&gt;&lt;e name=&quot;Media_Endpoint&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/KonnectME/KonnectMEGroup/WorkerRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/KonnectME/KonnectMEGroup/WorkerRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/KonnectME/KonnectMEGroup/WorkerRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WebRole1UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="WorkerRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WebRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="WorkerRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WebRole1Instances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="WorkerRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="ce491f3a-9c56-446a-bbb2-4d61fe488a24" ref="Microsoft.RedDog.Contract\ServiceContract\KonnectMEContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="3ba14ac1-3d83-45c4-894e-fe31b11860f5" ref="Microsoft.RedDog.Contract\Interface\WebRole1:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/KonnectME/KonnectMEGroup/WebRole1:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="079bc8f2-b3b0-426d-8141-a05a6b6be23d" ref="Microsoft.RedDog.Contract\Interface\WebRole1:Web Endpoint@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/KonnectME/KonnectMEGroup/WebRole1:Web Endpoint" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="4cd95272-47f9-421d-bcec-cee1dc30636e" ref="Microsoft.RedDog.Contract\Interface\WorkerRole:Media_Endpoint@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/KonnectME/KonnectMEGroup/WorkerRole:Media_Endpoint" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>