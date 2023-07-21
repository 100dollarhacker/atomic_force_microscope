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
<package name="SPSWITCH">
<pad name="1" x="0" y="0" drill="0.9" diameter="1.5" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="1.5" rot="R0" stop="yes" thermals="no"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="1.5" rot="R0" stop="yes" thermals="no"/>
<hole x="0" y="-5.08" drill="1.1"/>
<hole x="5.08" y="-5.08" drill="1.1"/>
<wire layer="51" width="0.12" x1="0" y1="-10.16" x2="5.08" y2="-10.16"/>
<wire layer="21" width="0.12" x1="-2.54" y1="1.27" x2="7.62" y2="1.27"/>
<wire layer="21" width="0.12" x1="7.62" y1="1.27" x2="7.62" y2="-7.62"/>
<wire layer="21" width="0.12" x1="7.62" y1="-7.62" x2="-2.54" y2="-7.62"/>
<wire layer="21" width="0.12" x1="-2.54" y1="-7.62" x2="-2.54" y2="1.27"/>
</package>
<package name="24PIN_FLEX_.5MM_PITCH">
<smd name="1" x="-2.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="-3.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="3" x="-3.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="4" x="-4.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="5" x="-4.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="6" x="-5.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="7" x="-5.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="8" x="-6.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="9" x="-6.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="10" x="-7.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="11" x="-7.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="12" x="-8.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="13" x="-8.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="14" x="-9.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="15" x="-9.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="16" x="-10.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="17" x="-10.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="18" x="-11.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="19" x="-11.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="20" x="-12.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="21" x="-12.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="22" x="-13.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="23" x="-13.54" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="24" x="-14.04" y="3.81" layer="1" dx="0.3" dy="2.5" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="25" x="-0.84" y="2.01" layer="1" dx="2" dy="2" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="26" x="-15.74" y="2.01" layer="1" dx="2" dy="2" rot="R0" stop="yes" cream="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-16.51" y1="3" x2="-0.001" y2="3"/>
<wire layer="21" width="0.12" x1="-0.001" y1="3" x2="-0.001" y2="0"/>
<wire layer="21" width="0.12" x1="-0.001" y1="0" x2="-16.51" y2="0"/>
<wire layer="21" width="0.12" x1="-16.51" y1="0" x2="-16.51" y2="3"/>
</package>
<package name="TO-220V">
<pad name="1" x="-2.54" y="0" drill="1.2" shape="square" diameter="1.8" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="2.54" y="0" drill="1.2" diameter="1.8" rot="R0" stop="yes" thermals="no"/>
<pad name="3" x="0" y="0" drill="1.2" diameter="1.8" rot="R0" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-5.2" y1="1.899" x2="5.2" y2="1.899"/>
<wire layer="21" width="0.12" x1="-5.2" y1="2.9" x2="5.2" y2="2.9"/>
<wire layer="21" width="0.12" x1="-5.2" y1="-1.7" x2="5.2" y2="-1.7"/>
<wire layer="21" width="0.12" x1="-5.2" y1="-1.7" x2="-5.2" y2="2.9"/>
<wire layer="21" width="0.12" x1="5.2" y1="-1.7" x2="5.2" y2="2.9"/>
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
<package name="SMB">
<smd name="1" x="-2.2" y="0" layer="1" dx="2.4" dy="2.4" rot="R0" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="2.2" y="0" layer="1" dx="2.4" dy="2.4" rot="R0" stop="yes" cream="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-2.25" y1="1.8" x2="2.25" y2="1.8"/>
<wire layer="21" width="0.12" x1="-2.25" y1="-1.8" x2="2.25" y2="-1.8"/>
<wire layer="21" width="0.12" x1="2.25" y1="1.8" x2="2.25" y2="1.55"/>
<wire layer="21" width="0.12" x1="-2.25" y1="1.8" x2="-2.25" y2="1.55"/>
<wire layer="21" width="0.12" x1="2.25" y1="-1.55" x2="2.25" y2="-1.8"/>
<wire layer="21" width="0.12" x1="-2.25" y1="-1.55" x2="-2.25" y2="-1.8"/>
<circle layer="21" x="-4.075" y="0" radius="0.3" width="0"/>
</package>
<package name="HDR-2X1T/2.54X2.54/3X5">
<description>Datasheet: &lt;a href="http://www.molex.com/pdm_docs/sd/901310126_sd.pdf"&gt;http://www.molex.com/pdm_docs/sd/901310126_sd.pdf&lt;/a&gt;</description>
<pad name="1" x="0" y="-1.27" drill="1.1" shape="square" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="0" y="1.27" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-1.27" y1="2.54" x2="1.27" y2="2.54"/>
<wire layer="21" width="0.12" x1="1.27" y1="2.54" x2="1.27" y2="-2.54"/>
<wire layer="21" width="0.12" x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54"/>
<wire layer="21" width="0.12" x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54"/>
</package>
<package name="RES_0805">
<smd name="1" x="-0.95" y="0" layer="1" dx="1.5" dy="1.3" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="0.95" y="0" layer="1" dx="1.5" dy="1.3" rot="R90" stop="yes" cream="yes" thermals="no"/>
</package>
<package name="TO-220">
<description>Possible Names: SOT78B, SOT78, TO-220AB, SC46, MP-25</description>
<pad name="1" x="-2.54" y="0" drill="1.1" shape="square" diameter="1.9" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="0" y="0" drill="1.1" diameter="1.9" rot="R0" stop="yes" thermals="no"/>
<pad name="3" x="2.54" y="0" drill="1.1" diameter="1.9" rot="R0" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-5" y1="2.7" x2="5" y2="2.7"/>
<wire layer="21" width="0.12" x1="5" y1="2.7" x2="5" y2="-1.8"/>
<wire layer="21" width="0.12" x1="5" y1="-1.8" x2="-5" y2="-1.8"/>
<wire layer="21" width="0.12" x1="-5" y1="-1.8" x2="-5" y2="2.7"/>
<wire layer="21" width="0.12" x1="-5" y1="1.8" x2="5" y2="1.8"/>
</package>
<package name="CAP_0805">
<smd name="1" x="-0.95" y="0" layer="1" dx="1.5" dy="1.3" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="0.95" y="0" layer="1" dx="1.5" dy="1.3" rot="R90" stop="yes" cream="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-2.001" y1="-0.649" x2="-2.001" y2="0.649"/>
</package>
<package name="RES_1210">
<smd name="1" x="-1.4" y="0" layer="1" dx="2.7" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="1.4" y="0" layer="1" dx="2.7" dy="1.6" rot="R90" stop="yes" cream="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-0.299" y1="1.25" x2="0.299" y2="1.25"/>
<wire layer="21" width="0.12" x1="-0.299" y1="-1.25" x2="0.299" y2="-1.25"/>
</package>
<package name="CAPR-2.5/6.3H11">
<pad name="1" x="-1.25" y="0" drill="0.8" diameter="1.35" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="1.25" y="0" drill="0.8" diameter="1.35" rot="R0" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="3.15" y1="0" x2="3.15" y2="0"/>
</package>
<package name="CAPPR-5/10.5H14">
<description>D x L (size without insulating sleeve): 10 x 12</description>
<pad name="1" x="-2.5" y="0" drill="0.9" shape="square" diameter="1.5" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="2.5" y="0" drill="0.9" diameter="1.5" rot="R0" stop="yes" thermals="no"/>
<circle layer="21" x="0" y="0" radius="5.25" width="0.12"/>
<wire layer="21" width="0.12" x1="-4.087" y1="-0.3" x2="-4.087" y2="0.3"/>
<wire layer="21" width="0.12" x1="-4.387" y1="0" x2="-3.787" y2="0"/>
</package>
<package name="HDR-1X3T/2.54/7X2">
<pad name="1" x="-2.54" y="0" drill="1.1" shape="square" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="0" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<pad name="3" x="2.54" y="0" drill="1.1" diameter="1.7" rot="R0" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-3.81" y1="1.27" x2="3.81" y2="1.27"/>
<wire layer="21" width="0.12" x1="3.81" y1="1.27" x2="3.81" y2="-1.27"/>
<wire layer="21" width="0.12" x1="3.81" y1="-1.27" x2="-3.81" y2="-1.27"/>
<wire layer="21" width="0.12" x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27"/>
<wire layer="51" width="0.12" x1="-4.81" y1="1.52" x2="4.81" y2="1.52"/>
<text x="-2.54" y="2.54" size="0.493" layer="51" font="vector" ratio="10" rot="R0" align="top-left" distance="92">BOARD EDGE</text>
</package>
<package name="DCJACK2.1MM">
<pad name="2" x="7.9" y="0" drill="3.2" diameter="4.5" rot="R0" stop="yes" thermals="no"/>
<pad name="3" x="11.45" y="5" drill="3.2" diameter="4.5" rot="R90" stop="yes" thermals="no"/>
<pad name="1" x="14.5" y="0" drill="3.2" diameter="4.5" rot="R0" stop="yes" thermals="no"/>
<hole x="3.95" y="0" drill="2.3"/>
<wire layer="51" width="0.12" x1="0" y1="3.81" x2="0" y2="-3.81"/>
</package>
<package name="SOT23">
<smd name="1" x="-1.15" y="0.95" layer="1" dx="0.65" dy="1.05" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="2" x="-1.15" y="-0.95" layer="1" dx="0.65" dy="1.05" rot="R90" stop="yes" cream="yes" thermals="no"/>
<smd name="3" x="1.15" y="0" layer="1" dx="0.65" dy="1.05" rot="R90" stop="yes" cream="yes" thermals="no"/>
<circle layer="21" x="-1.524" y="1.734" radius="0.196" width="0"/>
<wire layer="21" width="0.12" x1="-0.25" y1="1.5" x2="-0.25" y2="-1.5"/>
<wire layer="21" width="0.12" x1="-0.25" y1="-1.5" x2="0.25" y2="-1.5"/>
<wire layer="21" width="0.12" x1="0.25" y1="-1.5" x2="0.25" y2="1.5"/>
<wire layer="21" width="0.12" x1="0.25" y1="1.5" x2="-0.25" y2="1.5"/>
</package>
</packages>
<symbols>
<symbol name="SPSWITCH">
<wire layer="94" width="0.25" x1="0" y1="0" x2="10.16" y2="0"/>
<wire layer="94" width="0.25" x1="10.16" y1="0" x2="10.16" y2="-1.27"/>
<wire layer="94" width="0.25" x1="10.16" y1="-1.27" x2="0" y2="-1.27"/>
<wire layer="94" width="0.25" x1="0" y1="-1.27" x2="0" y2="0"/>
<wire layer="94" width="0.25" x1="1.27" y1="1.27" x2="3.81" y2="1.27"/>
<wire layer="94" width="0.25" x1="6.35" y1="1.27" x2="8.89" y2="1.27"/>
<wire layer="94" width="0.25" x1="3.81" y1="1.27" x2="5.08" y2="1.27"/>
<wire layer="94" width="0.25" x1="6.35" y1="1.27" x2="5.08" y2="1.27"/>
<pin name="1" visible="pad" length="short" direction="nc" rot="R270" x="0" y="2.54"/>
<pin name="2" visible="pad" length="short" direction="nc" rot="R270" x="5.08" y="2.54"/>
<pin name="3" visible="pad" length="short" direction="nc" rot="R270" x="10.16" y="2.54"/>
</symbol>
<symbol name="SF-HD65_CONNECTOR">
<pin name="F-" visible="both" length="short" direction="nc" x="0" y="26.67"/>
<pin name="F+" visible="both" length="short" direction="nc" x="0" y="24.13"/>
<pin name="T+" visible="both" length="short" direction="nc" x="0" y="21.59"/>
<pin name="T-" visible="both" length="short" direction="nc" x="0" y="19.05"/>
<pin name="C/c" visible="both" length="short" direction="nc" x="0" y="16.51"/>
<pin name="D/d" visible="both" length="short" direction="nc" x="0" y="13.97"/>
<pin name="CD/DVD_SW" visible="both" length="short" direction="nc" x="0" y="11.43"/>
<pin name="RF" visible="both" length="short" direction="nc" x="0" y="8.89"/>
<pin name="A/a" visible="both" length="short" direction="nc" x="0" y="6.35"/>
<pin name="B/b" visible="both" length="short" direction="nc" x="0" y="3.81"/>
<pin name="F" visible="both" length="short" direction="nc" x="0" y="1.27"/>
<pin name="GND-PD" visible="both" length="short" direction="nc" x="0" y="-1.27"/>
<pin name="Vc(Vref)" visible="both" length="short" direction="nc" x="0" y="-3.81"/>
<pin name="Vcc" visible="both" length="short" direction="nc" x="0" y="-6.35"/>
<pin name="E" visible="both" length="short" direction="nc" x="0" y="-8.89"/>
<pin name="(N.C.)@1" visible="both" length="short" direction="nc" x="0" y="-11.43"/>
<pin name="VR-CD" visible="both" length="short" direction="nc" x="0" y="-13.97"/>
<pin name="VR-DVD" visible="both" length="short" direction="nc" x="0" y="-16.51"/>
<pin name="CD-LD" visible="both" length="short" direction="nc" x="0" y="-19.05"/>
<pin name="MD" visible="both" length="short" direction="nc" x="0" y="-21.59"/>
<pin name="HFM" visible="both" length="short" direction="nc" x="0" y="-24.13"/>
<pin name="(N.C.)@2" visible="both" length="short" direction="nc" x="0" y="-26.67"/>
<pin name="DVD-LD" visible="both" length="short" direction="nc" x="0" y="-29.21"/>
<pin name="GND-LD" visible="both" length="short" direction="nc" x="0" y="-31.75"/>
</symbol>
<symbol name="L7809CV">
<wire layer="94" width="0.25" x1="-8.89" y1="5.08" x2="8.89" y2="5.08"/>
<wire layer="94" width="0.25" x1="8.89" y1="5.08" x2="8.89" y2="-5.08"/>
<wire layer="94" width="0.25" x1="8.89" y1="-5.08" x2="-8.89" y2="-5.08"/>
<wire layer="94" width="0.25" x1="-8.89" y1="-5.08" x2="-8.89" y2="5.08"/>
<pin name="OUT" visible="both" length="short" direction="pwr" rot="R180" x="11.43" y="0"/>
<pin name="IN" visible="both" length="short" direction="pwr" x="-11.43" y="0"/>
<pin name="GND" visible="pad" length="short" direction="pwr" rot="R90" x="0" y="-7.62"/>
</symbol>
<symbol name="TVS3V5">
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
<symbol name="TVS3V5_4_0">
<wire layer="94" width="0.25" x1="-3.81" y1="2.54" x2="1.27" y2="2.54"/>
<wire layer="94" width="0.25" x1="1.27" y1="2.54" x2="1.27" y2="-2.54"/>
<wire layer="94" width="0.25" x1="1.27" y1="-2.54" x2="-3.81" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-3.81" y1="-2.54" x2="-3.81" y2="2.54"/>
<pin name="1" visible="pad" length="short" direction="nc" x="-6.35" y="0"/>
<pin name="2" visible="pad" length="short" direction="nc" rot="R180" x="3.81" y="0"/>
</symbol>
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
<pin name="D10" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="11.43"/>
<pin name="D9" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="8.89"/>
<pin name="D8" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="6.35"/>
<pin name="D7" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="3.81"/>
<pin name="D6" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="1.27"/>
<pin name="D5" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-1.27"/>
<pin name="D4_GND" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-3.81"/>
<pin name="D3_Ldac" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-6.35"/>
<pin name="D2_SDA" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-8.89"/>
<pin name="D1_SCL" visible="both" length="short" direction="pas" rot="R180" x="7.62" y="-11.43"/>
</symbol>
<symbol name="1-644456-0_8_0">
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
<symbol name="LM317T">
<wire layer="94" width="0.25" x1="-6.35" y1="5.08" x2="6.35" y2="5.08"/>
<wire layer="94" width="0.25" x1="6.35" y1="5.08" x2="6.35" y2="-5.08"/>
<wire layer="94" width="0.25" x1="6.35" y1="-5.08" x2="-6.35" y2="-5.08"/>
<wire layer="94" width="0.25" x1="-6.35" y1="-5.08" x2="-6.35" y2="5.08"/>
<pin name="ADJ" visible="both" length="short" direction="pas" x="-8.89" y="-2.54"/>
<pin name="Vin" visible="both" length="short" direction="in" x="-8.89" y="2.54"/>
<pin name="Vout" visible="both" length="short" direction="out" rot="R180" x="8.89" y="0"/>
</symbol>
<symbol name="CAP_0805">
<wire layer="94" width="0.254" x1="0.944" y1="1.911" x2="0.944" y2="-1.911" curve="74.02156"/>
<wire layer="94" width="0.25" x1="-0.33" y1="-1.905" x2="-0.33" y2="1.905"/>
<wire layer="94" width="0.25" x1="0.305" y1="0" x2="1.27" y2="0"/>
<wire layer="94" width="0.25" x1="-1.27" y1="0" x2="-0.33" y2="0"/>
<pin name="2" visible="pad" length="short" direction="pas" rot="R180" x="3.81" y="0"/>
<pin name="1" visible="pad" length="short" direction="pas" x="-3.81" y="0"/>
</symbol>
<symbol name="+5V">
<wire layer="94" width="0.25" x1="-2.54" y1="0" x2="2.54" y2="0"/>
<pin name="+5V" visible="pad" length="short" direction="sup" rot="R90" x="0" y="-2.54"/>
</symbol>
<symbol name="FERRITEBEAD">
<wire layer="94" width="0.25" x1="-5.08" y1="2.54" x2="5.08" y2="2.54"/>
<wire layer="94" width="0.25" x1="5.08" y1="2.54" x2="5.08" y2="-2.54"/>
<wire layer="94" width="0.25" x1="5.08" y1="-2.54" x2="-5.08" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54"/>
<pin name="1" visible="pad" length="short" direction="nc" x="-7.62" y="0"/>
<pin name="2" visible="pad" length="short" direction="nc" rot="R180" x="7.62" y="0"/>
</symbol>
<symbol name="10UF_CAP">
<circle layer="94" x="-1.27" y="0" radius="3.81" width="0.25"/>
<pin name="1" visible="pad" length="short" direction="nc" x="-7.62" y="0"/>
<pin name="2" visible="pad" length="short" direction="nc" rot="R180" x="5.08" y="0"/>
</symbol>
<symbol name="220UF_CAP">
<wire layer="94" width="0.25" x1="0.635" y1="5.08" x2="1.823" y2="4.969"/>
<wire layer="94" width="0.25" x1="1.823" y1="4.969" x2="2.959" y2="4.641"/>
<wire layer="94" width="0.25" x1="2.959" y1="4.641" x2="3.994" y2="4.11"/>
<wire layer="94" width="0.25" x1="3.994" y1="4.11" x2="4.882" y2="3.399"/>
<wire layer="94" width="0.25" x1="4.882" y1="3.399" x2="5.584" y2="2.54"/>
<wire layer="94" width="0.25" x1="5.584" y1="2.54" x2="6.07" y2="1.57"/>
<wire layer="94" width="0.25" x1="6.07" y1="1.57" x2="6.319" y2="0.531"/>
<wire layer="94" width="0.25" x1="6.319" y1="0.531" x2="6.319" y2="-0.531"/>
<wire layer="94" width="0.25" x1="6.319" y1="-0.531" x2="6.07" y2="-1.57"/>
<wire layer="94" width="0.25" x1="6.07" y1="-1.57" x2="5.584" y2="-2.54"/>
<wire layer="94" width="0.25" x1="5.584" y1="-2.54" x2="4.882" y2="-3.399"/>
<wire layer="94" width="0.25" x1="4.882" y1="-3.399" x2="3.994" y2="-4.11"/>
<wire layer="94" width="0.25" x1="3.994" y1="-4.11" x2="2.959" y2="-4.641"/>
<wire layer="94" width="0.25" x1="2.959" y1="-4.641" x2="1.823" y2="-4.969"/>
<wire layer="94" width="0.25" x1="1.823" y1="-4.969" x2="0.635" y2="-5.08"/>
<wire layer="94" width="0.25" x1="0.635" y1="-5.08" x2="-0.553" y2="-4.969"/>
<wire layer="94" width="0.25" x1="-0.553" y1="-4.969" x2="-1.689" y2="-4.641"/>
<wire layer="94" width="0.25" x1="-1.689" y1="-4.641" x2="-2.724" y2="-4.11"/>
<wire layer="94" width="0.25" x1="-2.724" y1="-4.11" x2="-3.612" y2="-3.399"/>
<wire layer="94" width="0.25" x1="-3.612" y1="-3.399" x2="-4.314" y2="-2.54"/>
<wire layer="94" width="0.25" x1="-4.314" y1="-2.54" x2="-4.8" y2="-1.57"/>
<wire layer="94" width="0.25" x1="-4.8" y1="-1.57" x2="-5.049" y2="-0.531"/>
<wire layer="94" width="0.25" x1="-5.049" y1="-0.531" x2="-5.049" y2="0.531"/>
<wire layer="94" width="0.25" x1="-5.049" y1="0.531" x2="-4.8" y2="1.57"/>
<wire layer="94" width="0.25" x1="-4.8" y1="1.57" x2="-4.314" y2="2.54"/>
<wire layer="94" width="0.25" x1="-4.314" y1="2.54" x2="-3.612" y2="3.399"/>
<wire layer="94" width="0.25" x1="-3.612" y1="3.399" x2="-2.724" y2="4.11"/>
<wire layer="94" width="0.25" x1="-2.724" y1="4.11" x2="-1.689" y2="4.641"/>
<wire layer="94" width="0.25" x1="-1.689" y1="4.641" x2="-0.553" y2="4.969"/>
<wire layer="94" width="0.25" x1="-0.553" y1="4.969" x2="0.635" y2="5.08"/>
<pin name="1" visible="pad" length="short" direction="nc" x="-7.62" y="0"/>
<pin name="2" visible="pad" length="short" direction="nc" rot="R180" x="8.89" y="0"/>
</symbol>
<symbol name="GND_ANALOG">
<wire layer="94" width="0.25" x1="1.905" y1="1.27" x2="-1.905" y2="1.27"/>
<wire layer="94" width="0.25" x1="-1.905" y1="1.27" x2="0" y2="-1.27"/>
<wire layer="94" width="0.25" x1="0" y1="-1.27" x2="1.905" y2="1.27"/>
<pin name="GNDA" visible="pad" length="short" direction="sup" rot="R270" x="0" y="3.81"/>
</symbol>
<symbol name="L7805CV">
<wire layer="94" width="0.25" x1="-8.89" y1="5.08" x2="8.89" y2="5.08"/>
<wire layer="94" width="0.25" x1="8.89" y1="5.08" x2="8.89" y2="-5.08"/>
<wire layer="94" width="0.25" x1="8.89" y1="-5.08" x2="-8.89" y2="-5.08"/>
<wire layer="94" width="0.25" x1="-8.89" y1="-5.08" x2="-8.89" y2="5.08"/>
<pin name="OUT" visible="both" length="short" direction="pwr" rot="R180" x="11.43" y="0"/>
<pin name="IN" visible="both" length="short" direction="pwr" x="-11.43" y="0"/>
<pin name="GND" visible="pad" length="short" direction="pwr" rot="R90" x="0" y="-7.62"/>
</symbol>
<symbol name="644456-3">
<wire layer="94" width="0.25" x1="-0.635" y1="2.54" x2="0.635" y2="3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="2.54" x2="0.635" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="2.54" x2="5.08" y2="2.54"/>
<wire layer="94" width="0.25" x1="-0.635" y1="0" x2="0.635" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="0" x2="0.635" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="0" x2="5.08" y2="0"/>
<wire layer="94" width="0.25" x1="-5.08" y1="3.81" x2="5.08" y2="3.81"/>
<wire layer="94" width="0.25" x1="5.08" y1="3.81" x2="5.08" y2="-3.81"/>
<wire layer="94" width="0.25" x1="5.08" y1="-3.81" x2="-5.08" y2="-3.81"/>
<wire layer="94" width="0.25" x1="-5.08" y1="-3.81" x2="-5.08" y2="3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-2.54" x2="0.635" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-2.54" x2="0.635" y2="-3.81"/>
<wire layer="94" width="0.25" x1="-0.635" y1="-2.54" x2="5.08" y2="-2.54"/>
<pin name="P1" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="2.54"/>
<pin name="P2" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="0"/>
<pin name="P3" visible="pad" length="short" direction="pas" rot="R180" x="7.62" y="-2.54"/>
</symbol>
<symbol name="DCJACK2.1MM">
<wire layer="94" width="0.25" x1="-1.814" y1="7.62" x2="13.426" y2="7.62"/>
<wire layer="94" width="0.25" x1="13.426" y1="7.62" x2="13.426" y2="0"/>
<wire layer="94" width="0.25" x1="13.426" y1="0" x2="-1.814" y2="0"/>
<wire layer="94" width="0.25" x1="-1.814" y1="0" x2="-1.814" y2="7.62"/>
<pin name="1" visible="pad" length="short" direction="nc" rot="R90" x="9.617" y="-2.54"/>
<pin name="2" visible="pad" length="short" direction="nc" rot="R90" x="0.726" y="-2.54"/>
<pin name="3" visible="pad" length="short" direction="nc" rot="R270" x="7.077" y="10.16"/>
</symbol>
<symbol name="LM4040">
<wire layer="94" width="0.25" x1="-6.35" y1="3.81" x2="6.35" y2="3.81"/>
<wire layer="94" width="0.25" x1="6.35" y1="3.81" x2="6.35" y2="-3.81"/>
<wire layer="94" width="0.25" x1="6.35" y1="-3.81" x2="-6.35" y2="-3.81"/>
<wire layer="94" width="0.25" x1="-6.35" y1="-3.81" x2="-6.35" y2="3.81"/>
<pin name="+ve" visible="both" length="short" direction="nc" x="-8.89" y="-1.27"/>
<pin name="-ve" visible="both" length="short" direction="nc" x="-8.89" y="1.27"/>
<pin name="NC" visible="both" length="short" direction="nc" rot="R180" x="8.89" y="0"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SPSWITCH" prefix="U">
<gates>
<gate name="PART_1" symbol="SPSWITCH" x="-5.08" y="0"/>
</gates>
<devices>
<device name="" package="SPSWITCH">
<connects>
<connect gate="PART_1" pin="1" pad="1"/>
<connect gate="PART_1" pin="2" pad="2"/>
<connect gate="PART_1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SF-HD65_CONNECTOR" prefix="U">
<gates>
<gate name="PART_1" symbol="SF-HD65_CONNECTOR" x="-2.54" y="2.54"/>
</gates>
<devices>
<device name="" package="24PIN_FLEX_.5MM_PITCH">
<connects>
<connect gate="PART_1" pin="F-" pad="1"/>
<connect gate="PART_1" pin="F+" pad="2"/>
<connect gate="PART_1" pin="T+" pad="3"/>
<connect gate="PART_1" pin="T-" pad="4"/>
<connect gate="PART_1" pin="C/c" pad="5"/>
<connect gate="PART_1" pin="D/d" pad="6"/>
<connect gate="PART_1" pin="CD/DVD_SW" pad="7"/>
<connect gate="PART_1" pin="RF" pad="8"/>
<connect gate="PART_1" pin="A/a" pad="9"/>
<connect gate="PART_1" pin="B/b" pad="10"/>
<connect gate="PART_1" pin="F" pad="11"/>
<connect gate="PART_1" pin="GND-PD" pad="12"/>
<connect gate="PART_1" pin="Vc(Vref)" pad="13"/>
<connect gate="PART_1" pin="Vcc" pad="14"/>
<connect gate="PART_1" pin="E" pad="15"/>
<connect gate="PART_1" pin="(N.C.)@1" pad="16"/>
<connect gate="PART_1" pin="VR-CD" pad="17"/>
<connect gate="PART_1" pin="VR-DVD" pad="18"/>
<connect gate="PART_1" pin="CD-LD" pad="19"/>
<connect gate="PART_1" pin="MD" pad="20"/>
<connect gate="PART_1" pin="HFM" pad="21"/>
<connect gate="PART_1" pin="(N.C.)@2" pad="22"/>
<connect gate="PART_1" pin="DVD-LD" pad="23"/>
<connect gate="PART_1" pin="GND-LD" pad="24"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="L7809CV" prefix="U">
<gates>
<gate name="PART_1" symbol="L7809CV" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO-220V">
<connects>
<connect gate="PART_1" pin="OUT" pad="2"/>
<connect gate="PART_1" pin="IN" pad="1"/>
<connect gate="PART_1" pin="GND" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="ST Microelectronics"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com\st_micro\CD00000444.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TVS3V5" prefix="J">
<gates>
<gate name="PART_1" symbol="TVS3V5" x="0" y="0"/>
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
<deviceset name="TVS3V5_4" prefix="U">
<gates>
<gate name="PART_1" symbol="TVS3V5_4_0" x="1.27" y="0"/>
</gates>
<devices>
<device name="" package="SMB">
<connects>
<connect gate="PART_1" pin="1" pad="1"/>
<connect gate="PART_1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
<deviceset name="RES_0805" prefix="R">
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
<attribute name="VALUE" value="1k"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1-644456-0" prefix="HeaderforArduino">
<gates>
<gate name="PART_1" symbol="1-644456-0" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDR-1X10T/2.54/25X2">
<connects>
<connect gate="PART_1" pin="D10" pad="1"/>
<connect gate="PART_1" pin="D9" pad="2"/>
<connect gate="PART_1" pin="D8" pad="3"/>
<connect gate="PART_1" pin="D7" pad="4"/>
<connect gate="PART_1" pin="D6" pad="5"/>
<connect gate="PART_1" pin="D5" pad="6"/>
<connect gate="PART_1" pin="D4_GND" pad="7"/>
<connect gate="PART_1" pin="D3_Ldac" pad="8"/>
<connect gate="PART_1" pin="D2_SDA" pad="9"/>
<connect gate="PART_1" pin="D1_SCL" pad="10"/>
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
<deviceset name="1-644456-0_8" prefix="J">
<gates>
<gate name="PART_1" symbol="1-644456-0_8_0" x="0" y="0"/>
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
<deviceset name="LM317T" prefix="U">
<gates>
<gate name="PART_1" symbol="LM317T" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO-220">
<connects>
<connect gate="PART_1" pin="ADJ" pad="1"/>
<connect gate="PART_1" pin="Vin" pad="3"/>
<connect gate="PART_1" pin="Vout" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Linear"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com\linear\LT117A_317A_LM117_317.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP_0805" prefix="C">
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
<attribute name="VALUE" value="1u"/>
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
<deviceset name="FERRITEBEAD" prefix="U">
<gates>
<gate name="PART_1" symbol="FERRITEBEAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RES_1210">
<connects>
<connect gate="PART_1" pin="1" pad="1"/>
<connect gate="PART_1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="2A,45ohm"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10UF_CAP" prefix="U">
<gates>
<gate name="PART_1" symbol="10UF_CAP" x="1.27" y="0"/>
</gates>
<devices>
<device name="" package="CAPR-2.5/6.3H11">
<connects>
<connect gate="PART_1" pin="1" pad="1"/>
<connect gate="PART_1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="220UF_CAP" prefix="C">
<gates>
<gate name="PART_1" symbol="220UF_CAP" x="-0.635" y="0"/>
</gates>
<devices>
<device name="" package="CAPPR-5/10.5H14">
<connects>
<connect gate="PART_1" pin="1" pad="1"/>
<connect gate="PART_1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND_ANALOG" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="GND_ANALOG" x="0" y="0"/>
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
<deviceset name="L7805CV" prefix="U">
<gates>
<gate name="PART_1" symbol="L7805CV" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO-220V">
<connects>
<connect gate="PART_1" pin="OUT" pad="2"/>
<connect gate="PART_1" pin="IN" pad="1"/>
<connect gate="PART_1" pin="GND" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="ST Microelectronics"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com\st_micro\CD00000444.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="644456-3" prefix="J">
<gates>
<gate name="PART_1" symbol="644456-3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDR-1X3T/2.54/7X2">
<connects>
<connect gate="PART_1" pin="P1" pad="1"/>
<connect gate="PART_1" pin="P2" pad="2"/>
<connect gate="PART_1" pin="P3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="TE Connectivity"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com/con_headers/ENG_CD_644456_D2.pdf"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DCJACK2.1MM" prefix="U">
<gates>
<gate name="PART_1" symbol="DCJACK2.1MM" x="-5.806" y="-3.81"/>
</gates>
<devices>
<device name="" package="DCJACK2.1MM">
<connects>
<connect gate="PART_1" pin="1" pad="1"/>
<connect gate="PART_1" pin="2" pad="2"/>
<connect gate="PART_1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LM4040" prefix="U">
<gates>
<gate name="PART_1" symbol="LM4040" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23">
<connects>
<connect gate="PART_1" pin="+ve" pad="1"/>
<connect gate="PART_1" pin="-ve" pad="2"/>
<connect gate="PART_1" pin="NC" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="2.048V ref"/>
</technology>
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
<part name="J1" library="common" deviceset="TVS3V5" device=""/>
<part name="C1" library="common" deviceset="CAP_0805" device="" value="1u"/>
<part name="C2" library="common" deviceset="CAP_0805" device="" value="0u1"/>
<part name="C3" library="common" deviceset="CAP_0805" device="" value="1u"/>
<part name="C4" library="common" deviceset="CAP_0805" device="" value="1u"/>
<part name="C8" library="common" deviceset="CAP_0805" device="" value="0u1"/>
<part name="C17" library="common" deviceset="CAP_0805" device="" value="1u"/>
<part name="J3" library="common" deviceset="90131-0121" device=""/>
<part name="NetPort2" library="common" deviceset="GND_ANALOG" device=""/>
<part name="U15" library="common" deviceset="SF-HD65_CONNECTOR" device=""/>
<part name="NetPort10" library="common" deviceset="GND_ANALOG" device=""/>
<part name="NetPort12" library="common" deviceset="GND_ANALOG" device=""/>
<part name="HeaderforArduino" library="common" deviceset="1-644456-0" device=""/>
<part name="NetPort49" library="common" deviceset="GND_ANALOG" device=""/>
<part name="R1" library="common" deviceset="RES_0805" device="" value="1k"/>
<part name="R7" library="common" deviceset="RES_0805" device="" value="20R"/>
<part name="R8" library="common" deviceset="RES_0805" device="" value="500k"/>
<part name="U2" library="common" deviceset="DCJACK2.1MM" device=""/>
<part name="U3" library="common" deviceset="FERRITEBEAD" device="" value="2A,45ohm"/>
<part name="U4" library="common" deviceset="10UF_CAP" device=""/>
<part name="C5" library="common" deviceset="10UF_CAP" device=""/>
<part name="U6" library="common" deviceset="L7809CV" device=""/>
<part name="U7" library="common" deviceset="L7805CV" device=""/>
<part name="U8" library="common" deviceset="10UF_CAP" device=""/>
<part name="U9" library="common" deviceset="LM4040" device="" value="2.048V ref"/>
<part name="C16" library="common" deviceset="220UF_CAP" device=""/>
<part name="U21" library="common" deviceset="TVS3V5_4" device=""/>
<part name="C23" library="common" deviceset="220UF_CAP" device=""/>
<part name="U32" library="common" deviceset="SPSWITCH" device=""/>
<part name="U33" library="common" deviceset="LM317T" device=""/>
<part name="U34" library="common" deviceset="FERRITEBEAD" device="" value="2A,45ohm"/>
<part name="J5" library="common" deviceset="1-644456-0_8" device=""/>
<part name="NetPort1" library="common" deviceset="GND_ANALOG" device=""/>
<part name="J2" library="common" deviceset="644456-3" device=""/>
<part name="NetPort3" library="common" deviceset="+5V" device=""/>
<part name="NetPort4" library="common" deviceset="+5V" device=""/>
<part name="NetPort5" library="common" deviceset="GND_ANALOG" device=""/>
<part name="J4" library="common" deviceset="644456-3" device=""/>
<part name="NetPort6" library="common" deviceset="+5V" device=""/>
<part name="NetPort11" library="common" deviceset="GND_ANALOG" device=""/>
<part name="NetPort7" library="common" deviceset="GND_ANALOG" device=""/>
<part name="NetPort8" library="common" deviceset="+5V" device=""/>
<part name="R2" library="common" deviceset="RES_0805" device="" value="4k7"/>
<part name="R3" library="common" deviceset="RES_0805" device="" value="4k7"/>
<part name="J6" library="common" deviceset="90131-0121" device=""/>
<part name="J7" library="common" deviceset="90131-0121" device=""/>
</parts>
<modules/>
<sheets>
<sheet>
<plain>
<text x="-149.86" y="67.31" size="2.467" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">arduino</text>
<text x="-275.59" y="-124.46" size="2.467" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">DC In</text>
<text x="-275.59" y="-152.4" size="2.467" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">On switch</text>
<text x="-92.223" y="-80.01" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J1</text>
<text x="-217.811" y="-202.895" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C1</text>
<text x="-197.491" y="-229.892" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C2</text>
<text x="-238.131" y="-170.202" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C3</text>
<text x="-238.131" y="-152.459" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C4</text>
<text x="-118.751" y="-166.392" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C8</text>
<text x="-191.141" y="-184.59" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C17</text>
<text x="-147.32" y="-167.48" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">J3</text>
<text x="-215.265" y="-179.072" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND_ANALOG</text>
<text x="-24.534" y="-81.28" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">U15</text>
<text x="-258.445" y="-208.282" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND_ANALOG</text>
<text x="-133.58" y="-185.422" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND_ANALOG</text>
<text x="-115.211" y="43.18" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">HeaderforArduino</text>
<text x="-191.135" y="-204.472" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND_ANALOG</text>
<text x="-213.019" y="-218.21" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R1</text>
<text x="-157.466" y="-153.44" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R7</text>
<text x="-90.4" y="-167.625" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">R8</text>
<text x="-301.533" y="-141.362" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="top-left" distance="92">EDGE</text>
<text x="-301.533" y="-139.686" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">U2</text>
<text x="-259.08" y="-177.786" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">U3</text>
<text x="-226.06" y="-175.26" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="top-left" distance="92">+</text>
<text x="-226.06" y="-171.472" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">U4</text>
<text x="-223.52" y="-146.05" size="1.48" layer="97" font="vector" ratio="10" rot="R270" align="top-left" distance="92">+</text>
<text x="-231.14" y="-152.422" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C5</text>
<text x="-206.643" y="-156.403" size="1.233" layer="97" font="vector" ratio="10" rot="R270" align="top-left" distance="92">GND</text>
<text x="-199.39" y="-159.969" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="top-left" distance="76">U6</text>
<text x="-206.643" y="-188.153" size="1.233" layer="97" font="vector" ratio="10" rot="R270" align="top-left" distance="92">GND</text>
<text x="-199.39" y="-191.756" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="top-left" distance="76">U7</text>
<text x="-228.6" y="-207.01" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="top-left" distance="92">+</text>
<text x="-228.6" y="-203.185" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">U8</text>
<text x="-215.85" y="-224.79" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">U9</text>
<text x="-214.63" y="-145.415" size="1.48" layer="97" font="vector" ratio="10" rot="R270" align="top-left" distance="92">+</text>
<text x="-220.98" y="-151.533" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C16</text>
<text x="-124.46" y="-163.83" size="1.48" layer="97" font="vector" ratio="10" rot="R270" align="top-left" distance="92">+</text>
<text x="-129.54" y="-169.314" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">U21</text>
<text x="-100.33" y="-160.655" size="1.48" layer="97" font="vector" ratio="10" rot="R270" align="top-left" distance="92">+</text>
<text x="-106.68" y="-167.138" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">C23</text>
<text x="-276.86" y="-150.592" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">U32</text>
<text x="-175.992" y="-163.83" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">U33</text>
<text x="-193.04" y="-156.978" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">U34</text>
<text x="-36.67" y="-39.37" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J5</text>
<text x="-155.575" y="-60.962" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND_ANALOG</text>
<text x="-166.21" y="-33.02" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J2</text>
<text x="-155.89" y="-18.82" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
<text x="-176.21" y="-204.24" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
<text x="-85.725" y="-40.642" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND_ANALOG</text>
<text x="-96.397" y="-12.7" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J4</text>
<text x="-86.04" y="1.5" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
<text x="-45.95" y="-154.942" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND_ANALOG</text>
<text x="-67.54" y="-129.542" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND_ANALOG</text>
<text x="-45.4" y="-119.15" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
<text x="-49.76" y="-17.766" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">R2</text>
<text x="-58.65" y="-17.766" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">R3</text>
<text x="-70.923" y="-29.21" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J6</text>
<text x="-35.4" y="-29.21" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">J7</text>
</plain>
<moduleinsts/>
<instances>
<instance part="J1" gate="PART_1" x="-91.44" y="-92.71" smashed="yes"/>
<instance part="C1" gate="PART_1" x="-215.9" y="-201.93" rot="R90" smashed="yes"/>
<instance part="C2" gate="PART_1" x="-195.58" y="-228.6" rot="R270" smashed="yes"/>
<instance part="C3" gate="PART_1" x="-236.22" y="-168.91" rot="R90" smashed="yes"/>
<instance part="C4" gate="PART_1" x="-236.22" y="-151.13" rot="R270" smashed="yes"/>
<instance part="C8" gate="PART_1" x="-116.84" y="-165.1" rot="R270" smashed="yes"/>
<instance part="C17" gate="PART_1" x="-189.23" y="-182.88" rot="R270" smashed="yes"/>
<instance part="J3" gate="PART_1" x="-144.78" y="-166.37" rot="R90" smashed="yes"/>
<instance part="NetPort2" gate="PART_1" x="-213.36" y="-171.45" smashed="yes"/>
<instance part="U15" gate="PART_1" x="-22.86" y="-110.49" smashed="yes"/>
<instance part="NetPort10" gate="PART_1" x="-256.54" y="-200.66" smashed="yes"/>
<instance part="NetPort12" gate="PART_1" x="-132.08" y="-177.8" rot="R270" smashed="yes"/>
<instance part="HeaderforArduino" gate="PART_1" x="-105.41" y="30.48" rot="R180" smashed="yes"/>
<instance part="NetPort49" gate="PART_1" x="-189.23" y="-196.85" smashed="yes"/>
<instance part="R1" gate="PART_1" x="-212.09" y="-219.71" smashed="yes"/>
<instance part="R7" gate="PART_1" x="-156.21" y="-154.94" smashed="yes"/>
<instance part="R8" gate="PART_1" x="-88.9" y="-166.37" rot="R90" smashed="yes"/>
<instance part="U2" gate="PART_1" x="-290.286" y="-138.43" smashed="yes"/>
<instance part="U3" gate="PART_1" x="-256.54" y="-176.53" rot="R90" smashed="yes"/>
<instance part="U4" gate="PART_1" x="-222.25" y="-168.91" rot="R90" smashed="yes"/>
<instance part="C5" gate="PART_1" x="-227.33" y="-152.4" rot="R270" smashed="yes"/>
<instance part="U6" gate="PART_1" x="-204.47" y="-158.75" rot="R270" smashed="yes"/>
<instance part="U7" gate="PART_1" x="-204.47" y="-190.5" rot="R270" smashed="yes"/>
<instance part="U8" gate="PART_1" x="-224.79" y="-200.66" rot="R90" smashed="yes"/>
<instance part="U9" gate="PART_1" x="-214.63" y="-228.6" rot="R180" smashed="yes"/>
<instance part="C16" gate="PART_1" x="-215.9" y="-149.86" rot="R270" smashed="yes"/>
<instance part="U21" gate="PART_1" x="-127" y="-168.91" rot="R270" smashed="yes"/>
<instance part="C23" gate="PART_1" x="-101.6" y="-165.1" rot="R270" smashed="yes"/>
<instance part="U32" gate="PART_1" x="-271.78" y="-148.59" smashed="yes"/>
<instance part="U33" gate="PART_1" x="-173.99" y="-168.91" smashed="yes"/>
<instance part="U34" gate="PART_1" x="-190.5" y="-154.94" rot="R270" smashed="yes"/>
<instance part="J5" gate="PART_1" x="-35.56" y="-52.07" rot="R180" smashed="yes"/>
<instance part="NetPort1" gate="PART_1" x="-153.67" y="-53.34" smashed="yes"/>
<instance part="J2" gate="PART_1" x="-165.1" y="-36.83" smashed="yes"/>
<instance part="NetPort3" gate="PART_1" x="-153.67" y="-20.32" smashed="yes"/>
<instance part="NetPort4" gate="PART_1" x="-173.99" y="-205.74" smashed="yes"/>
<instance part="NetPort5" gate="PART_1" x="-83.82" y="-33.02" smashed="yes"/>
<instance part="J4" gate="PART_1" x="-95.25" y="-16.51" smashed="yes"/>
<instance part="NetPort6" gate="PART_1" x="-83.82" y="0" smashed="yes"/>
<instance part="NetPort11" gate="PART_1" x="-44.45" y="-147.32" rot="R270" smashed="yes"/>
<instance part="NetPort7" gate="PART_1" x="-66.04" y="-121.92" rot="R270" smashed="yes"/>
<instance part="NetPort8" gate="PART_1" x="-43.18" y="-120.65" smashed="yes"/>
<instance part="R2" gate="PART_1" x="-48.26" y="-16.51" rot="R90" smashed="yes"/>
<instance part="R3" gate="PART_1" x="-57.15" y="-16.51" rot="R90" smashed="yes"/>
<instance part="J6" gate="PART_1" x="-69.85" y="-31.75" smashed="yes"/>
<instance part="J7" gate="PART_1" x="-34.29" y="-31.75" rot="R180" smashed="yes"/>
</instances>
<busses/>
<nets>
<net name="GND" class="0">
<segment>
<wire layer="91" width="0.1" x1="-256.54" y1="-184.15" x2="-256.54" y2="-190.5"/>
<wire layer="91" width="0.1" x1="-215.9" y1="-190.5" x2="-212.09" y2="-190.5"/>
<wire layer="91" width="0.1" x1="-224.79" y1="-190.5" x2="-215.9" y2="-190.5"/>
<wire layer="91" width="0.1" x1="-232.41" y1="-190.5" x2="-224.79" y2="-190.5"/>
<wire layer="91" width="0.1" x1="-256.54" y1="-190.5" x2="-248.92" y2="-190.5"/>
<wire layer="91" width="0.1" x1="-248.92" y1="-190.5" x2="-256.54" y2="-190.5"/>
<wire layer="91" width="0.1" x1="-256.54" y1="-190.5" x2="-232.41" y2="-190.5"/>
<pinref part="U3" gate="PART_1" pin="1"/>
<pinref part="U7" gate="PART_1" pin="GND"/>
<wire layer="91" width="0.1" x1="-224.79" y1="-195.58" x2="-224.79" y2="-190.5"/>
<pinref part="U8" gate="PART_1" pin="2"/>
<junction x="-224.79" y="-190.5"/>
<wire layer="91" width="0.1" x1="-205.74" y1="-229.87" x2="-201.93" y2="-229.87"/>
<wire layer="91" width="0.1" x1="-201.93" y1="-229.87" x2="-201.93" y2="-237.49"/>
<wire layer="91" width="0.1" x1="-201.93" y1="-237.49" x2="-232.41" y2="-237.49"/>
<wire layer="91" width="0.1" x1="-232.41" y1="-237.49" x2="-232.41" y2="-190.5"/>
<pinref part="U9" gate="PART_1" pin="-ve"/>
<junction x="-232.41" y="-190.5"/>
<wire layer="91" width="0.1" x1="-195.58" y1="-232.41" x2="-195.58" y2="-237.49"/>
<wire layer="91" width="0.1" x1="-195.58" y1="-237.49" x2="-201.93" y2="-237.49"/>
<pinref part="C2" gate="PART_1" pin="2"/>
<junction x="-201.93" y="-237.49"/>
<wire layer="91" width="0.1" x1="-215.9" y1="-198.12" x2="-215.9" y2="-190.5"/>
<pinref part="C1" gate="PART_1" pin="2"/>
<junction x="-215.9" y="-190.5"/>
<wire layer="91" width="0.1" x1="-256.54" y1="-190.5" x2="-256.54" y2="-196.85"/>
<pinref part="NetPort10" gate="PART_1" pin="GNDA"/>
<junction x="-256.54" y="-190.5"/>
<wire layer="91" width="0.1" x1="-113.03" y1="34.29" x2="-248.92" y2="34.29"/>
<wire layer="91" width="0.1" x1="-248.92" y1="-81.28" x2="-248.92" y2="-190.5"/>
<wire layer="91" width="0.1" x1="-248.92" y1="34.29" x2="-248.92" y2="-81.28"/>
<pinref part="HeaderforArduino" gate="PART_1" pin="D4_GND"/>
<junction x="-248.92" y="-190.5"/>
<wire layer="91" width="0.1" x1="-43.18" y1="-50.8" x2="-109.22" y2="-50.8"/>
<wire layer="91" width="0.1" x1="-109.22" y1="-50.8" x2="-109.22" y2="-81.28"/>
<wire layer="91" width="0.1" x1="-109.22" y1="-81.28" x2="-248.92" y2="-81.28"/>
<pinref part="J5" gate="PART_1" pin="GND"/>
<junction x="-248.92" y="-81.28"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-101.6" y1="-173.99" x2="-101.6" y2="-177.8"/>
<wire layer="91" width="0.1" x1="-101.6" y1="-177.8" x2="-116.84" y2="-177.8"/>
<wire layer="91" width="0.1" x1="-116.84" y1="-177.8" x2="-116.84" y2="-168.91"/>
<pinref part="C23" gate="PART_1" pin="2"/>
<pinref part="C8" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-127" y1="-177.8" x2="-128.27" y2="-177.8"/>
<wire layer="91" width="0.1" x1="-116.84" y1="-177.8" x2="-127" y2="-177.8"/>
<pinref part="NetPort12" gate="PART_1" pin="GNDA"/>
<junction x="-116.84" y="-177.8"/>
<wire layer="91" width="0.1" x1="-127" y1="-172.72" x2="-127" y2="-177.8"/>
<pinref part="U21" gate="PART_1" pin="2"/>
<junction x="-127" y="-177.8"/>
<wire layer="91" width="0.1" x1="-88.9" y1="-172.72" x2="-88.9" y2="-177.8"/>
<wire layer="91" width="0.1" x1="-88.9" y1="-177.8" x2="-101.6" y2="-177.8"/>
<pinref part="R8" gate="PART_1" pin="1"/>
<junction x="-101.6" y="-177.8"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-189.23" y1="-186.69" x2="-189.23" y2="-193.04"/>
<pinref part="C17" gate="PART_1" pin="2"/>
<pinref part="NetPort49" gate="PART_1" pin="GNDA"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-222.25" y1="-163.83" x2="-222.25" y2="-160.02"/>
<wire layer="91" width="0.1" x1="-222.25" y1="-160.02" x2="-218.44" y2="-160.02"/>
<wire layer="91" width="0.1" x1="-218.44" y1="-160.02" x2="-218.44" y2="-163.83"/>
<wire layer="91" width="0.1" x1="-218.44" y1="-163.83" x2="-213.36" y2="-163.83"/>
<wire layer="91" width="0.1" x1="-213.36" y1="-163.83" x2="-213.36" y2="-167.64"/>
<pinref part="U4" gate="PART_1" pin="2"/>
<pinref part="NetPort2" gate="PART_1" pin="GNDA"/>
<wire layer="91" width="0.1" x1="-213.36" y1="-158.75" x2="-212.09" y2="-158.75"/>
<wire layer="91" width="0.1" x1="-213.36" y1="-163.83" x2="-213.36" y2="-158.75"/>
<pinref part="U6" gate="PART_1" pin="GND"/>
<junction x="-213.36" y="-163.83"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-157.48" y1="-39.37" x2="-153.67" y2="-39.37"/>
<wire layer="91" width="0.1" x1="-153.67" y1="-39.37" x2="-153.67" y2="-49.53"/>
<pinref part="J2" gate="PART_1" pin="P3"/>
<pinref part="NetPort1" gate="PART_1" pin="GNDA"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-87.63" y1="-19.05" x2="-83.82" y2="-19.05"/>
<wire layer="91" width="0.1" x1="-83.82" y1="-19.05" x2="-83.82" y2="-29.21"/>
<pinref part="J4" gate="PART_1" pin="P3"/>
<pinref part="NetPort5" gate="PART_1" pin="GNDA"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-40.64" y1="-147.32" x2="-27.94" y2="-147.32"/>
<wire layer="91" width="0.1" x1="-27.94" y1="-147.32" x2="-27.94" y2="-142.24"/>
<wire layer="91" width="0.1" x1="-27.94" y1="-142.24" x2="-22.86" y2="-142.24"/>
<pinref part="NetPort11" gate="PART_1" pin="GNDA"/>
<pinref part="U15" gate="PART_1" pin="GND-LD"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-53.34" y1="-111.76" x2="-58.42" y2="-111.76"/>
<wire layer="91" width="0.1" x1="-22.86" y1="-111.76" x2="-53.34" y2="-111.76"/>
<wire layer="91" width="0.1" x1="-58.42" y1="-111.76" x2="-58.42" y2="-121.92"/>
<wire layer="91" width="0.1" x1="-58.42" y1="-121.92" x2="-62.23" y2="-121.92"/>
<pinref part="U15" gate="PART_1" pin="GND-PD"/>
<pinref part="NetPort7" gate="PART_1" pin="GNDA"/>
<wire layer="91" width="0.1" x1="-22.86" y1="-99.06" x2="-53.34" y2="-99.06"/>
<wire layer="91" width="0.1" x1="-53.34" y1="-99.06" x2="-53.34" y2="-111.76"/>
<pinref part="U15" gate="PART_1" pin="CD/DVD_SW"/>
<junction x="-53.34" y="-111.76"/>
</segment>
</net>
<net name="Net_1" class="0">
<segment>
<wire layer="91" width="0.1" x1="-236.22" y1="-147.32" x2="-236.22" y2="-142.24"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-142.24" x2="-227.33" y2="-142.24"/>
<wire layer="91" width="0.1" x1="-227.33" y1="-142.24" x2="-227.33" y2="-144.78"/>
<pinref part="C4" gate="PART_1" pin="1"/>
<pinref part="C5" gate="PART_1" pin="1"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-142.24" x2="-266.7" y2="-142.24"/>
<wire layer="91" width="0.1" x1="-266.7" y1="-142.24" x2="-266.7" y2="-146.05"/>
<pinref part="U32" gate="PART_1" pin="2"/>
<junction x="-236.22" y="-142.24"/>
<wire layer="91" width="0.1" x1="-227.33" y1="-142.24" x2="-215.9" y2="-142.24"/>
<pinref part="C16" gate="PART_1" pin="1"/>
<junction x="-227.33" y="-142.24"/>
<wire layer="91" width="0.1" x1="-215.9" y1="-142.24" x2="-210.82" y2="-142.24"/>
<wire layer="91" width="0.1" x1="-210.82" y1="-142.24" x2="-210.82" y2="-143.51"/>
<wire layer="91" width="0.1" x1="-210.82" y1="-143.51" x2="-190.5" y2="-143.51"/>
<wire layer="91" width="0.1" x1="-190.5" y1="-143.51" x2="-190.5" y2="-147.32"/>
<pinref part="U34" gate="PART_1" pin="1"/>
<junction x="-215.9" y="-142.24"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-142.24" x2="-236.22" y2="-99.06"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-99.06" x2="-129.54" y2="-99.06"/>
<wire layer="91" width="0.1" x1="-129.54" y1="-99.06" x2="-129.54" y2="-45.72"/>
<wire layer="91" width="0.1" x1="-129.54" y1="-45.72" x2="-43.18" y2="-45.72"/>
<pinref part="J5" gate="PART_1" pin="12V"/>
<junction x="-236.22" y="-142.24"/>
</segment>
</net>
<net name="9V" class="0">
<segment>
<wire layer="91" width="0.1" x1="-204.47" y1="-177.8" x2="-204.47" y2="-179.07"/>
<wire layer="91" width="0.1" x1="-204.47" y1="-175.26" x2="-204.47" y2="-177.8"/>
<wire layer="91" width="0.1" x1="-204.47" y1="-170.18" x2="-204.47" y2="-175.26"/>
<pinref part="U6" gate="PART_1" pin="OUT"/>
<pinref part="U7" gate="PART_1" pin="IN"/>
<wire layer="91" width="0.1" x1="-222.25" y1="-177.8" x2="-222.25" y2="-176.53"/>
<wire layer="91" width="0.1" x1="-222.25" y1="-177.8" x2="-204.47" y2="-177.8"/>
<pinref part="U4" gate="PART_1" pin="1"/>
<junction x="-204.47" y="-177.8"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-172.72" x2="-236.22" y2="-175.26"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-175.26" x2="-222.25" y2="-175.26"/>
<wire layer="91" width="0.1" x1="-222.25" y1="-175.26" x2="-222.25" y2="-177.8"/>
<pinref part="C3" gate="PART_1" pin="1"/>
<junction x="-222.25" y="-177.8"/>
<wire layer="91" width="0.1" x1="-204.47" y1="-175.26" x2="-189.23" y2="-175.26"/>
<wire layer="91" width="0.1" x1="-189.23" y1="-175.26" x2="-189.23" y2="-166.37"/>
<wire layer="91" width="0.1" x1="-189.23" y1="-166.37" x2="-182.88" y2="-166.37"/>
<pinref part="U33" gate="PART_1" pin="Vin"/>
<junction x="-204.47" y="-175.26"/>
<wire layer="91" width="0.1" x1="-189.23" y1="-179.07" x2="-189.23" y2="-175.26"/>
<pinref part="C17" gate="PART_1" pin="1"/>
<junction x="-189.23" y="-175.26"/>
</segment>
</net>
<net name="Net_4" class="0">
<segment>
<wire layer="91" width="0.1" x1="-22.86" y1="-104.14" x2="-40.64" y2="-104.14"/>
<wire layer="91" width="0.1" x1="-40.64" y1="-104.14" x2="-40.64" y2="-101.6"/>
<wire layer="91" width="0.1" x1="-40.64" y1="-101.6" x2="-71.12" y2="-101.6"/>
<wire layer="91" width="0.1" x1="-71.12" y1="-101.6" x2="-71.12" y2="-96.52"/>
<wire layer="91" width="0.1" x1="-71.12" y1="-96.52" x2="-83.82" y2="-96.52"/>
<pinref part="U15" gate="PART_1" pin="A/a"/>
<pinref part="J1" gate="PART_1" pin="A"/>
</segment>
</net>
<net name="Net_5" class="0">
<segment>
<wire layer="91" width="0.1" x1="-83.82" y1="-99.06" x2="-63.5" y2="-99.06"/>
<wire layer="91" width="0.1" x1="-63.5" y1="-99.06" x2="-63.5" y2="-106.68"/>
<wire layer="91" width="0.1" x1="-63.5" y1="-106.68" x2="-22.86" y2="-106.68"/>
<pinref part="J1" gate="PART_1" pin="B"/>
<pinref part="U15" gate="PART_1" pin="B/b"/>
</segment>
</net>
<net name="Net_6" class="0">
<segment>
<wire layer="91" width="0.1" x1="-22.86" y1="-93.98" x2="-74.93" y2="-93.98"/>
<wire layer="91" width="0.1" x1="-74.93" y1="-93.98" x2="-74.93" y2="-101.6"/>
<wire layer="91" width="0.1" x1="-74.93" y1="-101.6" x2="-83.82" y2="-101.6"/>
<pinref part="U15" gate="PART_1" pin="C/c"/>
<pinref part="J1" gate="PART_1" pin="C"/>
</segment>
</net>
<net name="Net_7" class="0">
<segment>
<wire layer="91" width="0.1" x1="-22.86" y1="-96.52" x2="-67.31" y2="-96.52"/>
<wire layer="91" width="0.1" x1="-67.31" y1="-96.52" x2="-67.31" y2="-104.14"/>
<wire layer="91" width="0.1" x1="-67.31" y1="-104.14" x2="-83.82" y2="-104.14"/>
<pinref part="U15" gate="PART_1" pin="D/d"/>
<pinref part="J1" gate="PART_1" pin="D"/>
</segment>
</net>
<net name="Net_8" class="0">
<segment>
<wire layer="91" width="0.1" x1="-83.82" y1="-83.82" x2="-22.86" y2="-83.82"/>
<pinref part="J1" gate="PART_1" pin="F-"/>
<pinref part="U15" gate="PART_1" pin="F-"/>
</segment>
</net>
<net name="Net_9" class="0">
<segment>
<wire layer="91" width="0.1" x1="-22.86" y1="-86.36" x2="-68.58" y2="-86.36"/>
<wire layer="91" width="0.1" x1="-68.58" y1="-86.36" x2="-68.58" y2="-81.28"/>
<wire layer="91" width="0.1" x1="-68.58" y1="-81.28" x2="-83.82" y2="-81.28"/>
<pinref part="U15" gate="PART_1" pin="F+"/>
<pinref part="J1" gate="PART_1" pin="F+"/>
</segment>
</net>
<net name="Net_10" class="0">
<segment>
<wire layer="91" width="0.1" x1="-83.82" y1="-86.36" x2="-71.12" y2="-86.36"/>
<wire layer="91" width="0.1" x1="-71.12" y1="-86.36" x2="-71.12" y2="-88.9"/>
<wire layer="91" width="0.1" x1="-71.12" y1="-88.9" x2="-22.86" y2="-88.9"/>
<pinref part="J1" gate="PART_1" pin="T+"/>
<pinref part="U15" gate="PART_1" pin="T+"/>
</segment>
</net>
<net name="Net_11" class="0">
<segment>
<wire layer="91" width="0.1" x1="-22.86" y1="-91.44" x2="-77.47" y2="-91.44"/>
<wire layer="91" width="0.1" x1="-77.47" y1="-91.44" x2="-77.47" y2="-88.9"/>
<wire layer="91" width="0.1" x1="-77.47" y1="-88.9" x2="-83.82" y2="-88.9"/>
<pinref part="U15" gate="PART_1" pin="T-"/>
<pinref part="J1" gate="PART_1" pin="T-"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<wire layer="91" width="0.1" x1="-224.79" y1="-208.28" x2="-224.79" y2="-212.09"/>
<wire layer="91" width="0.1" x1="-224.79" y1="-212.09" x2="-215.9" y2="-212.09"/>
<wire layer="91" width="0.1" x1="-215.9" y1="-212.09" x2="-222.25" y2="-212.09"/>
<wire layer="91" width="0.1" x1="-222.25" y1="-212.09" x2="-204.47" y2="-212.09"/>
<wire layer="91" width="0.1" x1="-204.47" y1="-212.09" x2="-204.47" y2="-201.93"/>
<pinref part="U8" gate="PART_1" pin="1"/>
<pinref part="U7" gate="PART_1" pin="OUT"/>
<wire layer="91" width="0.1" x1="-222.25" y1="-212.09" x2="-222.25" y2="-219.71"/>
<wire layer="91" width="0.1" x1="-222.25" y1="-219.71" x2="-218.44" y2="-219.71"/>
<pinref part="R1" gate="PART_1" pin="1"/>
<junction x="-222.25" y="-212.09"/>
<wire layer="91" width="0.1" x1="-215.9" y1="-205.74" x2="-215.9" y2="-212.09"/>
<pinref part="C1" gate="PART_1" pin="1"/>
<junction x="-215.9" y="-212.09"/>
<wire layer="91" width="0.1" x1="-43.18" y1="-48.26" x2="-53.34" y2="-48.26"/>
<wire layer="91" width="0.1" x1="-53.34" y1="-48.26" x2="-53.34" y2="-72.39"/>
<wire layer="91" width="0.1" x1="-53.34" y1="-72.39" x2="-5.08" y2="-72.39"/>
<wire layer="91" width="0.1" x1="-5.08" y1="-72.39" x2="-5.08" y2="-212.09"/>
<wire layer="91" width="0.1" x1="-173.99" y1="-212.09" x2="-204.47" y2="-212.09"/>
<wire layer="91" width="0.1" x1="-5.08" y1="-212.09" x2="-173.99" y2="-212.09"/>
<pinref part="J5" gate="PART_1" pin="5V"/>
<junction x="-204.47" y="-212.09"/>
<wire layer="91" width="0.1" x1="-173.99" y1="-208.28" x2="-173.99" y2="-212.09"/>
<pinref part="NetPort4" gate="PART_1" pin="+5V"/>
<junction x="-173.99" y="-212.09"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-157.48" y1="-34.29" x2="-153.67" y2="-34.29"/>
<wire layer="91" width="0.1" x1="-153.67" y1="-34.29" x2="-153.67" y2="-22.86"/>
<pinref part="J2" gate="PART_1" pin="P1"/>
<pinref part="NetPort3" gate="PART_1" pin="+5V"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-87.63" y1="-13.97" x2="-83.82" y2="-13.97"/>
<wire layer="91" width="0.1" x1="-83.82" y1="-6.35" x2="-83.82" y2="-2.54"/>
<wire layer="91" width="0.1" x1="-83.82" y1="-13.97" x2="-83.82" y2="-6.35"/>
<pinref part="J4" gate="PART_1" pin="P1"/>
<pinref part="NetPort6" gate="PART_1" pin="+5V"/>
<wire layer="91" width="0.1" x1="-83.82" y1="-6.35" x2="-57.15" y2="-6.35"/>
<junction x="-83.82" y="-6.35"/>
<junction x="-57.15" y="-6.35"/>
<wire layer="91" width="0.1" x1="-48.26" y1="-10.16" x2="-48.26" y2="-6.35"/>
<wire layer="91" width="0.1" x1="-48.26" y1="-6.35" x2="-57.15" y2="-6.35"/>
<wire layer="91" width="0.1" x1="-57.15" y1="-6.35" x2="-57.15" y2="-10.16"/>
<pinref part="R2" gate="PART_1" pin="2"/>
<pinref part="R3" gate="PART_1" pin="2"/>
</segment>
<segment>
<wire layer="91" width="0.1" x1="-22.86" y1="-116.84" x2="-33.02" y2="-116.84"/>
<wire layer="91" width="0.1" x1="-33.02" y1="-116.84" x2="-33.02" y2="-127"/>
<wire layer="91" width="0.1" x1="-33.02" y1="-127" x2="-43.18" y2="-127"/>
<wire layer="91" width="0.1" x1="-43.18" y1="-127" x2="-43.18" y2="-123.19"/>
<pinref part="U15" gate="PART_1" pin="Vcc"/>
<pinref part="NetPort8" gate="PART_1" pin="+5V"/>
</segment>
</net>
<net name="2V1" class="0">
<segment>
<wire layer="91" width="0.1" x1="-205.74" y1="-219.71" x2="-201.93" y2="-219.71"/>
<wire layer="91" width="0.1" x1="-201.93" y1="-219.71" x2="-201.93" y2="-227.33"/>
<wire layer="91" width="0.1" x1="-201.93" y1="-227.33" x2="-205.74" y2="-227.33"/>
<pinref part="R1" gate="PART_1" pin="2"/>
<pinref part="U9" gate="PART_1" pin="+ve"/>
<wire layer="91" width="0.1" x1="-195.58" y1="-224.79" x2="-195.58" y2="-219.71"/>
<wire layer="91" width="0.1" x1="-195.58" y1="-219.71" x2="-201.93" y2="-219.71"/>
<pinref part="C2" gate="PART_1" pin="1"/>
<junction x="-201.93" y="-219.71"/>
<wire layer="91" width="0.1" x1="-195.58" y1="-219.71" x2="-26.67" y2="-219.71"/>
<wire layer="91" width="0.1" x1="-26.67" y1="-219.71" x2="-26.67" y2="-114.3"/>
<wire layer="91" width="0.1" x1="-26.67" y1="-114.3" x2="-22.86" y2="-114.3"/>
<pinref part="U15" gate="PART_1" pin="Vc(Vref)"/>
<junction x="-195.58" y="-219.71"/>
</segment>
</net>
<net name="Net_16" class="0">
<segment>
<wire layer="91" width="0.1" x1="-149.86" y1="-154.94" x2="-146.05" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-146.05" y1="-154.94" x2="-146.05" y2="-158.75"/>
<pinref part="R7" gate="PART_1" pin="2"/>
<pinref part="J3" gate="PART_1" pin="P1"/>
</segment>
</net>
<net name="Net_17" class="0">
<segment>
<wire layer="91" width="0.1" x1="-163.83" y1="-168.91" x2="-165.1" y2="-168.91"/>
<wire layer="91" width="0.1" x1="-163.83" y1="-154.94" x2="-162.56" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-163.83" y1="-168.91" x2="-163.83" y2="-154.94"/>
<pinref part="U33" gate="PART_1" pin="Vout"/>
<pinref part="R7" gate="PART_1" pin="1"/>
</segment>
</net>
<net name="Net_18" class="0">
<segment>
<wire layer="91" width="0.1" x1="-22.86" y1="-139.7" x2="-57.15" y2="-139.7"/>
<wire layer="91" width="0.1" x1="-57.15" y1="-139.7" x2="-57.15" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-139.7" y1="-154.94" x2="-143.51" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-127" y1="-154.94" x2="-139.7" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-116.84" y1="-154.94" x2="-127" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-101.6" y1="-154.94" x2="-116.84" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-88.9" y1="-154.94" x2="-101.6" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-57.15" y1="-154.94" x2="-88.9" y2="-154.94"/>
<wire layer="91" width="0.1" x1="-143.51" y1="-154.94" x2="-143.51" y2="-158.75"/>
<pinref part="U15" gate="PART_1" pin="DVD-LD"/>
<pinref part="J3" gate="PART_1" pin="P2"/>
<wire layer="91" width="0.1" x1="-116.84" y1="-161.29" x2="-116.84" y2="-154.94"/>
<pinref part="C8" gate="PART_1" pin="1"/>
<junction x="-116.84" y="-154.94"/>
<wire layer="91" width="0.1" x1="-101.6" y1="-157.48" x2="-101.6" y2="-154.94"/>
<pinref part="C23" gate="PART_1" pin="1"/>
<junction x="-101.6" y="-154.94"/>
<wire layer="91" width="0.1" x1="-88.9" y1="-160.02" x2="-88.9" y2="-154.94"/>
<pinref part="R8" gate="PART_1" pin="2"/>
<junction x="-88.9" y="-154.94"/>
<wire layer="91" width="0.1" x1="-127" y1="-162.56" x2="-127" y2="-154.94"/>
<pinref part="U21" gate="PART_1" pin="1"/>
<junction x="-127" y="-154.94"/>
<wire layer="91" width="0.1" x1="-182.88" y1="-171.45" x2="-186.69" y2="-171.45"/>
<wire layer="91" width="0.1" x1="-186.69" y1="-171.45" x2="-186.69" y2="-180.34"/>
<wire layer="91" width="0.1" x1="-186.69" y1="-180.34" x2="-139.7" y2="-180.34"/>
<wire layer="91" width="0.1" x1="-139.7" y1="-180.34" x2="-139.7" y2="-154.94"/>
<pinref part="U33" gate="PART_1" pin="ADJ"/>
<junction x="-139.7" y="-154.94"/>
</segment>
</net>
<net name="Net_65" class="0">
<segment>
<wire layer="91" width="0.1" x1="-271.78" y1="-146.05" x2="-271.78" y2="-142.24"/>
<wire layer="91" width="0.1" x1="-271.78" y1="-142.24" x2="-278.13" y2="-142.24"/>
<wire layer="91" width="0.1" x1="-278.13" y1="-142.24" x2="-278.13" y2="-144.78"/>
<wire layer="91" width="0.1" x1="-278.13" y1="-144.78" x2="-280.67" y2="-144.78"/>
<wire layer="91" width="0.1" x1="-280.67" y1="-144.78" x2="-280.67" y2="-140.97"/>
<pinref part="U32" gate="PART_1" pin="1"/>
<pinref part="U2" gate="PART_1" pin="1"/>
</segment>
</net>
<net name="GND_digi" class="0">
<segment>
<wire layer="91" width="0.1" x1="-215.9" y1="-158.75" x2="-215.9" y2="-162.56"/>
<wire layer="91" width="0.1" x1="-215.9" y1="-162.56" x2="-219.71" y2="-162.56"/>
<wire layer="91" width="0.1" x1="-219.71" y1="-162.56" x2="-219.71" y2="-158.75"/>
<wire layer="91" width="0.1" x1="-219.71" y1="-158.75" x2="-224.79" y2="-158.75"/>
<wire layer="91" width="0.1" x1="-224.79" y1="-158.75" x2="-224.79" y2="-161.29"/>
<wire layer="91" width="0.1" x1="-224.79" y1="-161.29" x2="-227.33" y2="-161.29"/>
<wire layer="91" width="0.1" x1="-227.33" y1="-161.29" x2="-227.33" y2="-157.48"/>
<pinref part="C16" gate="PART_1" pin="2"/>
<pinref part="C5" gate="PART_1" pin="2"/>
<wire layer="91" width="0.1" x1="-227.33" y1="-161.29" x2="-236.22" y2="-161.29"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-161.29" x2="-236.22" y2="-165.1"/>
<pinref part="C3" gate="PART_1" pin="2"/>
<junction x="-227.33" y="-161.29"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-161.29" x2="-236.22" y2="-154.94"/>
<pinref part="C4" gate="PART_1" pin="2"/>
<junction x="-236.22" y="-161.29"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-161.29" x2="-236.22" y2="-158.75"/>
<wire layer="91" width="0.1" x1="-236.22" y1="-158.75" x2="-256.54" y2="-158.75"/>
<wire layer="91" width="0.1" x1="-256.54" y1="-158.75" x2="-289.56" y2="-158.75"/>
<wire layer="91" width="0.1" x1="-289.56" y1="-158.75" x2="-289.56" y2="-140.97"/>
<pinref part="U2" gate="PART_1" pin="2"/>
<junction x="-236.22" y="-161.29"/>
<wire layer="91" width="0.1" x1="-256.54" y1="-158.75" x2="-256.54" y2="-168.91"/>
<pinref part="U3" gate="PART_1" pin="2"/>
<junction x="-256.54" y="-158.75"/>
</segment>
</net>
<net name="Net_72" class="0">
<segment>
<wire layer="91" width="0.1" x1="-190.5" y1="-162.56" x2="-190.5" y2="-166.37"/>
<wire layer="91" width="0.1" x1="-190.5" y1="-166.37" x2="-196.85" y2="-166.37"/>
<wire layer="91" width="0.1" x1="-196.85" y1="-166.37" x2="-196.85" y2="-144.78"/>
<wire layer="91" width="0.1" x1="-196.85" y1="-144.78" x2="-204.47" y2="-144.78"/>
<wire layer="91" width="0.1" x1="-204.47" y1="-144.78" x2="-204.47" y2="-147.32"/>
<pinref part="U34" gate="PART_1" pin="2"/>
<pinref part="U6" gate="PART_1" pin="IN"/>
</segment>
</net>
<net name="Net_19" class="0">
<segment>
<wire layer="91" width="0.1" x1="-43.18" y1="-40.64" x2="-48.26" y2="-40.64"/>
<wire layer="91" width="0.1" x1="-48.26" y1="-40.64" x2="-130.81" y2="-40.64"/>
<wire layer="91" width="0.1" x1="-130.81" y1="-40.64" x2="-130.81" y2="41.91"/>
<wire layer="91" width="0.1" x1="-130.81" y1="41.91" x2="-113.03" y2="41.91"/>
<pinref part="J5" gate="PART_1" pin="I2C_SCL"/>
<pinref part="HeaderforArduino" gate="PART_1" pin="D1_SCL"/>
<wire layer="91" width="0.1" x1="-48.26" y1="-40.64" x2="-48.26" y2="-35.56"/>
<wire layer="91" width="0.1" x1="-48.26" y1="-35.56" x2="-50.8" y2="-35.56"/>
<wire layer="91" width="0.1" x1="-50.8" y1="-35.56" x2="-50.8" y2="-33.02"/>
<wire layer="91" width="0.1" x1="-50.8" y1="-33.02" x2="-41.91" y2="-33.02"/>
<pinref part="J7" gate="PART_1" pin="P1"/>
<junction x="-48.26" y="-40.64"/>
</segment>
</net>
<net name="Net_20" class="0">
<segment>
<wire layer="91" width="0.1" x1="-43.18" y1="-43.18" x2="-54.61" y2="-43.18"/>
<wire layer="91" width="0.1" x1="-54.61" y1="-43.18" x2="-133.35" y2="-43.18"/>
<wire layer="91" width="0.1" x1="-133.35" y1="-43.18" x2="-133.35" y2="39.37"/>
<wire layer="91" width="0.1" x1="-133.35" y1="39.37" x2="-113.03" y2="39.37"/>
<pinref part="J5" gate="PART_1" pin="I2C_SDA"/>
<pinref part="HeaderforArduino" gate="PART_1" pin="D2_SDA"/>
<wire layer="91" width="0.1" x1="-62.23" y1="-33.02" x2="-54.61" y2="-33.02"/>
<wire layer="91" width="0.1" x1="-54.61" y1="-33.02" x2="-54.61" y2="-43.18"/>
<pinref part="J6" gate="PART_1" pin="P2"/>
<junction x="-54.61" y="-43.18"/>
</segment>
</net>
<net name="Net_21" class="0">
<segment>
<wire layer="91" width="0.1" x1="-43.18" y1="-55.88" x2="-135.89" y2="-55.88"/>
<wire layer="91" width="0.1" x1="-135.89" y1="-55.88" x2="-135.89" y2="36.83"/>
<wire layer="91" width="0.1" x1="-135.89" y1="36.83" x2="-113.03" y2="36.83"/>
<pinref part="J5" gate="PART_1" pin="Ldac"/>
<pinref part="HeaderforArduino" gate="PART_1" pin="D3_Ldac"/>
</segment>
</net>
<net name="Net_22" class="0">
<segment>
<wire layer="91" width="0.1" x1="-43.18" y1="-60.96" x2="-78.74" y2="-60.96"/>
<wire layer="91" width="0.1" x1="-78.74" y1="-60.96" x2="-78.74" y2="-16.51"/>
<wire layer="91" width="0.1" x1="-78.74" y1="-16.51" x2="-87.63" y2="-16.51"/>
<pinref part="J5" gate="PART_1" pin="VC_P1"/>
<pinref part="J4" gate="PART_1" pin="P2"/>
</segment>
</net>
<net name="Net_23" class="0">
<segment>
<wire layer="91" width="0.1" x1="-157.48" y1="-36.83" x2="-142.24" y2="-36.83"/>
<wire layer="91" width="0.1" x1="-142.24" y1="-36.83" x2="-142.24" y2="-62.23"/>
<wire layer="91" width="0.1" x1="-142.24" y1="-62.23" x2="-46.99" y2="-62.23"/>
<wire layer="91" width="0.1" x1="-46.99" y1="-62.23" x2="-46.99" y2="-63.5"/>
<wire layer="91" width="0.1" x1="-46.99" y1="-63.5" x2="-43.18" y2="-63.5"/>
<pinref part="J2" gate="PART_1" pin="P2"/>
<pinref part="J5" gate="PART_1" pin="VC_P2"/>
</segment>
</net>
<net name="Net_24" class="0">
<segment>
<wire layer="91" width="0.1" x1="-57.15" y1="-22.86" x2="-57.15" y2="-27.94"/>
<wire layer="91" width="0.1" x1="-57.15" y1="-27.94" x2="-54.61" y2="-27.94"/>
<wire layer="91" width="0.1" x1="-54.61" y1="-27.94" x2="-54.61" y2="-30.48"/>
<wire layer="91" width="0.1" x1="-54.61" y1="-30.48" x2="-62.23" y2="-30.48"/>
<pinref part="R3" gate="PART_1" pin="1"/>
<pinref part="J6" gate="PART_1" pin="P1"/>
</segment>
</net>
<net name="Net_25" class="0">
<segment>
<wire layer="91" width="0.1" x1="-41.91" y1="-30.48" x2="-50.8" y2="-30.48"/>
<wire layer="91" width="0.1" x1="-50.8" y1="-30.48" x2="-50.8" y2="-26.67"/>
<wire layer="91" width="0.1" x1="-50.8" y1="-26.67" x2="-48.26" y2="-26.67"/>
<wire layer="91" width="0.1" x1="-48.26" y1="-26.67" x2="-48.26" y2="-22.86"/>
<pinref part="J7" gate="PART_1" pin="P2"/>
<pinref part="R2" gate="PART_1" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
