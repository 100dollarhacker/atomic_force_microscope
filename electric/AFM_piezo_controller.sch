<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="mil" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SOP65P640X120-16N">
<packages>
<package name="SOP65P640X120-16N">
<circle x="-4.34" y="2.685" radius="0.1" width="0.2" layer="21"/>
<circle x="-4.34" y="2.685" radius="0.1" width="0.2" layer="51"/>
<wire x1="-2.25" y1="2.55" x2="2.25" y2="2.55" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-2.55" x2="2.25" y2="-2.55" width="0.127" layer="51"/>
<wire x1="-2.25" y1="2.8" x2="2.25" y2="2.8" width="0.127" layer="21"/>
<wire x1="-2.25" y1="-2.8" x2="2.25" y2="-2.8" width="0.127" layer="21"/>
<wire x1="-2.25" y1="2.55" x2="-2.25" y2="-2.55" width="0.127" layer="51"/>
<wire x1="2.25" y1="2.55" x2="2.25" y2="-2.55" width="0.127" layer="51"/>
<wire x1="-3.855" y1="2.8" x2="3.855" y2="2.8" width="0.05" layer="39"/>
<wire x1="-3.855" y1="-2.8" x2="3.855" y2="-2.8" width="0.05" layer="39"/>
<wire x1="-3.855" y1="2.8" x2="-3.855" y2="-2.8" width="0.05" layer="39"/>
<wire x1="3.855" y1="2.8" x2="3.855" y2="-2.8" width="0.05" layer="39"/>
<text x="-3.72" y="-2.977" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<text x="-3.72" y="2.977" size="1.27" layer="25">&gt;NAME</text>
<smd name="1" x="-2.87" y="2.275" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="2" x="-2.87" y="1.625" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="3" x="-2.87" y="0.975" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="4" x="-2.87" y="0.325" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="5" x="-2.87" y="-0.325" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="6" x="-2.87" y="-0.975" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="7" x="-2.87" y="-1.625" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="8" x="-2.87" y="-2.275" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="9" x="2.87" y="-2.275" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="10" x="2.87" y="-1.625" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="11" x="2.87" y="-0.975" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="12" x="2.87" y="-0.325" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="13" x="2.87" y="0.325" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="14" x="2.87" y="0.975" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="15" x="2.87" y="1.625" dx="1.47" dy="0.41" layer="1" roundness="25"/>
<smd name="16" x="2.87" y="2.275" dx="1.47" dy="0.41" layer="1" roundness="25"/>
</package>
</packages>
<symbols>
</symbols>
<devicesets>
<deviceset name="SOP65P640X120-16N" prefix="U">
<gates>
</gates>
<devices>
<device name="" package="SOP65P640X120-16N">
<technologies>
<technology name="">
<attribute name="A1_MIN" value="0.05"/>
<attribute name="A_MAX" value="1.2"/>
<attribute name="A_MIN" value="1.2"/>
<attribute name="A_NOM" value="1.2"/>
<attribute name="B_MAX" value="0.3"/>
<attribute name="B_MIN" value="0.19"/>
<attribute name="B_NOM" value="0.245"/>
<attribute name="D1_MAX" value=""/>
<attribute name="D1_MIN" value=""/>
<attribute name="D1_NOM" value=""/>
<attribute name="D2_MAX" value="0.0"/>
<attribute name="DMAX" value=""/>
<attribute name="DMIN" value=""/>
<attribute name="DNOM" value=""/>
<attribute name="D_MAX" value="5.1"/>
<attribute name="D_MIN" value="4.9"/>
<attribute name="D_NOM" value="5.0"/>
<attribute name="E1_MAX" value="4.5"/>
<attribute name="E1_MIN" value="4.3"/>
<attribute name="E1_NOM" value="4.4"/>
<attribute name="E2_MAX" value="0.0"/>
<attribute name="EMAX" value=""/>
<attribute name="EMIN" value=""/>
<attribute name="ENOM" value="0.65"/>
<attribute name="E_MAX" value="6.4"/>
<attribute name="E_MIN" value="6.4"/>
<attribute name="E_NOM" value="6.4"/>
<attribute name="L1_MAX" value=""/>
<attribute name="L1_MIN" value=""/>
<attribute name="L1_NOM" value=""/>
<attribute name="L_MAX" value="0.75"/>
<attribute name="L_MIN" value="0.45"/>
<attribute name="L_NOM" value="0.6"/>
<attribute name="MANUFACTURER" value="Analog Devices"/>
<attribute name="PACKAGE_TYPE" value=""/>
<attribute name="PINS" value=""/>
<attribute name="PIN_COUNT" value="16.0"/>
<attribute name="SNAPEDA_PACKAGE_ID" value="105572"/>
<attribute name="STANDARD" value="IPC 7351B"/>
<attribute name="VACANCIES" value=""/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="SOP65P640X120-16N" deviceset="SOP65P640X120-16N" device=""/>
<part name="U2" library="SOP65P640X120-16N" deviceset="SOP65P640X120-16N" device=""/>
<part name="U3" library="SOP65P640X120-16N" deviceset="SOP65P640X120-16N" device=""/>
<part name="U4" library="SOP65P640X120-16N" deviceset="SOP65P640X120-16N" device=""/>
<part name="U5" library="SOP65P640X120-16N" deviceset="SOP65P640X120-16N" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
