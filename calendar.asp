<%@ Language="vbscript" %>
<% option explicit %>

<% DIM showMonth 
showMonth = LCASE(Request.QueryString("month"))
%>

<HTML>

<HEAD>

<TITLE>Calendar</TITLE>

<LINK REL="stylesheet" HREF="include/styles.css" TYPE="text/css">

<META HTTP-EQUIV="content-script-type" CONTENT="text/javascript">

<SCRIPT>

calendarItem = new Array()

function showItem(num){

if(document.getElementById){
  obj = document.getElementById("calendarItem")
  obj.innerHTML=calendarItem[num]
}
else if(document.all){
  obj = document.all.calendarItem
  obj.innerHTML = calendarItem[num]
}
else if(document.layers){
  obj = document.layers.calendarItem
  obj.open()
  obj.write(calendarItme[num])
  obj.close()
}

}

</SCRIPT>


</HEAD>

<BODY BGCOLOR="white" onLoad="parent.pageLoad('<%=showMonth%>')" onUnload="parent.pageUnload('<%=showMonth%>')">

<CENTER>


<% SELECT CASE showMonth 

CASE "sep"%>

<!--#include file="include/calendar/sep.inc"-->

<% CASE "oct" %>
<!--#include file="include/calendar/oct.inc"-->

<% CASE "nov" %>
<!--#include file="include/calendar/nov.inc"-->

<% CASE "dec" %>
<!--#include file="include/calendar/dec.inc"-->

<% CASE "jan" %>
<!--#include file="include/calendar/jan.inc"-->

<% CASE "feb" %>
<!--#include file="include/calendar/feb.inc"-->

<% CASE "mar" %>
<!--#include file="include/calendar/mar.inc"-->

<% CASE "apr" %>
<!--#include file="include/calendar/apr.inc"-->

<% CASE "may" %>
<!--#include file="include/calendar/may.inc"-->

<% CASE "jun" %>
<!--#include file="include/calendar/jun.inc"-->


<%CASE Else%>


Please select a month 
<BR>

<A HREF="calendar.asp?month=sep">September</A>
<BR>
<A HREF="calendar.asp?month=oct">October</A>
<BR>
<A HREF="calendar.asp?month=nov">November</A>
<BR>
<A HREF="calendar.asp?month=dec">December</A>
<BR>
<A HREF="calendar.asp?month=jan">January</A>
<BR>
<A HREF="calendar.asp?month=feb">February</A>
<BR>
<A HREF="calendar.asp?month=mar">March</A>
<BR>
<A HREF="calendar.asp?month=apr">April</A>
<BR>
<A HREF="calendar.asp?month=may">May</A>
<BR>
<A HREF="calendar.asp?month=jun">June</A>




<% END SELECT %>
<BR>
<TABLE CELLPADDING=0 CELLSPACING=0 BORDER=0>

<TR>

<TD CLASS="noSchool"></TD>
<TD STYLE="border-width:0px">= No School</TD>

</TR>

</TABLE>

<BR>
<P ID="calendarItem">
</P>

</CENTER>

</BODY>

</HTML>