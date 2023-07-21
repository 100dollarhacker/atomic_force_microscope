<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="mil" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
<attributes/>
<variantdefs/>
<libraries>
<library name="common">
<packages>
<package name="HDR-2X1T/2.54X2.54/3X5">
<description>Datasheet: &lt;a href="http://www.molex.com/pdm_docs/sd/901310126_sd.pdf"&gt;http://www.molex.com/pdm_docs/sd/901310126_sd.pdf&lt;/a&gt;</description>
<pad name="1" x="0" y="-1.27" drill="1.1" shape="square" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="0" y="1.27" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-1.27" y1="2.54" x2="1.27" y2="2.54"/>
<wire layer="21" width="0.12" x1="1.27" y1="2.54" x2="1.27" y2="-2.54"/>
<wire layer="21" width="0.12" x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54"/>
<wire layer="21" width="0.12" x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54"/>
</package>
<package name="HDR-1X10T/2.54/25X2">
<description>Datasheet: &lt;a href="http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&amp;DocNm=644456&amp;DocType=Customer+Drawing&amp;DocLang=English"&gt;http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&amp;DocNm=644456&amp;DocType=Customer+Drawing&amp;DocLang=English&lt;/a&gt;</description>
<pad name="1" x="-11.43" y="0" drill="1.1" shape="square" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="-8.89" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="3" x="-6.35" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="4" x="-3.81" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="5" x="-1.27" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="6" x="1.27" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="7" x="3.81" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="8" x="6.35" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="9" x="8.89" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="10" x="11.43" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-12.701" y1="1.27" x2="12.701" y2="1.27"/>
<wire layer="21" width="0.12" x1="12.701" y1="1.27" x2="12.701" y2="-1.27"/>
<wire layer="21" width="0.12" x1="12.701" y1="-1.27" x2="-12.701" y2="-1.27"/>
<wire layer="21" width="0.12" x1="-12.701" y1="-1.27" x2="-12.701" y2="1.27"/>
<wire layer="51" width="0.12" x1="-13.68" y1="1.52" x2="13.68" y2="1.52"/>
<text x="-2.566" y="2.665" size="0.493" layer="51" font="vector" ratio="10" rot="R0" align="top-left" distance="92">BOARD EDGE</text>
</package>
<package name="RES_0805">
<smd name="1" x="-0.95" y="0" layer="1" dx="1.5" dy="1.3" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="0.95" y="0" layer="1" dx="1.5" dy="1.3" rot="R90" stop="yes" cream="yes" thermals="no"/>
</package>
<package name="CAP_0805">
<smd name="1" x="-0.95" y="0" layer="1" dx="1.5" dy="1.3" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="0.95" y="0" layer="1" dx="1.5" dy="1.3" rot="R90" stop="yes" cream="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-2.001" y1="-0.649" x2="-2.001" y2="0.649"/>
</package>
<package name="HDR-1X5T/2.54/12X2">
<pad name="1" x="-5.08" y="0" drill="1.1" shape="square" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="-2.54" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="3" x="0" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="4" x="2.54" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="5" x="5.08" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-6.351" y1="1.27" x2="6.351" y2="1.27"/>
<wire layer="21" width="0.12" x1="6.351" y1="1.27" x2="6.351" y2="-1.27"/>
<wire layer="21" width="0.12" x1="6.351" y1="-1.27" x2="-6.351" y2="-1.27"/>
<wire layer="21" width="0.12" x1="-6.351" y1="-1.27" x2="-6.351" y2="1.27"/>
<wire layer="51" width="0.12" x1="-7.6" y1="1.52" x2="7.6" y2="1.52"/>
<text x="-2.566" y="2.665" size="0.493" layer="51" font="vector" ratio="10" rot="R0" align="top-left" distance="92">BOARD EDGE</text>
</package>
<package name="RES_0402">
<smd name="1" x="-0.65" y="0" layer="1" dx="0.7" dy="0.9" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="0.65" y="0" layer="1" dx="0.7" dy="0.9" rot="R90" stop="yes" cream="yes" thermals="no"/>
</package>
<package name="AD5696RARUZ">
<smd name="1" x="-2.9" y="2.275" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="-2.9" y="1.625" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="3" x="-2.9" y="0.975" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="4" x="-2.9" y="0.325" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="5" x="-2.9" y="-0.325" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="6" x="-2.9" y="-0.975" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="7" x="-2.9" y="-1.625" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="8" x="-2.9" y="-2.275" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="9" x="2.9" y="-2.275" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="10" x="2.9" y="-1.625" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="11" x="2.9" y="-0.975" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="12" x="2.9" y="-0.325" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="13" x="2.9" y="0.325" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="14" x="2.9" y="0.975" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="15" x="2.9" y="1.625" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="16" x="2.9" y="2.275" layer="1" dx="0.4" dy="1.8" rot="R90" stop="yes" cream="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-1.604" y1="2.7" x2="-1.604" y2="-2.7"/>
<wire layer="21" width="0.12" x1="1.604" y1="2.7" x2="1.604" y2="-2.7"/>
<wire layer="21" width="0.12" x1="-1.604" y1="-2.7" x2="1.604" y2="-2.7"/>
<wire layer="21" width="0.12" x1="-1.604" y1="2.7" x2="-0.502" y2="2.7"/>
<wire layer="21" width="0.12" x1="0.502" y1="2.7" x2="1.604" y2="2.7"/>
<wire layer="21" width="0.12" x1="-0.502" y1="2.7" x2="0.502" y2="2.7" curve="180.136989"/>
</package>
<package name="SOIC-14/150MIL">
<smd name="1" x="-2.7" y="3.81" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="-2.7" y="2.54" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="3" x="-2.7" y="1.27" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="4" x="-2.7" y="0" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="5" x="-2.7" y="-1.27" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="6" x="-2.7" y="-2.54" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="7" x="-2.7" y="-3.81" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="8" x="2.7" y="-3.81" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="9" x="2.7" y="-2.54" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="10" x="2.7" y="-1.27" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="11" x="2.7" y="0" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="12" x="2.7" y="1.27" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="13" x="2.7" y="2.54" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="14" x="2.7" y="3.81" layer="1" dx="0.6" dy="2" rot="R90" stop="yes" cream="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-1.3" y1="4.3" x2="-1.3" y2="-4.3"/>
<wire layer="21" width="0.12" x1="1.3" y1="4.3" x2="1.3" y2="-4.3"/>
<wire layer="21" width="0.12" x1="-1.3" y1="-4.3" x2="1.3" y2="-4.3"/>
<wire layer="21" width="0.12" x1="-1.3" y1="4.3" x2="-0.5" y2="4.3"/>
<wire layer="21" width="0.12" x1="0.5" y1="4.3" x2="1.3" y2="4.3"/>
<wire layer="21" width="0.12" x1="-0.5" y1="4.3" x2="0.5" y2="4.3" curve="180.067676"/>
</package>
<package name="LTC3260_MSOP">
<smd name="1" x="-2.2" y="1.75" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="-2.2" y="1.25" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="3" x="-2.2" y="0.75" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="4" x="-2.2" y="0.25" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="5" x="-2.2" y="-0.25" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="6" x="-2.2" y="-0.75" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="7" x="-2.2" y="-1.25" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="8" x="-2.2" y="-1.75" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="9" x="2.2" y="-1.75" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="10" x="2.2" y="-1.25" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="11" x="2.2" y="-0.75" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="12" x="2.2" y="-0.25" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="13" x="2.2" y="0.25" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="14" x="2.2" y="0.75" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="15" x="2.2" y="1.25" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="16" x="2.2" y="1.75" layer="1" dx="0.3" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="17" x="0" y="0" layer="1" dx="1.6" dy="2.7" rot="R0" stop="yes" cream="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-1.1" y1="2" x2="-1.1" y2="-2"/>
<wire layer="21" width="0.12" x1="1.1" y1="-2" x2="1.1" y2="2"/>
<wire layer="21" width="0.12" x1="-1.1" y1="-2" x2="1.1" y2="-2"/>
<wire layer="21" width="0.12" x1="-1.1" y1="2" x2="-0.4" y2="2"/>
<wire layer="21" width="0.12" x1="0.4" y1="2" x2="1.1" y2="2"/>
<wire layer="21" width="0.12" x1="-0.4" y1="2" x2="0.4" y2="2" curve="180.069666"/>
</package>
</packages>
<symbols>
<symbol name="90131-0121">
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="0"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="5.08" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="0.635" y2="0"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="0.635" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="5.08" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-5.08" y1="2.54" x2="5.08" y2="2.54"/>
<wire layer="94" width="0.25" x1="5.08" y1="2.54" x2="5.08" y2="-2.54"/>
<wire layer="94" width="0.25" x1="5.08" y1="-2.54" x2="-5.08" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54"/>
<pin name="P1" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="1.27"/>
<pin name="P2" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="-1.27"/>
</symbol>
<symbol name="+5V">
<wire layer="94" width="0.25" x1="-2.54" y1="0" x2="2.54" y2="0"/>
<pin name="+5V" visible="pad" length="short" direction="sup" rot="R90" x="0" y="-2.54"/>
</symbol>
<symbol name="1-644456-0">
<wire layer="94" width="0.25" x1="-0.635" y1="11.43" x2="0.635" y2="12.7"/>
<wire layer="94" width="0.25" x1="-0.635" y1="11.43" x2="0.635" y2="10.16"/>
<wire layer="94" width="0.25" x1="-0.635" y1="11.43" x2="5.08" y2="11.43"/>
<wire layer="94" width="0.25" x1="-0.635" y1="8.89" x2="0.635" y2="10.16"/>
<wire layer="94" width="0.25" x1="-0.635" y1="8.89" x2="0.635" y2="7.62"/>
<wire layer="94" width="0.25" x1="-0.635" y1="8.89" x2="5.08" y2="8.89"/>
<wire layer="94" width="0.25" x1="-5.08" y1="12.7" x2="5.08" y2="12.7"/>
<wire layer="94" width="0.25" x1="5.08" y1="12.7" x2="5.08" y2="-12.7"/>
<wire layer="94" width="0.25" x1="5.08" y1="-12.7" x2="-5.08" y2="-12.7"/>
<wire layer="94" width="0.25" x1="-5.08" y1="-12.7" x2="-5.08" y2="12.7"/>
<wire layer="94" width="0.25" x1="-0.635" y1="6.35" x2="0.635" y2="7.62"/>
<wire layer="94" width="0.25" x1="-0.635" y1="6.35" x2="0.635" y2="5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="6.35" x2="5.08" y2="6.35"/>
<wire layer="94" width="0.25" x1="-0.635" y1="3.81" x2="0.635" y2="5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="3.81" x2="0.635" y2="2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="3.81" x2="5.08" y2="3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="0"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="5.08" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="0.635" y2="0"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="0.635" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="5.08" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-3.81" x2="0.635" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-3.81" x2="0.635" y2="-5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-3.81" x2="5.08" y2="-3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-6.35" x2="0.635" y2="-5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-6.35" x2="0.635" y2="-7.62"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-6.35" x2="5.08" y2="-6.35"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-8.89" x2="0.635" y2="-7.62"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-8.89" x2="0.635" y2="-10.16"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-8.89" x2="5.08" y2="-8.89"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-11.43" x2="0.635" y2="-10.16"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-11.43" x2="0.635" y2="-12.7"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-11.43" x2="5.08" y2="-11.43"/>
<pin name="F+" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="11.43"/>
<pin name="F-" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="8.89"/>
<pin name="T+" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="6.35"/>
<pin name="T-" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="3.81"/>
<pin name="P5" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="1.27"/>
<pin name="6" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="-1.27"/>
<pin name="A" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-3.81"/>
<pin name="B" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-6.35"/>
<pin name="C" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-8.89"/>
<pin name="D" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-11.43"/>
</symbol>
<symbol name="1-644456-0_3_0">
<wire layer="94" width="0.25" x1="-0.635" y1="11.43" x2="0.635" y2="12.7"/>
<wire layer="94" width="0.25" x1="-0.635" y1="11.43" x2="0.635" y2="10.16"/>
<wire layer="94" width="0.25" x1="-0.635" y1="11.43" x2="5.08" y2="11.43"/>
<wire layer="94" width="0.25" x1="-0.635" y1="8.89" x2="0.635" y2="10.16"/>
<wire layer="94" width="0.25" x1="-0.635" y1="8.89" x2="0.635" y2="7.62"/>
<wire layer="94" width="0.25" x1="-0.635" y1="8.89" x2="5.08" y2="8.89"/>
<wire layer="94" width="0.25" x1="-5.08" y1="12.7" x2="5.08" y2="12.7"/>
<wire layer="94" width="0.25" x1="5.08" y1="12.7" x2="5.08" y2="-12.7"/>
<wire layer="94" width="0.25" x1="5.08" y1="-12.7" x2="-5.08" y2="-12.7"/>
<wire layer="94" width="0.25" x1="-5.08" y1="-12.7" x2="-5.08" y2="12.7"/>
<wire layer="94" width="0.25" x1="-0.635" y1="6.35" x2="0.635" y2="7.62"/>
<wire layer="94" width="0.25" x1="-0.635" y1="6.35" x2="0.635" y2="5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="6.35" x2="5.08" y2="6.35"/>
<wire layer="94" width="0.25" x1="-0.635" y1="3.81" x2="0.635" y2="5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="3.81" x2="0.635" y2="2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="3.81" x2="5.08" y2="3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="0"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="5.08" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="0.635" y2="0"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="0.635" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-1.27" x2="5.08" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-3.81" x2="0.635" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-3.81" x2="0.635" y2="-5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-3.81" x2="5.08" y2="-3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-6.35" x2="0.635" y2="-5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-6.35" x2="0.635" y2="-7.62"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-6.35" x2="5.08" y2="-6.35"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-8.89" x2="0.635" y2="-7.62"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-8.89" x2="0.635" y2="-10.16"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-8.89" x2="5.08" y2="-8.89"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-11.43" x2="0.635" y2="-10.16"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-11.43" x2="0.635" y2="-12.7"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-11.43" x2="5.08" y2="-11.43"/>
<pin name="VC_P2" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="11.43"/>
<pin name="VC_P1" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="8.89"/>
<pin name="P3" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="6.35"/>
<pin name="Ldac" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="3.81"/>
<pin name="Vref" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="1.27"/>
<pin name="GND" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-1.27"/>
<pin name="5V" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-3.81"/>
<pin name="12V" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-6.35"/>
<pin name="I2C_SDA" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-8.89"/>
<pin name="I2C_SCL" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-11.43"/>
</symbol>
<symbol name="RES_0805">
<wire layer="94" width="0.25" x1="3.175" y1="-1.27" x2="3.81" y2="0"/>
<wire layer="94" width="0.25" x1="1.905" y1="1.27" x2="3.175" y2="-1.27"/>
<wire layer="94" width="0.25" x1="0.635" y1="-1.27" x2="1.905" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-1.905" y1="-1.27" x2="-0.635" y2="1.27"/>
<wire layer="94" width="0.25" x1="-3.175" y1="1.27" x2="-1.905" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-3.81" y1="0" x2="-3.175" y2="1.27"/>
<pin name="2" visible="pad" length="short" direction="pas" rot="R180" x="6.35" y="0"/>
<pin name="1" visible="pad" length="short" direction="pas" x="-6.35" y="0"/>
</symbol>
<symbol name="CAP_0805">
<wire layer="94" width="0.254" x1="0.944" y1="1.911" x2="0.944" y2="-1.911" curve="74.02156"/>
<wire layer="94" width="0.25" x1="-0.33" y1="-1.905" x2="-0.33" y2="1.905"/>
<wire layer="94" width="0.25" x1="0.305" y1="0" x2="1.27" y2="0"/>
<wire layer="94" width="0.25" x1="-1.27" y1="0" x2="-0.33" y2="0"/>
<pin name="2" visible="pad" length="short" direction="pas" rot="R180" x="3.81" y="0"/>
<pin name="1" visible="pad" length="short" direction="pas" x="-3.81" y="0"/>
</symbol>
<symbol name="+12V">
<wire layer="94" width="0.25" x1="-2.54" y1="0" x2="2.54" y2="0"/>
<pin name="+12V" visible="pad" length="short" direction="sup" rot="R90" x="0" y="-2.54"/>
</symbol>
<symbol name="GND">
<wire layer="94" width="0.25" x1="-1.905" y1="1.016" x2="1.905" y2="1.016"/>
<wire layer="94" width="0.25" x1="-1.27" y1="0" x2="1.27" y2="0"/>
<wire layer="94" width="0.25" x1="-0.508" y1="-1.016" x2="0.508" y2="-1.016"/>
<pin name="GND" visible="pad" length="short" direction="sup" rot="R270" x="0" y="3.556"/>
</symbol>
<symbol name="SDA">
<wire layer="94" width="0.25" x1="1.904" y1="1.905" x2="-1.904" y2="1.905"/>
<wire layer="94" width="0.25" x1="-1.904" y1="1.905" x2="-1.904" y2="-1.905"/>
<wire layer="94" width="0.25" x1="-1.904" y1="-1.905" x2="1.904" y2="-1.905"/>
<wire layer="94" width="0.25" x1="1.904" y1="-1.905" x2="1.904" y2="1.905"/>
<pin name="1" visible="both" length="short" direction="sup" rot="R180" x="4.444" y="0"/>
</symbol>
<symbol name="SCL">
<wire layer="94" width="0.25" x1="1.904" y1="1.905" x2="-1.904" y2="1.905"/>
<wire layer="94" width="0.25" x1="-1.904" y1="1.905" x2="-1.904" y2="-1.905"/>
<wire layer="94" width="0.25" x1="-1.904" y1="-1.905" x2="1.904" y2="-1.905"/>
<wire layer="94" width="0.25" x1="1.904" y1="-1.905" x2="1.904" y2="1.905"/>
<pin name="1" visible="both" length="short" direction="sup" rot="R180" x="4.444" y="0"/>
</symbol>
<symbol name="CON5M">
<wire layer="94" width="0.25" x1="-0.635" y1="-5.08" x2="0.635" y2="-6.35"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-5.08" x2="0.635" y2="-3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-5.08" x2="5.08" y2="-5.08"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-2.54" x2="0.635" y2="-3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-2.54" x2="0.635" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-2.54" x2="5.08" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="0" x2="0.635" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="0" x2="0.635" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="0" x2="5.08" y2="0"/>
<wire layer="94" width="0.25" x1="-0.635" y1="2.54" x2="0.635" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="2.54" x2="0.635" y2="3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="2.54" x2="5.08" y2="2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="5.08" x2="0.635" y2="3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="5.08" x2="0.635" y2="6.35"/>
<wire layer="94" width="0.25" x1="-0.635" y1="5.08" x2="5.08" y2="5.08"/>
<wire layer="94" width="0.25" x1="-5.08" y1="6.35" x2="5.08" y2="6.35"/>
<wire layer="94" width="0.25" x1="5.08" y1="6.35" x2="5.08" y2="-6.35"/>
<wire layer="94" width="0.25" x1="5.08" y1="-6.35" x2="-5.08" y2="-6.35"/>
<wire layer="94" width="0.25" x1="-5.08" y1="-6.35" x2="-5.08" y2="6.35"/>
<pin name="P1" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="-5.08"/>
<pin name="P2" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="-2.54"/>
<pin name="P3" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="0"/>
<pin name="P4" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="2.54"/>
<pin name="P5" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="5.08"/>
</symbol>
<symbol name="RES_0402">
<wire layer="94" width="0.25" x1="3.175" y1="-1.27" x2="3.81" y2="0"/>
<wire layer="94" width="0.25" x1="1.905" y1="1.27" x2="3.175" y2="-1.27"/>
<wire layer="94" width="0.25" x1="0.635" y1="-1.27" x2="1.905" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-1.905" y1="-1.27" x2="-0.635" y2="1.27"/>
<wire layer="94" width="0.25" x1="-3.175" y1="1.27" x2="-1.905" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-3.81" y1="0" x2="-3.175" y2="1.27"/>
<pin name="2" visible="pad" length="short" direction="pas" rot="R180" x="6.35" y="0"/>
<pin name="1" visible="pad" length="short" direction="pas" x="-6.35" y="0"/>
</symbol>
<symbol name="AD5696RARUZ">
<wire layer="94" width="0.25" x1="-15" y1="19" x2="11" y2="19"/>
<wire layer="94" width="0.25" x1="11" y1="19" x2="11" y2="-3"/>
<wire layer="94" width="0.25" x1="11" y1="-3" x2="-15" y2="-3"/>
<wire layer="94" width="0.25" x1="-15" y1="-3" x2="-15" y2="19"/>
<pin name="SCL" visible="both" length="short" direction="nc" x="-17.73" y="14"/>
<pin name="SDA" visible="both" length="short" direction="nc" x="-17.73" y="11"/>
<pin name="A1" visible="both" length="short" direction="nc" x="-17.73" y="8"/>
<pin name="A0" visible="both" length="short" direction="nc" x="-17.73" y="5"/>
<pin name="Vdd" visible="both" length="short" direction="nc" rot="R270" x="-7" y="21.73"/>
<pin name="GND" visible="both" length="short" direction="nc" rot="R270" x="-2" y="21.73"/>
<pin name="Vref" visible="both" length="short" direction="nc" rot="R270" x="3" y="21.73"/>
<pin name="VoutA" visible="both" length="short" direction="nc" rot="R180" x="13.73" y="17"/>
<pin name="VoutB" visible="both" length="short" direction="nc" rot="R180" x="13.73" y="13"/>
<pin name="VoutC" visible="both" length="short" direction="nc" rot="R180" x="13.73" y="9"/>
<pin name="VoutD" visible="both" length="short" direction="nc" rot="R180" x="13.73" y="5"/>
<pin name="!LDAC" visible="both" length="short" direction="nc" rot="R90" x="-8" y="-5.73"/>
<pin name="!Reset" visible="both" length="short" direction="nc" rot="R90" x="-4" y="-5.73"/>
<pin name="RSTSEL" visible="both" length="short" direction="nc" rot="R90" x="-1" y="-5.73"/>
<pin name="GAIN" visible="both" length="short" direction="nc" rot="R90" x="2" y="-5.73"/>
<pin name="Vlogic" visible="both" length="short" direction="nc" x="-17.73" y="17"/>
</symbol>
<symbol name="LM324AD">
<wire layer="94" width="0.25" x1="-5.08" y1="-5.08" x2="5.08" y2="0"/>
<wire layer="94" width="0.25" x1="-5.08" y1="5.08" x2="5.08" y2="0"/>
<wire layer="94" width="0.25" x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08"/>
<wire layer="94" width="0.25" x1="-4.064" y1="-2.54" x2="-2.54" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-4.064" y1="2.54" x2="-2.54" y2="2.54"/>
<wire layer="94" width="0.25" x1="-3.302" y1="1.778" x2="-3.302" y2="3.302"/>
<wire layer="94" width="0.25" x1="0" y1="-5.08" x2="0" y2="-2.54"/>
<wire layer="94" width="0.25" x1="0" y1="2.54" x2="0" y2="5.08"/>
<pin name="IN-" visible="pad" length="short" direction="in" x="-7.62" y="-2.54"/>
<pin name="IN+" visible="pad" length="short" direction="in" x="-7.62" y="2.54"/>
<pin name="OUT" visible="pad" length="short" direction="out" rot="R180" x="7.62" y="0"/>
</symbol>
<symbol name="LM324AD_2">
<wire layer="94" width="0.25" x1="-3.667" y1="2.54" x2="3.667" y2="2.54"/>
<wire layer="94" width="0.25" x1="3.667" y1="2.54" x2="3.667" y2="-2.54"/>
<wire layer="94" width="0.25" x1="3.667" y1="-2.54" x2="-3.667" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-3.667" y1="-2.54" x2="-3.667" y2="2.54"/>
<pin name="V+" visible="both" length="short" direction="pwr" x="-6.207" y="1.27"/>
<pin name="V-" visible="both" length="short" direction="pwr" x="-6.207" y="-1.27"/>
</symbol>
<symbol name="LDAQ">
<wire layer="94" width="0.25" x1="1.904" y1="1.905" x2="-1.904" y2="1.905"/>
<wire layer="94" width="0.25" x1="-1.904" y1="1.905" x2="-1.904" y2="-1.905"/>
<wire layer="94" width="0.25" x1="-1.904" y1="-1.905" x2="1.904" y2="-1.905"/>
<wire layer="94" width="0.25" x1="1.904" y1="-1.905" x2="1.904" y2="1.905"/>
<pin name="1" visible="both" length="short" direction="sup" rot="R180" x="4.444" y="0"/>
</symbol>
<symbol name="LDAQ_15_0">
<wire layer="94" width="0.25" x1="-1.904" y1="1.905" x2="1.904" y2="1.905"/>
<wire layer="94" width="0.25" x1="1.904" y1="1.905" x2="1.904" y2="-1.905"/>
<wire layer="94" width="0.25" x1="1.904" y1="-1.905" x2="-1.904" y2="-1.905"/>
<wire layer="94" width="0.25" x1="-1.904" y1="-1.905" x2="-1.904" y2="1.905"/>
<pin name="1" visible="both" length="short" direction="sup" rot="R180" x="4.444" y="0"/>
</symbol>
<symbol name="LTC3260">
<wire layer="94" width="0.25" x1="-15.24" y1="21.59" x2="3.81" y2="21.59"/>
<wire layer="94" width="0.25" x1="3.81" y1="21.59" x2="3.81" y2="-15.24"/>
<wire layer="94" width="0.25" x1="3.81" y1="-15.24" x2="-15.24" y2="-15.24"/>
<wire layer="94" width="0.25" x1="-15.24" y1="-15.24" x2="-15.24" y2="21.59"/>
<pin name="EN+" visible="both" length="short" direction="nc" x="-17.78" y="12.7"/>
<pin name="RT" visible="both" length="short" direction="nc" rot="R90" x="-6.35" y="-17.78"/>
<pin name="BYP-" visible="both" length="short" direction="nc" rot="R180" x="6.35" y="0"/>
<pin name="ADJ-" visible="both" length="short" direction="nc" rot="R180" x="6.35" y="-2.54"/>
<pin name="LDO-" visible="both" length="short" direction="nc" rot="R180" x="6.35" y="-7.62"/>
<pin name="Vout" visible="both" length="short" direction="nc" x="-17.78" y="-7.62"/>
<pin name="C-" visible="both" length="short" direction="nc" x="-17.78" y="-2.54"/>
<pin name="NC@1" visible="both" length="short" direction="nc" x="-17.78" y="-11.43"/>
<pin name="NC@2" visible="both" length="short" direction="nc" rot="R180" x="6.35" y="-11.43"/>
<pin name="C+" visible="both" length="short" direction="nc" x="-17.78" y="0"/>
<pin name="Vin" visible="both" length="short" direction="nc" x="-17.78" y="17.78"/>
<pin name="LDO+" visible="both" length="short" direction="nc" rot="R180" x="6.35" y="17.78"/>
<pin name="EN-" visible="both" length="short" direction="nc" x="-17.78" y="10.16"/>
<pin name="MODE" visible="both" length="short" direction="nc" x="-17.78" y="5.08"/>
<pin name="ADJ+" visible="both" length="short" direction="nc" rot="R180" x="6.35" y="12.7"/>
<pin name="BYP+" visible="both" length="short" direction="nc" rot="R180" x="6.35" y="10.16"/>
<pin name="GND" visible="both" length="short" direction="nc" rot="R180" x="6.35" y="5.08"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="90131-0121" prefix="J">
<gates>
<gate name="PART_1" symbol="90131-0121" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDR-2X1T/2.54X2.54/3X5">
<connects>
<connect gate="PART_1" pin="P1" pad="1"/>
<connect gate="PART_1" pin="P2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Molex"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com\con_headers\901310126_sd.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1-644456-0" prefix="J">
<gates>
<gate name="PART_1" symbol="1-644456-0" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDR-1X10T/2.54/25X2">
<connects>
<connect gate="PART_1" pin="F+" pad="1"/>
<connect gate="PART_1" pin="F-" pad="2"/>
<connect gate="PART_1" pin="T+" pad="3"/>
<connect gate="PART_1" pin="T-" pad="4"/>
<connect gate="PART_1" pin="P5" pad="5"/>
<connect gate="PART_1" pin="6" pad="6"/>
<connect gate="PART_1" pin="A" pad="7"/>
<connect gate="PART_1" pin="B" pad="8"/>
<connect gate="PART_1" pin="C" pad="9"/>
<connect gate="PART_1" pin="D" pad="10"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="TE Connectivity"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com\con_headers\ENG_CD_644456_D2.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1-644456-0_3" prefix="J">
<gates>
<gate name="PART_1" symbol="1-644456-0_3_0" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDR-1X10T/2.54/25X2">
<connects>
<connect gate="PART_1" pin="VC_P2" pad="1"/>
<connect gate="PART_1" pin="VC_P1" pad="2"/>
<connect gate="PART_1" pin="P3" pad="3"/>
<connect gate="PART_1" pin="Ldac" pad="4"/>
<connect gate="PART_1" pin="Vref" pad="5"/>
<connect gate="PART_1" pin="GND" pad="6"/>
<connect gate="PART_1" pin="5V" pad="7"/>
<connect gate="PART_1" pin="12V" pad="8"/>
<connect gate="PART_1" pin="I2C_SDA" pad="9"/>
<connect gate="PART_1" pin="I2C_SCL" pad="10"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="TE Connectivity"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com\con_headers\ENG_CD_644456_D2.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES_0805" prefix="Ra">
<gates>
<gate name="PART_1" symbol="RES_0805" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RES_0805">
<connects>
<connect gate="PART_1" pin="2" pad="2"/>
<connect gate="PART_1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="5k"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP_0805" prefix="BmC">
<gates>
<gate name="PART_1" symbol="CAP_0805" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAP_0805">
<connects>
<connect gate="PART_1" pin="2" pad="2"/>
<connect gate="PART_1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="10nF"/>
<attribute name="DATASHEET" value="http://uk.rs-online.com/web/p/ceramic-multilayer-capacitors/2644371/"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+12V" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="+12V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SDA" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="SDA" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SCL" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="SCL" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CON5M" prefix="Piezos">
<gates>
<gate name="PART_1" symbol="CON5M" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDR-1X5T/2.54/12X2">
<connects>
<connect gate="PART_1" pin="P1" pad="1"/>
<connect gate="PART_1" pin="P2" pad="2"/>
<connect gate="PART_1" pin="P3" pad="3"/>
<connect gate="PART_1" pin="P4" pad="4"/>
<connect gate="PART_1" pin="P5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES_0402" prefix="R">
<gates>
<gate name="PART_1" symbol="RES_0402" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RES_0402">
<connects>
<connect gate="PART_1" pin="2" pad="2"/>
<connect gate="PART_1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="200k"/>
<attribute name="DATASHEET" value="http://uk.rs-online.com/web/p/surface-mount-fixed-resistors/3714998/"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AD5696RARUZ" prefix="DAC">
<gates>
<gate name="PART_1" symbol="AD5696RARUZ" x="2" y="-8"/>
</gates>
<devices>
<device name="" package="AD5696RARUZ">
<connects>
<connect gate="PART_1" pin="SCL" pad="13"/>
<connect gate="PART_1" pin="SDA" pad="8"/>
<connect gate="PART_1" pin="A1" pad="14"/>
<connect gate="PART_1" pin="A0" pad="12"/>
<connect gate="PART_1" pin="Vdd" pad="5"/>
<connect gate="PART_1" pin="GND" pad="4"/>
<connect gate="PART_1" pin="Vref" pad="1"/>
<connect gate="PART_1" pin="VoutA" pad="3"/>
<connect gate="PART_1" pin="VoutB" pad="2"/>
<connect gate="PART_1" pin="VoutC" pad="6"/>
<connect gate="PART_1" pin="VoutD" pad="7"/>
<connect gate="PART_1" pin="!LDAC" pad="9"/>
<connect gate="PART_1" pin="!Reset" pad="15"/>
<connect gate="PART_1" pin="RSTSEL" pad="16"/>
<connect gate="PART_1" pin="GAIN" pad="10"/>
<connect gate="PART_1" pin="Vlogic" pad="11"/>
</connects>
<technologies>
<technology name="">
<attribute name="DATASHEET" value="http://docs-europe.electrocomponents.com/webdocs/12f9/0900766b812f9ce4.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LM324AD" prefix="LM">
<gates>
<gate name="PART_1" symbol="LM324AD" x="0" y="0"/>
<gate name="PART_2" symbol="LM324AD" x="0" y="0"/>
<gate name="PART_3" symbol="LM324AD" x="0" y="0"/>
<gate name="PART_4" symbol="LM324AD" x="0" y="0"/>
<gate name="VCC_AND_GND" symbol="LM324AD_2" x="0" y="0" addlevel="must"/>
</gates>
<devices>
<device name="" package="SOIC-14/150MIL">
<connects>
<connect gate="PART_1" pin="IN-" pad="2"/>
<connect gate="PART_1" pin="IN+" pad="3"/>
<connect gate="PART_1" pin="OUT" pad="1"/>
<connect gate="PART_2" pin="IN-" pad="6"/>
<connect gate="PART_2" pin="IN+" pad="5"/>
<connect gate="PART_2" pin="OUT" pad="7"/>
<connect gate="PART_3" pin="IN-" pad="9"/>
<connect gate="PART_3" pin="IN+" pad="10"/>
<connect gate="PART_3" pin="OUT" pad="8"/>
<connect gate="PART_4" pin="IN-" pad="13"/>
<connect gate="PART_4" pin="IN+" pad="12"/>
<connect gate="PART_4" pin="OUT" pad="14"/>
<connect gate="VCC_AND_GND" pin="V+" pad="4"/>
<connect gate="VCC_AND_GND" pin="V-" pad="11"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Motorola"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com/motorola/LM224_324_2902.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LDAQ" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="LDAQ" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LDAQ_15" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="LDAQ_15_0" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LTC3260" prefix="U">
<gates>
<gate name="PART_1" symbol="LTC3260" x="5.715" y="-3.175"/>
</gates>
<devices>
<device name="" package="LTC3260_MSOP">
<connects>
<connect gate="PART_1" pin="EN+" pad="1"/>
<connect gate="PART_1" pin="RT" pad="2"/>
<connect gate="PART_1" pin="BYP-" pad="3"/>
<connect gate="PART_1" pin="ADJ-" pad="4"/>
<connect gate="PART_1" pin="LDO-" pad="5"/>
<connect gate="PART_1" pin="Vout" pad="6"/>
<connect gate="PART_1" pin="C-" pad="7"/>
<connect gate="PART_1" pin="NC@1" pad="8"/>
<connect gate="PART_1" pin="NC@2" pad="9"/>
<connect gate="PART_1" pin="C+" pad="10"/>
<connect gate="PART_1" pin="Vin" pad="11"/>
<connect gate="PART_1" pin="LDO+" pad="12"/>
<connect gate="PART_1" pin="EN-" pad="13"/>
<connect gate="PART_1" pin="MODE" pad="14"/>
<connect gate="PART_1" pin="ADJ+" pad="15"/>
<connect gate="PART_1" pin="BYP+" pad="16"/>
<connect gate="PART_1" pin="GND" pad="17"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<classes>
<class number="0" name="Default" width="0" drill="0"/>
</classes>
<parts>
<part name="BmC" library="common" deviceset="CAP_0805" device="" value="10nF"/>
<part name="BpC" library="common" deviceset="CAP_0805" device="" value="10nF"/>
<part name="Ca" library="common" deviceset="CAP_0805" device="" value="3.2uF"/>
<part name="Cb" library="common" deviceset="CAP_0805" device="" value="3.2uF"/>
<part name="Cc" library="common" deviceset="CAP_0805" device="" value="3.2uF"/>
<part name="Cd" library="common" deviceset="CAP_0805" device="" value="3.2uF"/>
<part name="Cf" library="common" deviceset="CAP_0805" device="" value="1uF"/>
<part name="Cref" library="common" deviceset="CAP_0805" device="" value="3.2uF"/>
<part name="DaC" library="common" deviceset="CAP_0805" device="" value="3.2uF"/>
<part name="DAC1" library="common" deviceset="AD5696RARUZ" device=""/>
<part name="J1" library="common" deviceset="1-644456-0" device=""/>
<part name="J2" library="common" deviceset="1-644456-0_3" device=""/>
<part name="J3" library="common" deviceset="90131-0121" device=""/>
<part name="LM324" library="common" deviceset="LM324AD" device=""/>
<part name="LmC" library="common" deviceset="CAP_0805" device="" value="10uF"/>
<part name="LpC" library="common" deviceset="CAP_0805" device="" value="10uF"/>
<part name="NetPort1" library="common" deviceset="GND" device=""/>
<part name="NetPort2" library="common" deviceset="+12V" device=""/>
<part name="NetPort3" library="common" deviceset="+12V" device=""/>
<part name="NetPort4" library="common" deviceset="+5V" device=""/>
<part name="NetPort5" library="common" deviceset="+5V" device=""/>
<part name="NetPort6" library="common" deviceset="GND" device=""/>
<part name="NetPort7" library="common" deviceset="GND" device=""/>
<part name="NetPort8" library="common" deviceset="SCL" device=""/>
<part name="NetPort9" library="common" deviceset="SDA" device=""/>
<part name="NetPort10" library="common" deviceset="GND" device=""/>
<part name="NetPort11" library="common" deviceset="GND" device=""/>
<part name="NetPort12" library="common" deviceset="GND" device=""/>
<part name="NetPort13" library="common" deviceset="GND" device=""/>
<part name="NetPort14" library="common" deviceset="+5V" device=""/>
<part name="NetPort15" library="common" deviceset="LDAQ" device=""/>
<part name="NetPort16" library="common" deviceset="GND" device=""/>
<part name="NetPort18" library="common" deviceset="GND" device=""/>
<part name="NetPort19" library="common" deviceset="+5V" device=""/>
<part name="NetPort20" library="common" deviceset="GND" device=""/>
<part name="NetPort21" library="common" deviceset="GND" device=""/>
<part name="NetPort23" library="common" deviceset="GND" device=""/>
<part name="NetPort24" library="common" deviceset="SCL" device=""/>
<part name="NetPort25" library="common" deviceset="SDA" device=""/>
<part name="NetPort26" library="common" deviceset="GND" device=""/>
<part name="NetPort27" library="common" deviceset="LDAQ_15" device=""/>
<part name="NetPort28" library="common" deviceset="+5V" device=""/>
<part name="OC" library="common" deviceset="CAP_0805" device="" value="10uF"/>
<part name="Piezos" library="common" deviceset="CON5M" device=""/>
<part name="R14" library="common" deviceset="RES_0402" device="" value="200k"/>
<part name="Ra1" library="common" deviceset="RES_0805" device="" value="5k"/>
<part name="Ra2" library="common" deviceset="RES_0805" device="" value="30k"/>
<part name="RAGm" library="common" deviceset="RES_0805" device="" value="100k"/>
<part name="RAGp" library="common" deviceset="RES_0805" device="" value="100k"/>
<part name="Rb1" library="common" deviceset="RES_0805" device="" value="5k"/>
<part name="Rb2" library="common" deviceset="RES_0805" device="" value="30k"/>
<part name="Rc1" library="common" deviceset="RES_0805" device="" value="5k"/>
<part name="Rc2" library="common" deviceset="RES_0805" device="" value="30k"/>
<part name="Rd1" library="common" deviceset="RES_0805" device="" value="5k"/>
<part name="Rd2" library="common" deviceset="RES_0805" device="" value="30k"/>
<part name="Rdr" library="common" deviceset="RES_0805" device="" value="10k"/>
<part name="Rdv1" library="common" deviceset="RES_0805" device="" value="10k"/>
<part name="Rdv2" library="common" deviceset="RES_0805" device="" value="10k"/>
<part name="Rfa" library="common" deviceset="RES_0805" device="" value="5k"/>
<part name="Rfb" library="common" deviceset="RES_0805" device="" value="5k"/>
<part name="Rfc" library="common" deviceset="RES_0805" device="" value="5k"/>
<part name="Rfd" library="common" deviceset="RES_0805" device="" value="5k"/>
<part name="RLAm" library="common" deviceset="RES_0805" device="" value="800k"/>
<part name="RLAp" library="common" deviceset="RES_0805" device="" value="800k"/>
<part name="U1" library="common" deviceset="LTC3260" device=""/>
<part name="ViC" library="common" deviceset="CAP_0805" device="" value="10uF"/>
<part name="VoC" library="common" deviceset="CAP_0805" device="" value="10uF"/>
</parts>
<modules/>
<sheets>
<sheet>
<plain>
<text x="94.089" y="12.05" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">BmC</text>
<text x="94.089" y="31.414" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">BpC</text>
<text x="-110.911" y="-7.139" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">Ca</text>
<text x="-90.219" y="-19.169" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Cb</text>
<text x="-98.911" y="-48.3" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">Cc</text>
<text x="-102.911" y="-71.299" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">Cd</text>
<text x="22.169" y="24.927" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">Cf</text>
<text x="-153.193" y="9.911" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Cref</text>
<text x="-159.885" y="-7.089" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">DaC</text>
<text x="-161" y="-41" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">AD569</text>
<text x="-141.81" y="-31.81" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">DAC1</text>
<text x="-134.673" y="-86.27" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J1</text>
<text x="121.78" y="-85.87" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J2</text>
<text x="-128.22" y="-2.19" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J3</text>
<text x="-17.365" y="-63.38" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">LM324.1</text>
<text x="-22.693" y="-94.46" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">LM324.2</text>
<text x="-22.473" y="-34.92" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">LM324.3</text>
<text x="-22.509" y="-7.92" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">LM324.4</text>
<text x="155.948" y="40.27" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">LM324</text>
<text x="73.089" y="-17.337" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">LmC</text>
<text x="81.089" y="59.648" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">LpC</text>
<text x="70.095" y="-105.864" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="75.362" y="-72.69" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+12V</text>
<text x="31.362" y="53.31" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+12V</text>
<text x="-167.22" y="2.31" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
<text x="64.78" y="-83.69" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
<text x="-96.212" y="-6.095" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">GND</text>
<text x="-102.905" y="-84.864" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="97.383" y="-71.965" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">SCL</text>
<text x="90.383" y="-84.075" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">SDA</text>
<text x="-93.212" y="-52.095" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">GND</text>
<text x="-72.212" y="-22.095" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">GND</text>
<text x="39.095" y="-3.864" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="54.095" y="-33.864" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="-86.22" y="3.31" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
<text x="81.383" y="-106.821" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">LDAQ</text>
<text x="51.095" y="65.596" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="136.095" y="22.136" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="-111.41" y="17.54" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
<text x="-162.038" y="27.326" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">GND</text>
<text x="26.095" y="-82.864" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="-150.038" y="2.786" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">GND</text>
<text x="-191.617" y="-27.965" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">SCL</text>
<text x="-189.617" y="-39.075" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">SDA</text>
<text x="-189.326" y="-49.038" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="-164.905" y="-73.535" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">LDAQ</text>
<text x="-151.54" y="-74.87" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">+5V</text>
<text x="133.089" y="44.715" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">OC</text>
<text x="38.417" y="-58.57" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Piezos</text>
<text x="54.5" y="-16.33" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">R14</text>
<text x="-42.221" y="-23.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Ra1</text>
<text x="-20.549" y="-23.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Ra2</text>
<text x="113.5" y="16.231" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">RAGm</text>
<text x="113.5" y="37.595" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">RAGp</text>
<text x="-39.221" y="-51.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rb1</text>
<text x="-15.549" y="-51.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rb2</text>
<text x="-35.222" y="-77.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rc1</text>
<text x="-15.549" y="-78.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rc2</text>
<text x="-42.221" y="-109.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rd1</text>
<text x="-20.549" y="-109.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rd2</text>
<text x="-125.33" y="3.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rdr</text>
<text x="-152.893" y="16.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rdv1</text>
<text x="-130.221" y="16.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rdv2</text>
<text x="-132.33" y="-12.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rfa</text>
<text x="-113.33" y="-23.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rfb</text>
<text x="-115.33" y="-38.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rfc</text>
<text x="-119.33" y="-58.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">Rfd</text>
<text x="110.5" y="-1.66" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">RLAm</text>
<text x="114.5" y="54.705" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">RLAp</text>
<text x="70.121" y="40.715" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">U1</text>
<text x="40.089" y="60.707" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">ViC</text>
<text x="32.089" y="-16.154" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">VoC</text>
</plain>
<moduleinsts/>
<instances>
<instance part="BmC" gate="PART_1" x="96" y="14.38" rot="R90" smashed="yes"/>
<instance part="BpC" gate="PART_1" x="96" y="33.38" rot="R90" smashed="yes"/>
<instance part="Ca" gate="PART_1" x="-109" y="-5.92" rot="R270" smashed="yes"/>
<instance part="Cb" gate="PART_1" x="-89" y="-21.08" rot="R180" smashed="yes"/>
<instance part="Cc" gate="PART_1" x="-97" y="-47.08" rot="R90" smashed="yes"/>
<instance part="Cd" gate="PART_1" x="-101" y="-70.08" rot="R90" smashed="yes"/>
<instance part="Cf" gate="PART_1" x="24.08" y="26" rot="R90" smashed="yes"/>
<instance part="Cref" gate="PART_1" x="-150.92" y="8" rot="R180" smashed="yes"/>
<instance part="DaC" gate="PART_1" x="-157.92" y="-9" rot="R180" smashed="yes"/>
<instance part="DAC1" gate="PART_1" x="-155" y="-43" smashed="yes"/>
<instance part="J1" gate="PART_1" x="-133.89" y="-98.97" smashed="yes"/>
<instance part="J2" gate="PART_1" x="122.89" y="-98.57" rot="R180" smashed="yes"/>
<instance part="J3" gate="PART_1" x="-127.11" y="-4.73" rot="R180" smashed="yes"/>
<instance part="LM324" gate="PART_1" x="-13.11" y="-68.46" smashed="yes"/>
<instance part="LM324" gate="PART_2" x="-18.11" y="-99.54" smashed="yes"/>
<instance part="LM324" gate="PART_3" x="-17.89" y="-40" smashed="yes"/>
<instance part="LM324" gate="PART_4" x="-17.89" y="-13" smashed="yes"/>
<instance part="LM324" gate="VCC_AND_GND" x="159.477" y="37.73" smashed="yes"/>
<instance part="LmC" gate="PART_1" x="75" y="-15.08" rot="R90" smashed="yes"/>
<instance part="LpC" gate="PART_1" x="83" y="61.54" rot="R270" smashed="yes"/>
<instance part="NetPort1" gate="PART_1" x="72" y="-103.826" smashed="yes"/>
<instance part="NetPort2" gate="PART_1" x="78" y="-74.19" smashed="yes"/>
<instance part="NetPort3" gate="PART_1" x="34" y="51.81" smashed="yes"/>
<instance part="NetPort4" gate="PART_1" x="-165" y="0.81" smashed="yes"/>
<instance part="NetPort5" gate="PART_1" x="67" y="-85.19" smashed="yes"/>
<instance part="NetPort6" gate="PART_1" x="-94.174" y="-8" rot="R90" smashed="yes"/>
<instance part="NetPort7" gate="PART_1" x="-101" y="-82.826" smashed="yes"/>
<instance part="NetPort8" gate="PART_1" x="99.286" y="-70" smashed="yes"/>
<instance part="NetPort9" gate="PART_1" x="92.286" y="-82" smashed="yes"/>
<instance part="NetPort10" gate="PART_1" x="-91.174" y="-54" rot="R90" smashed="yes"/>
<instance part="NetPort11" gate="PART_1" x="-70.174" y="-24" rot="R90" smashed="yes"/>
<instance part="NetPort12" gate="PART_1" x="41" y="-1.826" smashed="yes"/>
<instance part="NetPort13" gate="PART_1" x="56" y="-31.826" smashed="yes"/>
<instance part="NetPort14" gate="PART_1" x="-84" y="1.81" smashed="yes"/>
<instance part="NetPort15" gate="PART_1" x="83.286" y="-104" smashed="yes"/>
<instance part="NetPort16" gate="PART_1" x="53" y="67.634" smashed="yes"/>
<instance part="NetPort18" gate="PART_1" x="138" y="24.174" smashed="yes"/>
<instance part="NetPort19" gate="PART_1" x="-109.19" y="15" rot="R270" smashed="yes"/>
<instance part="NetPort20" gate="PART_1" x="-160" y="25.826" rot="R180" smashed="yes"/>
<instance part="NetPort21" gate="PART_1" x="28" y="-80.826" smashed="yes"/>
<instance part="NetPort23" gate="PART_1" x="-148" y="1.286" rot="R180" smashed="yes"/>
<instance part="NetPort24" gate="PART_1" x="-189.714" y="-26" smashed="yes"/>
<instance part="NetPort25" gate="PART_1" x="-187.714" y="-37" smashed="yes"/>
<instance part="NetPort26" gate="PART_1" x="-187.826" y="-47" rot="R270" smashed="yes"/>
<instance part="NetPort27" gate="PART_1" x="-163" y="-70.714" rot="R90" smashed="yes"/>
<instance part="NetPort28" gate="PART_1" x="-149" y="-72.65" rot="R180" smashed="yes"/>
<instance part="OC" gate="PART_1" x="135" y="46.08" rot="R270" smashed="yes"/>
<instance part="Piezos" gate="PART_1" x="41.89" y="-64.92" rot="R180" smashed="yes"/>
<instance part="R14" gate="PART_1" x="56" y="-14.62" rot="R90" smashed="yes"/>
<instance part="Ra1" gate="PART_1" x="-40.62" y="-25" smashed="yes"/>
<instance part="Ra2" gate="PART_1" x="-18.62" y="-25" smashed="yes"/>
<instance part="RAGm" gate="PART_1" x="115" y="19.38" rot="R90" smashed="yes"/>
<instance part="RAGp" gate="PART_1" x="115" y="40.38" rot="R90" smashed="yes"/>
<instance part="Rb1" gate="PART_1" x="-37.62" y="-53" smashed="yes"/>
<instance part="Rb2" gate="PART_1" x="-13.62" y="-53" smashed="yes"/>
<instance part="Rc1" gate="PART_1" x="-33.62" y="-79" smashed="yes"/>
<instance part="Rc2" gate="PART_1" x="-13.62" y="-80" smashed="yes"/>
<instance part="Rd1" gate="PART_1" x="-40.62" y="-111" smashed="yes"/>
<instance part="Rd2" gate="PART_1" x="-18.62" y="-111" smashed="yes"/>
<instance part="Rdr" gate="PART_1" x="-123.62" y="2" smashed="yes"/>
<instance part="Rdv1" gate="PART_1" x="-150.62" y="15" smashed="yes"/>
<instance part="Rdv2" gate="PART_1" x="-127.62" y="15" smashed="yes"/>
<instance part="Rfa" gate="PART_1" x="-130.62" y="-14" smashed="yes"/>
<instance part="Rfb" gate="PART_1" x="-111.62" y="-25" smashed="yes"/>
<instance part="Rfc" gate="PART_1" x="-113.62" y="-40" smashed="yes"/>
<instance part="Rfd" gate="PART_1" x="-117.62" y="-60" smashed="yes"/>
<instance part="RLAm" gate="PART_1" x="112" y="1.38" rot="R90" smashed="yes"/>
<instance part="RLAp" gate="PART_1" x="116" y="57.38" rot="R90" smashed="yes"/>
<instance part="U1" gate="PART_1" x="71.05" y="22.3" smashed="yes"/>
<instance part="ViC" gate="PART_1" x="42" y="62.38" rot="R90" smashed="yes"/>
<instance part="VoC" gate="PART_1" x="34" y="-14.08" rot="R90" smashed="yes"/>
</instances>
<busses/>
<nets>
<net name="5V" class="0">
<segment>
<wire layer="91" width="0.1" x1="67" y1="-87.73" x2="67" y2="-94.76"/>
<wire layer="91" width="0.1" x1="67" y1="-94.76" x2="115.27" y2="-94.76"/>
<pinref part="NetPort5" gate="PART_1" pin="+5V"/>
<pinref part="J2" gate="PART_1" pin="5V"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-121.27" y1="15" x2="-111.73" y2="15"/>
<pinref part="Rdv2" gate="PART_1" pin="2"/>
<pinref part="NetPort19" gate="PART_1" pin="+5V"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-165" y1="-1.73" x2="-165" y2="-9"/>
<wire layer="91" width="0.1" x1="-165" y1="-9" x2="-161.73" y2="-9"/>
<pinref part="NetPort4" gate="PART_1" pin="+5V"/>
<pinref part="DaC" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-165" y1="-15" x2="-165" y2="-18"/>
<wire layer="91" width="0.1" x1="-165" y1="-9" x2="-165" y2="-15"/>
<wire layer="91" width="0.1" x1="-165" y1="-18" x2="-162" y2="-18"/>
<wire layer="91" width="0.1" x1="-162" y1="-18" x2="-162" y2="-21.27"/>
<pinref part="DAC1" gate="PART_1" pin="Vdd"/>
<junction x="-165" y="-9"/>
<wire layer="91" width="0.1" x1="-172.73" y1="-26" x2="-176" y2="-26"/>
<wire layer="91" width="0.1" x1="-176" y1="-26" x2="-176" y2="-15"/>
<wire layer="91" width="0.1" x1="-176" y1="-15" x2="-165" y2="-15"/>
<pinref part="DAC1" gate="PART_1" pin="Vlogic"/>
<junction x="-165" y="-15"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-159" y1="-48.73" x2="-159" y2="-67"/>
<wire layer="91" width="0.1" x1="-159" y1="-67" x2="-156" y2="-67"/>
<wire layer="91" width="0.1" x1="-156" y1="-67" x2="-149" y2="-67"/>
<wire layer="91" width="0.1" x1="-149" y1="-67" x2="-149" y2="-70.11"/>
<pinref part="DAC1" gate="PART_1" pin="!Reset"/>
<pinref part="NetPort28" gate="PART_1" pin="+5V"/>
<wire layer="91" width="0.1" x1="-156" y1="-48.73" x2="-156" y2="-67"/>
<pinref part="DAC1" gate="PART_1" pin="RSTSEL"/>
<junction x="-156" y="-67"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-84" y1="-0.73" x2="-84" y2="-4"/>
<wire layer="91" width="0.1" x1="-84" y1="-4" x2="-90" y2="-4"/>
<wire layer="91" width="0.1" x1="-90" y1="-4" x2="-90" y2="2"/>
<wire layer="91" width="0.1" x1="-90" y1="2" x2="-117.27" y2="2"/>
<pinref part="NetPort14" gate="PART_1" pin="+5V"/>
<pinref part="Rdr" gate="PART_1" pin="2"/>
</segment>
</net>
<net name="Gnd" class="0">
<segment>
<wire layer="91" width="0.1" x1="34" y1="-17.89" x2="34" y2="-22"/>
<wire layer="91" width="0.1" x1="34" y1="-22" x2="56" y2="-22"/>
<wire layer="91" width="0.1" x1="56" y1="-22" x2="56" y2="-22.24"/>
<wire layer="91" width="0.1" x1="56" y1="-22.24" x2="56" y2="-22"/>
<wire layer="91" width="0.1" x1="56" y1="-22" x2="56" y2="-28.27"/>
<pinref part="VoC" gate="PART_1" pin="1"/>
<pinref part="NetPort13" gate="PART_1" pin="GND"/>
<wire layer="91" width="0.1" x1="56" y1="-20.97" x2="56" y2="-22.24"/>
<pinref part="R14" gate="PART_1" pin="1"/>
<junction x="56" y="-22.24"/>
<wire layer="91" width="0.1" x1="75" y1="-18.89" x2="75" y2="-22"/>
<wire layer="91" width="0.1" x1="75" y1="-22" x2="56" y2="-22"/>
<pinref part="LmC" gate="PART_1" pin="1"/>
<junction x="56" y="-22"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="42" y1="66.19" x2="42" y2="74.46"/>
<wire layer="91" width="0.1" x1="42" y1="74.46" x2="53" y2="74.46"/>
<wire layer="91" width="0.1" x1="53" y1="74.46" x2="53" y2="71.19"/>
<pinref part="ViC" gate="PART_1" pin="2"/>
<pinref part="NetPort16" gate="PART_1" pin="GND"/>
<wire layer="91" width="0.1" x1="53" y1="74.46" x2="83" y2="74.46"/>
<wire layer="91" width="0.1" x1="83" y1="74.46" x2="83" y2="65.35"/>
<pinref part="LpC" gate="PART_1" pin="1"/>
<junction x="53" y="74.46"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="96" y1="18.19" x2="96" y2="22.46"/>
<wire layer="91" width="0.1" x1="96" y1="22.46" x2="96" y2="29.57"/>
<pinref part="BmC" gate="PART_1" pin="2"/>
<pinref part="BpC" gate="PART_1" pin="1"/>
<wire layer="91" width="0.1" x1="138" y1="27.73" x2="138" y2="31.46"/>
<wire layer="91" width="0.1" x1="115" y1="31.46" x2="108" y2="31.46"/>
<wire layer="91" width="0.1" x1="138" y1="31.46" x2="115" y2="31.46"/>
<wire layer="91" width="0.1" x1="108" y1="31.46" x2="108" y2="29.46"/>
<wire layer="91" width="0.1" x1="108" y1="29.46" x2="99" y2="29.46"/>
<wire layer="91" width="0.1" x1="99" y1="29.46" x2="99" y2="22.46"/>
<wire layer="91" width="0.1" x1="99" y1="22.46" x2="96" y2="22.46"/>
<pinref part="NetPort18" gate="PART_1" pin="GND"/>
<junction x="96" y="22.46"/>
<wire layer="91" width="0.1" x1="115" y1="25.73" x2="115" y2="31.46"/>
<pinref part="RAGm" gate="PART_1" pin="2"/>
<junction x="115" y="31.46"/>
<wire layer="91" width="0.1" x1="115" y1="34.03" x2="115" y2="31.46"/>
<pinref part="RAGp" gate="PART_1" pin="1"/>
<junction x="115" y="31.46"/>
<wire layer="91" width="0.1" x1="77.4" y1="27.38" x2="91" y2="27.38"/>
<wire layer="91" width="0.1" x1="91" y1="27.38" x2="91" y2="23"/>
<wire layer="91" width="0.1" x1="91" y1="23" x2="96" y2="23"/>
<wire layer="91" width="0.1" x1="96" y1="23" x2="96" y2="22.46"/>
<pinref part="U1" gate="PART_1" pin="GND"/>
<junction x="96" y="22.46"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="115.27" y1="-97.3" x2="72" y2="-97.3"/>
<wire layer="91" width="0.1" x1="72" y1="-97.3" x2="72" y2="-100.27"/>
<pinref part="J2" gate="PART_1" pin="GND"/>
<pinref part="NetPort1" gate="PART_1" pin="GND"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-160" y1="15" x2="-160" y2="8"/>
<wire layer="91" width="0.1" x1="-160" y1="22.27" x2="-160" y2="15"/>
<wire layer="91" width="0.1" x1="-160" y1="8" x2="-154.73" y2="8"/>
<pinref part="NetPort20" gate="PART_1" pin="GND"/>
<pinref part="Cref" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-156.97" y1="15" x2="-160" y2="15"/>
<pinref part="Rdv1" gate="PART_1" pin="1"/>
<junction x="-160" y="15"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="34.27" y1="-59.84" x2="28" y2="-59.84"/>
<wire layer="91" width="0.1" x1="28" y1="-59.84" x2="28" y2="-77.27"/>
<pinref part="Piezos" gate="PART_1" pin="P1"/>
<pinref part="NetPort21" gate="PART_1" pin="GND"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-157" y1="-21.27" x2="-157" y2="-12"/>
<wire layer="91" width="0.1" x1="-157" y1="-12" x2="-151" y2="-12"/>
<wire layer="91" width="0.1" x1="-151" y1="-12" x2="-151" y2="-9"/>
<wire layer="91" width="0.1" x1="-151" y1="-9" x2="-154.11" y2="-9"/>
<pinref part="DAC1" gate="PART_1" pin="GND"/>
<pinref part="DaC" gate="PART_1" pin="1"/>
<wire layer="91" width="0.1" x1="-151" y1="-9" x2="-148" y2="-9"/>
<wire layer="91" width="0.1" x1="-148" y1="-9" x2="-148" y2="-2.27"/>
<pinref part="NetPort23" gate="PART_1" pin="GND"/>
<junction x="-151" y="-9"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-172.73" y1="-35" x2="-180" y2="-35"/>
<wire layer="91" width="0.1" x1="-180" y1="-35" x2="-180" y2="-40"/>
<wire layer="91" width="0.1" x1="-180" y1="-40" x2="-180" y2="-47"/>
<wire layer="91" width="0.1" x1="-180" y1="-47" x2="-184.27" y2="-47"/>
<pinref part="DAC1" gate="PART_1" pin="A1"/>
<pinref part="NetPort26" gate="PART_1" pin="GND"/>
<wire layer="91" width="0.1" x1="-174" y1="-38" x2="-172.73" y2="-38"/>
<wire layer="91" width="0.1" x1="-174" y1="-38" x2="-174" y2="-40"/>
<wire layer="91" width="0.1" x1="-174" y1="-40" x2="-180" y2="-40"/>
<pinref part="DAC1" gate="PART_1" pin="A0"/>
<junction x="-180" y="-40"/>
<wire layer="91" width="0.1" x1="-153" y1="-48.73" x2="-153" y2="-52"/>
<wire layer="91" width="0.1" x1="-153" y1="-52" x2="-180" y2="-52"/>
<wire layer="91" width="0.1" x1="-180" y1="-52" x2="-180" y2="-47"/>
<pinref part="DAC1" gate="PART_1" pin="GAIN"/>
<junction x="-180" y="-47"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-109" y1="-0.84" x2="-109" y2="-2.11"/>
<wire layer="91" width="0.1" x1="-109" y1="-0.84" x2="-102" y2="-0.84"/>
<wire layer="91" width="0.1" x1="-102" y1="-0.84" x2="-102" y2="-8"/>
<wire layer="91" width="0.1" x1="-102" y1="-8" x2="-97.73" y2="-8"/>
<pinref part="Ca" gate="PART_1" pin="1"/>
<pinref part="NetPort6" gate="PART_1" pin="GND"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-101" y1="-73.89" x2="-101" y2="-79.27"/>
<pinref part="Cd" gate="PART_1" pin="1"/>
<pinref part="NetPort7" gate="PART_1" pin="GND"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-97" y1="-50.89" x2="-97" y2="-54.493"/>
<wire layer="91" width="0.1" x1="-97" y1="-54.493" x2="-96" y2="-54.493"/>
<wire layer="91" width="0.1" x1="-96" y1="-54" x2="-94.73" y2="-54"/>
<wire layer="91" width="0.1" x1="-96" y1="-54.493" x2="-96" y2="-54"/>
<pinref part="Cc" gate="PART_1" pin="1"/>
<pinref part="NetPort10" gate="PART_1" pin="GND"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-83.92" y1="-21.08" x2="-85.19" y2="-21.08"/>
<wire layer="91" width="0.1" x1="-83.92" y1="-21.08" x2="-83.92" y2="-24"/>
<wire layer="91" width="0.1" x1="-83.92" y1="-24" x2="-73.73" y2="-24"/>
<pinref part="Cb" gate="PART_1" pin="1"/>
<pinref part="NetPort11" gate="PART_1" pin="GND"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="41" y1="1.73" x2="41" y2="27.38"/>
<wire layer="91" width="0.1" x1="41" y1="27.38" x2="53.27" y2="27.38"/>
<pinref part="NetPort12" gate="PART_1" pin="GND"/>
<pinref part="U1" gate="PART_1" pin="MODE"/>
</segment>
</net>
<net name="Net_0" class="0">
<segment>
<wire layer="91" width="0.1" x1="-25.51" y1="-15.54" x2="-29" y2="-15.54"/>
<wire layer="91" width="0.1" x1="-29" y1="-15.54" x2="-29" y2="-25"/>
<wire layer="91" width="0.1" x1="-29" y1="-25" x2="-24.97" y2="-25"/>
<pinref part="LM324" gate="PART_4" pin="IN-"/>
<pinref part="Ra2" gate="PART_1" pin="1"/>
<wire layer="91" width="0.1" x1="-34.27" y1="-25" x2="-29" y2="-25"/>
<pinref part="Ra1" gate="PART_1" pin="2"/>
<junction x="-29" y="-25"/>
</segment>
</net>
<net name="Net_1" class="0">
<segment>
<wire layer="91" width="0.1" x1="153.27" y1="39" x2="138" y2="39"/>
<wire layer="91" width="0.1" x1="138" y1="39" x2="120" y2="39"/>
<wire layer="91" width="0.1" x1="120" y1="39" x2="120" y2="66.46"/>
<wire layer="91" width="0.1" x1="120" y1="66.46" x2="116" y2="66.46"/>
<wire layer="91" width="0.1" x1="116" y1="66.46" x2="90" y2="66.46"/>
<wire layer="91" width="0.1" x1="90" y1="66.46" x2="90" y2="49.46"/>
<wire layer="91" width="0.1" x1="90" y1="49.46" x2="83" y2="49.46"/>
<wire layer="91" width="0.1" x1="83" y1="49.46" x2="83" y2="57.73"/>
<pinref part="LM324" gate="VCC_AND_GND" pin="V+"/>
<pinref part="LpC" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="138" y1="39" x2="138" y2="53"/>
<wire layer="91" width="0.1" x1="138" y1="53" x2="135" y2="53"/>
<wire layer="91" width="0.1" x1="135" y1="53" x2="135" y2="49.89"/>
<pinref part="OC" gate="PART_1" pin="1"/>
<junction x="138" y="39"/>
<wire layer="91" width="0.1" x1="116" y1="63.73" x2="116" y2="66.46"/>
<pinref part="RLAp" gate="PART_1" pin="2"/>
<junction x="116" y="66.46"/>
<wire layer="91" width="0.1" x1="77.4" y1="40.08" x2="83" y2="40.08"/>
<wire layer="91" width="0.1" x1="83" y1="40.08" x2="83" y2="49.46"/>
<pinref part="U1" gate="PART_1" pin="LDO+"/>
<junction x="83" y="49.46"/>
</segment>
</net>
<net name="Net_2" class="0">
<segment>
<wire layer="91" width="0.1" x1="-142.92" y1="15" x2="-144.27" y2="15"/>
<wire layer="91" width="0.1" x1="-133.97" y1="15" x2="-142.92" y2="15"/>
<pinref part="Rdv2" gate="PART_1" pin="1"/>
<pinref part="Rdv1" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-147.11" y1="8" x2="-142.92" y2="8"/>
<wire layer="91" width="0.1" x1="-142.92" y1="8" x2="-142.92" y2="15"/>
<pinref part="Cref" gate="PART_1" pin="1"/>
<junction x="-142.92" y="15"/>
<wire layer="91" width="0.1" x1="-25.73" y1="-97" x2="-56" y2="-97"/>
<wire layer="91" width="0.1" x1="-56" y1="-10.46" x2="-56" y2="-10"/>
<wire layer="91" width="0.1" x1="-56" y1="-38" x2="-56" y2="-10.46"/>
<wire layer="91" width="0.1" x1="-56" y1="-65.92" x2="-56" y2="-38"/>
<wire layer="91" width="0.1" x1="-56" y1="-97" x2="-56" y2="-65.92"/>
<wire layer="91" width="0.1" x1="-56" y1="-10" x2="-57" y2="-10"/>
<wire layer="91" width="0.1" x1="-57" y1="-10" x2="-57" y2="8"/>
<wire layer="91" width="0.1" x1="-57" y1="8" x2="-142.92" y2="8"/>
<pinref part="LM324" gate="PART_2" pin="IN+"/>
<junction x="-142.92" y="8"/>
<wire layer="91" width="0.1" x1="-25.51" y1="-10.46" x2="-56" y2="-10.46"/>
<pinref part="LM324" gate="PART_4" pin="IN+"/>
<junction x="-56" y="-10.46"/>
<wire layer="91" width="0.1" x1="-25.51" y1="-37.46" x2="-55" y2="-37.46"/>
<wire layer="91" width="0.1" x1="-55" y1="-37.46" x2="-55" y2="-38"/>
<wire layer="91" width="0.1" x1="-55" y1="-38" x2="-56" y2="-38"/>
<pinref part="LM324" gate="PART_3" pin="IN+"/>
<junction x="-56" y="-38"/>
<wire layer="91" width="0.1" x1="-20.73" y1="-65.92" x2="-56" y2="-65.92"/>
<pinref part="LM324" gate="PART_1" pin="IN+"/>
<junction x="-56" y="-65.92"/>
</segment>
</net>
<net name="Net_3" class="0">
<segment>
<wire layer="91" width="0.1" x1="-136.97" y1="-14" x2="-139" y2="-14"/>
<wire layer="91" width="0.1" x1="-139" y1="-14" x2="-139" y2="-25"/>
<wire layer="91" width="0.1" x1="-139" y1="-25" x2="-140" y2="-25"/>
<wire layer="91" width="0.1" x1="-140" y1="-26" x2="-141.27" y2="-26"/>
<wire layer="91" width="0.1" x1="-140" y1="-25" x2="-140" y2="-26"/>
<pinref part="Rfa" gate="PART_1" pin="1"/>
<pinref part="DAC1" gate="PART_1" pin="VoutA"/>
</segment>
</net>
<net name="Net_5" class="0">
<segment>
<wire layer="91" width="0.1" x1="-25.51" y1="-42.54" x2="-29" y2="-42.54"/>
<wire layer="91" width="0.1" x1="-29" y1="-42.54" x2="-29" y2="-53"/>
<wire layer="91" width="0.1" x1="-29" y1="-53" x2="-31.27" y2="-53"/>
<pinref part="LM324" gate="PART_3" pin="IN-"/>
<pinref part="Rb1" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-29" y1="-53" x2="-19.97" y2="-53"/>
<pinref part="Rb2" gate="PART_1" pin="1"/>
<junction x="-29" y="-53"/>
</segment>
</net>
<net name="Net_6" class="0">
<segment>
<wire layer="91" width="0.1" x1="-7.27" y1="-53" x2="-4" y2="-53"/>
<wire layer="91" width="0.1" x1="-4" y1="-43.92" x2="-4" y2="-40"/>
<wire layer="91" width="0.1" x1="-4" y1="-53" x2="-4" y2="-43.92"/>
<wire layer="91" width="0.1" x1="-4" y1="-40" x2="-10.27" y2="-40"/>
<pinref part="Rb2" gate="PART_1" pin="2"/>
<pinref part="LM324" gate="PART_3" pin="OUT"/>
<wire layer="91" width="0.1" x1="34.27" y1="-64.92" x2="25" y2="-64.92"/>
<wire layer="91" width="0.1" x1="25" y1="-64.92" x2="25" y2="-43.92"/>
<wire layer="91" width="0.1" x1="25" y1="-43.92" x2="-4" y2="-43.92"/>
<pinref part="Piezos" gate="PART_1" pin="P3"/>
<junction x="-4" y="-43.92"/>
</segment>
</net>
<net name="Net_8" class="0">
<segment>
<wire layer="91" width="0.1" x1="-20.73" y1="-71" x2="-24" y2="-71"/>
<wire layer="91" width="0.1" x1="-24" y1="-71" x2="-24" y2="-79"/>
<wire layer="91" width="0.1" x1="-24" y1="-79" x2="-27.27" y2="-79"/>
<pinref part="LM324" gate="PART_1" pin="IN-"/>
<pinref part="Rc1" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-19.97" y1="-80" x2="-22.12" y2="-80"/>
<wire layer="91" width="0.1" x1="-22.12" y1="-80" x2="-22.12" y2="-79"/>
<wire layer="91" width="0.1" x1="-22.12" y1="-79" x2="-24" y2="-79"/>
<pinref part="Rc2" gate="PART_1" pin="1"/>
<junction x="-24" y="-79"/>
</segment>
</net>
<net name="Net_9" class="0">
<segment>
<wire layer="91" width="0.1" x1="-5.49" y1="-68.46" x2="-2" y2="-68.46"/>
<wire layer="91" width="0.1" x1="-2" y1="-68.46" x2="-2" y2="-69"/>
<wire layer="91" width="0.1" x1="-2" y1="-69" x2="-2" y2="-80"/>
<wire layer="91" width="0.1" x1="-2" y1="-80" x2="-7.27" y2="-80"/>
<pinref part="LM324" gate="PART_1" pin="OUT"/>
<pinref part="Rc2" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="34.27" y1="-67.46" x2="7" y2="-67.46"/>
<wire layer="91" width="0.1" x1="7" y1="-67.46" x2="7" y2="-69"/>
<wire layer="91" width="0.1" x1="7" y1="-69" x2="-2" y2="-69"/>
<pinref part="Piezos" gate="PART_1" pin="P4"/>
<junction x="-2" y="-69"/>
</segment>
</net>
<net name="Net_10" class="0">
<segment>
<wire layer="91" width="0.1" x1="-119.97" y1="-40" x2="-131" y2="-40"/>
<wire layer="91" width="0.1" x1="-131" y1="-40" x2="-131" y2="-34"/>
<wire layer="91" width="0.1" x1="-131" y1="-34" x2="-141.27" y2="-34"/>
<pinref part="Rfc" gate="PART_1" pin="1"/>
<pinref part="DAC1" gate="PART_1" pin="VoutC"/>
</segment>
</net>
<net name="Net_11" class="0">
<segment>
<wire layer="91" width="0.1" x1="-29" y1="-111" x2="-24.97" y2="-111"/>
<wire layer="91" width="0.1" x1="-34.27" y1="-111" x2="-29" y2="-111"/>
<pinref part="Rd1" gate="PART_1" pin="2"/>
<pinref part="Rd2" gate="PART_1" pin="1"/>
<wire layer="91" width="0.1" x1="-25.73" y1="-102.08" x2="-29" y2="-102.08"/>
<wire layer="91" width="0.1" x1="-29" y1="-102.08" x2="-29" y2="-111"/>
<pinref part="LM324" gate="PART_2" pin="IN-"/>
<junction x="-29" y="-111"/>
</segment>
</net>
<net name="Net_13" class="0">
<segment>
<wire layer="91" width="0.1" x1="115.27" y1="-87.14" x2="107" y2="-87.14"/>
<wire layer="91" width="0.1" x1="107" y1="-87.14" x2="107" y2="-70"/>
<wire layer="91" width="0.1" x1="107" y1="-70" x2="103.73" y2="-70"/>
<pinref part="J2" gate="PART_1" pin="I2C_SCL"/>
<pinref part="NetPort8" gate="PART_1" pin="1"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-172.73" y1="-29" x2="-182" y2="-29"/>
<wire layer="91" width="0.1" x1="-182" y1="-29" x2="-182" y2="-26"/>
<wire layer="91" width="0.1" x1="-182" y1="-26" x2="-185.27" y2="-26"/>
<pinref part="DAC1" gate="PART_1" pin="SCL"/>
<pinref part="NetPort24" gate="PART_1" pin="1"/>
</segment>
</net>
<net name="Net_14" class="0">
<segment>
<wire layer="91" width="0.1" x1="96.73" y1="-82" x2="101" y2="-82"/>
<wire layer="91" width="0.1" x1="101" y1="-82" x2="101" y2="-89.68"/>
<wire layer="91" width="0.1" x1="101" y1="-89.68" x2="115.27" y2="-89.68"/>
<pinref part="NetPort9" gate="PART_1" pin="1"/>
<pinref part="J2" gate="PART_1" pin="I2C_SDA"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-182" y1="-37" x2="-183.27" y2="-37"/>
<wire layer="91" width="0.1" x1="-182" y1="-37" x2="-182" y2="-32"/>
<wire layer="91" width="0.1" x1="-182" y1="-32" x2="-172.73" y2="-32"/>
<pinref part="NetPort25" gate="PART_1" pin="1"/>
<pinref part="DAC1" gate="PART_1" pin="SDA"/>
</segment>
</net>
<net name="Net_15" class="0">
<segment>
<wire layer="91" width="0.1" x1="87.73" y1="-104" x2="112" y2="-104"/>
<wire layer="91" width="0.1" x1="112" y1="-104" x2="112" y2="-102.38"/>
<wire layer="91" width="0.1" x1="112" y1="-102.38" x2="115.27" y2="-102.38"/>
<pinref part="NetPort15" gate="PART_1" pin="1"/>
<pinref part="J2" gate="PART_1" pin="Ldac"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-163" y1="-66.27" x2="-163" y2="-48.73"/>
<pinref part="NetPort27" gate="PART_1" pin="1"/>
<pinref part="DAC1" gate="PART_1" pin="!LDAC"/>
</segment>
</net>
<net name="Net_19" class="0">
<segment>
<wire layer="91" width="0.1" x1="-12.27" y1="-25" x2="-7" y2="-25"/>
<wire layer="91" width="0.1" x1="-7" y1="-25" x2="-7" y2="-13"/>
<wire layer="91" width="0.1" x1="-7" y1="-13" x2="-10.27" y2="-13"/>
<pinref part="Ra2" gate="PART_1" pin="2"/>
<pinref part="LM324" gate="PART_4" pin="OUT"/>
<wire layer="91" width="0.1" x1="34.27" y1="-62.38" x2="21" y2="-62.38"/>
<wire layer="91" width="0.1" x1="21" y1="-62.38" x2="21" y2="-25"/>
<wire layer="91" width="0.1" x1="21" y1="-25" x2="-7" y2="-25"/>
<pinref part="Piezos" gate="PART_1" pin="P2"/>
<junction x="-7" y="-25"/>
</segment>
</net>
<net name="Net_20" class="0">
<segment>
<wire layer="91" width="0.1" x1="42" y1="57.3" x2="42" y2="58.57"/>
<wire layer="91" width="0.1" x1="42" y1="57.3" x2="45" y2="57.3"/>
<wire layer="91" width="0.1" x1="45" y1="57.3" x2="45" y2="45.38"/>
<wire layer="91" width="0.1" x1="45" y1="45.38" x2="34" y2="45.38"/>
<wire layer="91" width="0.1" x1="34" y1="45.38" x2="34" y2="49.27"/>
<pinref part="ViC" gate="PART_1" pin="1"/>
<pinref part="NetPort3" gate="PART_1" pin="+12V"/>
<wire layer="91" width="0.1" x1="53.27" y1="40.08" x2="45" y2="40.08"/>
<wire layer="91" width="0.1" x1="45" y1="40.08" x2="45" y2="45.38"/>
<pinref part="U1" gate="PART_1" pin="Vin"/>
<junction x="45" y="45.38"/>
<wire layer="91" width="0.1" x1="51" y1="35" x2="51" y2="38"/>
<wire layer="91" width="0.1" x1="51" y1="38" x2="34" y2="38"/>
<wire layer="91" width="0.1" x1="34" y1="38" x2="34" y2="45.38"/>
<junction x="51" y="35"/>
<wire layer="91" width="0.1" x1="51" y1="35" x2="50" y2="35"/>
<wire layer="91" width="0.1" x1="53.27" y1="35" x2="51" y2="35"/>
<wire layer="91" width="0.1" x1="50" y1="35" x2="50" y2="32.46"/>
<wire layer="91" width="0.1" x1="50" y1="32.46" x2="53.27" y2="32.46"/>
<pinref part="U1" gate="PART_1" pin="EN+"/>
<pinref part="U1" gate="PART_1" pin="EN-"/>
<junction x="34" y="45.38"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="115.27" y1="-92.22" x2="78" y2="-92.22"/>
<wire layer="91" width="0.1" x1="78" y1="-92.22" x2="78" y2="-76.73"/>
<pinref part="J2" gate="PART_1" pin="12V"/>
<pinref part="NetPort2" gate="PART_1" pin="+12V"/>
</segment>
</net>
<net name="Net_21" class="0">
<segment>
<wire layer="91" width="0.1" x1="75" y1="-10" x2="75" y2="-11.27"/>
<wire layer="91" width="0.1" x1="75" y1="-10" x2="82" y2="-10"/>
<wire layer="91" width="0.1" x1="82" y1="-10" x2="82" y2="-8.54"/>
<wire layer="91" width="0.1" x1="112" y1="-8.54" x2="120" y2="-8.54"/>
<wire layer="91" width="0.1" x1="82" y1="-8.54" x2="112" y2="-8.54"/>
<wire layer="91" width="0.1" x1="120" y1="-8.54" x2="120" y2="36.46"/>
<wire layer="91" width="0.1" x1="120" y1="36.46" x2="135" y2="36.46"/>
<wire layer="91" width="0.1" x1="135" y1="36.46" x2="153.27" y2="36.46"/>
<pinref part="LmC" gate="PART_1" pin="2"/>
<pinref part="LM324" gate="VCC_AND_GND" pin="V-"/>
<wire layer="91" width="0.1" x1="112" y1="-4.97" x2="112" y2="-8.54"/>
<pinref part="RLAm" gate="PART_1" pin="1"/>
<junction x="112" y="-8.54"/>
<wire layer="91" width="0.1" x1="135" y1="42.27" x2="135" y2="36.46"/>
<pinref part="OC" gate="PART_1" pin="2"/>
<junction x="135" y="36.46"/>
<wire layer="91" width="0.1" x1="82" y1="-8.54" x2="82" y2="14.68"/>
<wire layer="91" width="0.1" x1="82" y1="14.68" x2="77.4" y2="14.68"/>
<pinref part="U1" gate="PART_1" pin="LDO-"/>
<junction x="82" y="-8.54"/>
</segment>
</net>
<net name="Net_18" class="0">
<segment>
<wire layer="91" width="0.1" x1="53.27" y1="22.3" x2="52" y2="22.3"/>
<wire layer="91" width="0.1" x1="52" y1="22.3" x2="35" y2="22.3"/>
<wire layer="91" width="0.1" x1="35" y1="22.3" x2="35" y2="30"/>
<wire layer="91" width="0.1" x1="35" y1="30" x2="26" y2="30"/>
<wire layer="91" width="0.1" x1="26" y1="30" x2="26" y2="33"/>
<wire layer="91" width="0.1" x1="26" y1="33" x2="24.08" y2="33"/>
<wire layer="91" width="0.1" x1="24.08" y1="33" x2="24.08" y2="29.81"/>
<pinref part="U1" gate="PART_1" pin="C+"/>
<pinref part="Cf" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="52" y1="22.3" x2="59" y2="22.3"/>
<wire layer="91" width="0.1" x1="59" y1="22.3" x2="59" y2="3"/>
<wire layer="91" width="0.1" x1="59" y1="3" x2="53" y2="3"/>
<wire layer="91" width="0.1" x1="53" y1="3" x2="53" y2="-4"/>
<wire layer="91" width="0.1" x1="53" y1="-4" x2="78" y2="-4"/>
<wire layer="91" width="0.1" x1="78" y1="-4" x2="78" y2="9"/>
<wire layer="91" width="0.1" x1="78" y1="9" x2="81" y2="9"/>
<wire layer="91" width="0.1" x1="81" y1="9" x2="81" y2="10.87"/>
<wire layer="91" width="0.1" x1="81" y1="10.87" x2="77.4" y2="10.87"/>
<pinref part="U1" gate="PART_1" pin="NC@2"/>
<junction x="52" y="22.3"/>
</segment>
</net>
<net name="Net_17" class="0">
<segment>
<wire layer="91" width="0.1" x1="24.08" y1="22.19" x2="24.08" y2="19"/>
<wire layer="91" width="0.1" x1="46" y1="19" x2="50" y2="19"/>
<wire layer="91" width="0.1" x1="24.08" y1="19" x2="46" y2="19"/>
<wire layer="91" width="0.1" x1="50" y1="19" x2="50" y2="19.76"/>
<wire layer="91" width="0.1" x1="50" y1="19.76" x2="53.27" y2="19.76"/>
<pinref part="Cf" gate="PART_1" pin="1"/>
<pinref part="U1" gate="PART_1" pin="C-"/>
<wire layer="91" width="0.1" x1="53.27" y1="10.87" x2="46" y2="10.87"/>
<wire layer="91" width="0.1" x1="46" y1="10.87" x2="46" y2="19"/>
<pinref part="U1" gate="PART_1" pin="NC@1"/>
<junction x="46" y="19"/>
</segment>
</net>
<net name="Net_22" class="0">
<segment>
<wire layer="91" width="0.1" x1="53.27" y1="14.68" x2="34" y2="14.68"/>
<wire layer="91" width="0.1" x1="34" y1="14.68" x2="34" y2="-10.27"/>
<pinref part="U1" gate="PART_1" pin="Vout"/>
<pinref part="VoC" gate="PART_1" pin="2"/>
</segment>
</net>
<net name="Net_25" class="0">
<segment>
<wire layer="91" width="0.1" x1="-117.97" y1="-25" x2="-121" y2="-25"/>
<wire layer="91" width="0.1" x1="-121" y1="-25" x2="-121" y2="-29"/>
<wire layer="91" width="0.1" x1="-121" y1="-29" x2="-120" y2="-29"/>
<wire layer="91" width="0.1" x1="-120" y1="-29" x2="-120" y2="-30"/>
<wire layer="91" width="0.1" x1="-120" y1="-30" x2="-141.27" y2="-30"/>
<pinref part="Rfb" gate="PART_1" pin="1"/>
<pinref part="DAC1" gate="PART_1" pin="VoutB"/>
</segment>
</net>
<net name="Net_23" class="0">
<segment>
<wire layer="91" width="0.1" x1="56" y1="-8.27" x2="56" y2="1"/>
<wire layer="91" width="0.1" x1="56" y1="1" x2="64.7" y2="1"/>
<wire layer="91" width="0.1" x1="64.7" y1="1" x2="64.7" y2="4.52"/>
<pinref part="R14" gate="PART_1" pin="2"/>
<pinref part="U1" gate="PART_1" pin="RT"/>
</segment>
</net>
<net name="Net_24" class="0">
<segment>
<wire layer="91" width="0.1" x1="77.4" y1="32.46" x2="89" y2="32.46"/>
<wire layer="91" width="0.1" x1="89" y1="32.46" x2="89" y2="42"/>
<wire layer="91" width="0.1" x1="89" y1="42" x2="96" y2="42"/>
<wire layer="91" width="0.1" x1="96" y1="42" x2="96" y2="37.19"/>
<pinref part="U1" gate="PART_1" pin="BYP+"/>
<pinref part="BpC" gate="PART_1" pin="2"/>
</segment>
</net>
<net name="Net_28" class="0">
<segment>
<wire layer="91" width="0.1" x1="116" y1="51.03" x2="116" y2="50"/>
<wire layer="91" width="0.1" x1="116" y1="50" x2="115" y2="50"/>
<wire layer="91" width="0.1" x1="115" y1="50" x2="115" y2="46.73"/>
<pinref part="RLAp" gate="PART_1" pin="1"/>
<pinref part="RAGp" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="115" y1="50" x2="94" y2="50"/>
<wire layer="91" width="0.1" x1="94" y1="50" x2="94" y2="46"/>
<wire layer="91" width="0.1" x1="94" y1="46" x2="86" y2="46"/>
<wire layer="91" width="0.1" x1="86" y1="46" x2="86" y2="34"/>
<wire layer="91" width="0.1" x1="86" y1="34" x2="81" y2="34"/>
<wire layer="91" width="0.1" x1="81" y1="34" x2="81" y2="35"/>
<wire layer="91" width="0.1" x1="81" y1="35" x2="77.4" y2="35"/>
<pinref part="U1" gate="PART_1" pin="ADJ+"/>
<junction x="115" y="50"/>
</segment>
</net>
<net name="Net_26" class="0">
<segment>
<wire layer="91" width="0.1" x1="96" y1="10.57" x2="96" y2="7"/>
<wire layer="91" width="0.1" x1="96" y1="7" x2="86" y2="7"/>
<wire layer="91" width="0.1" x1="86" y1="7" x2="86" y2="22.3"/>
<wire layer="91" width="0.1" x1="86" y1="22.3" x2="77.4" y2="22.3"/>
<pinref part="BmC" gate="PART_1" pin="1"/>
<pinref part="U1" gate="PART_1" pin="BYP-"/>
</segment>
</net>
<net name="Net_30" class="0">
<segment>
<wire layer="91" width="0.1" x1="115" y1="13.03" x2="115" y2="11"/>
<wire layer="91" width="0.1" x1="115" y1="11" x2="112" y2="11"/>
<wire layer="91" width="0.1" x1="112" y1="11" x2="112" y2="7.73"/>
<pinref part="RAGm" gate="PART_1" pin="1"/>
<pinref part="RLAm" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="112" y1="11" x2="101" y2="11"/>
<wire layer="91" width="0.1" x1="101" y1="11" x2="101" y2="3"/>
<wire layer="91" width="0.1" x1="101" y1="3" x2="84" y2="3"/>
<wire layer="91" width="0.1" x1="84" y1="3" x2="84" y2="21"/>
<wire layer="91" width="0.1" x1="84" y1="21" x2="81" y2="21"/>
<wire layer="91" width="0.1" x1="81" y1="21" x2="81" y2="19.76"/>
<wire layer="91" width="0.1" x1="81" y1="19.76" x2="77.4" y2="19.76"/>
<pinref part="U1" gate="PART_1" pin="ADJ-"/>
<junction x="112" y="11"/>
</segment>
</net>
<net name="Net_31" class="0">
<segment>
<wire layer="91" width="0.1" x1="-12.27" y1="-111" x2="-7" y2="-111"/>
<wire layer="91" width="0.1" x1="-7" y1="-100" x2="-7" y2="-99.54"/>
<wire layer="91" width="0.1" x1="-7" y1="-111" x2="-7" y2="-100"/>
<wire layer="91" width="0.1" x1="-7" y1="-99.54" x2="-10.49" y2="-99.54"/>
<pinref part="Rd2" gate="PART_1" pin="2"/>
<pinref part="LM324" gate="PART_2" pin="OUT"/>
<wire layer="91" width="0.1" x1="34.27" y1="-70" x2="16" y2="-70"/>
<wire layer="91" width="0.1" x1="16" y1="-70" x2="16" y2="-100"/>
<wire layer="91" width="0.1" x1="16" y1="-100" x2="-7" y2="-100"/>
<pinref part="Piezos" gate="PART_1" pin="P5"/>
<junction x="-7" y="-100"/>
</segment>
</net>
<net name="Net_32" class="0">
<segment>
<wire layer="91" width="0.1" x1="-123.97" y1="-60" x2="-138" y2="-60"/>
<wire layer="91" width="0.1" x1="-138" y1="-60" x2="-138" y2="-38"/>
<wire layer="91" width="0.1" x1="-138" y1="-38" x2="-141.27" y2="-38"/>
<pinref part="Rfd" gate="PART_1" pin="1"/>
<pinref part="DAC1" gate="PART_1" pin="VoutD"/>
</segment>
</net>
<net name="Net_4" class="0">
<segment>
<wire layer="91" width="0.1" x1="-124.27" y1="-14" x2="-109" y2="-14"/>
<wire layer="91" width="0.1" x1="-109" y1="-14" x2="-109" y2="-9.73"/>
<pinref part="Rfa" gate="PART_1" pin="2"/>
<pinref part="Ca" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-109" y1="-14" x2="-61" y2="-14"/>
<wire layer="91" width="0.1" x1="-61" y1="-14" x2="-61" y2="-25"/>
<wire layer="91" width="0.1" x1="-61" y1="-25" x2="-46.97" y2="-25"/>
<pinref part="Ra1" gate="PART_1" pin="1"/>
<junction x="-109" y="-14"/>
</segment>
</net>
<net name="Net_7" class="0">
<segment>
<wire layer="91" width="0.1" x1="-111.27" y1="-60" x2="-101" y2="-60"/>
<wire layer="91" width="0.1" x1="-101" y1="-60" x2="-101" y2="-66.27"/>
<pinref part="Rfd" gate="PART_1" pin="2"/>
<pinref part="Cd" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-101" y1="-60" x2="-66" y2="-60"/>
<wire layer="91" width="0.1" x1="-66" y1="-60" x2="-66" y2="-111"/>
<wire layer="91" width="0.1" x1="-66" y1="-111" x2="-46.97" y2="-111"/>
<pinref part="Rd1" gate="PART_1" pin="1"/>
<junction x="-101" y="-60"/>
</segment>
</net>
<net name="Net_12" class="0">
<segment>
<wire layer="91" width="0.1" x1="-107.27" y1="-40" x2="-97" y2="-40"/>
<wire layer="91" width="0.1" x1="-97" y1="-40" x2="-97" y2="-43.27"/>
<pinref part="Rfc" gate="PART_1" pin="2"/>
<pinref part="Cc" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-97" y1="-40" x2="-62" y2="-40"/>
<wire layer="91" width="0.1" x1="-62" y1="-40" x2="-62" y2="-79"/>
<wire layer="91" width="0.1" x1="-62" y1="-79" x2="-39.97" y2="-79"/>
<pinref part="Rc1" gate="PART_1" pin="1"/>
<junction x="-97" y="-40"/>
</segment>
</net>
<net name="Net_16" class="0">
<segment>
<wire layer="91" width="0.1" x1="-105.27" y1="-25" x2="-100" y2="-25"/>
<wire layer="91" width="0.1" x1="-100" y1="-25" x2="-94.08" y2="-25"/>
<wire layer="91" width="0.1" x1="-94.08" y1="-21.08" x2="-92.81" y2="-21.08"/>
<wire layer="91" width="0.1" x1="-94.08" y1="-25" x2="-94.08" y2="-21.08"/>
<pinref part="Rfb" gate="PART_1" pin="2"/>
<pinref part="Cb" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-100" y1="-25" x2="-100" y2="-30"/>
<wire layer="91" width="0.1" x1="-100" y1="-30" x2="-59" y2="-30"/>
<wire layer="91" width="0.1" x1="-59" y1="-30" x2="-59" y2="-53"/>
<wire layer="91" width="0.1" x1="-59" y1="-53" x2="-43.97" y2="-53"/>
<pinref part="Rb1" gate="PART_1" pin="1"/>
<junction x="-100" y="-25"/>
</segment>
</net>
<net name="Net_33" class="0">
<segment>
<wire layer="91" width="0.1" x1="-129.97" y1="2" x2="-138" y2="2"/>
<wire layer="91" width="0.1" x1="-138" y1="2" x2="-138" y2="-3.46"/>
<wire layer="91" width="0.1" x1="-138" y1="-3.46" x2="-134.73" y2="-3.46"/>
<pinref part="Rdr" gate="PART_1" pin="1"/>
<pinref part="J3" gate="PART_1" pin="P2"/>
</segment>
</net>
<net name="Net_34" class="0">
<segment>
<wire layer="91" width="0.1" x1="-152" y1="-21.27" x2="-152" y2="-14"/>
<wire layer="91" width="0.1" x1="-152" y1="-14" x2="-142" y2="-14"/>
<wire layer="91" width="0.1" x1="-142" y1="-14" x2="-142" y2="-6"/>
<wire layer="91" width="0.1" x1="-142" y1="-6" x2="-134.73" y2="-6"/>
<pinref part="DAC1" gate="PART_1" pin="Vref"/>
<pinref part="J3" gate="PART_1" pin="P1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
