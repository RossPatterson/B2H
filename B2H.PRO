*--------------------------------------------------------------------
* COPYRIGHT (c) Copyright 2001-2002 AT&T
*
* B2H System Profile: Release 4.7 - 20 May 2002
*   AIX:    b2h.profile
*   Linux:  b2h.profile
*   MVS:    B2H.PROFILE
*   OS/2:   B2H.PRO
*   VM/ESA: B2H PROFILE
*   Win95:  B2H.PRO
*   WinNT:  B2H.PRO
*   Unix:   b2h.profile
*
* This file defines the values for the various options that control
* the operation of B2H.  Refer to the B2H User's Guide for a list of
* valid options and their syntax.
*
* Blank records or records with an asterisk in column one are
* considered comments and are ignored.
*
* Refer to the B2H User's Guide for more information
*--------------------------------------------------------------------

*----- HTML release to be generated (HTML=2, HTML=3 or HTML=4)
*       HTML=3
*       HTMLDOCID.2='2'  HTMLDOCID.3='3.2'  HTMLDOCID.4='4'

*----- Default destination system (where the server will run)
*(CURR=AIX)          DESTSYS=AIX
*(CURR=CMS)          DESTSYS=VM
*(CURR=LINUX)        DESTSYS=LINUX
*(CURR=MVS)          DESTSYS=MVS
*(CURR=OS2)          DESTSYS=OS2
*(CURR=WIN95)        DESTSYS=WIN95
*(CURR=WINNT)        DESTSYS=WINNT
*(CURR=UNIX)         DESTSYS=UNIX

*----- Set format of output file(s) based on platform
*                    OUTPUTP83=YES OUTPUTL83=YES
(CURR=AIX DEST=AIX)      OUTPUTP83=NO  OUTPUTL83=NO
(CURR=LINUX DEST=LINUX)  OUTPUTP83=NO  OUTPUTL83=NO
(CURR=UNIX  DEST=UNIX)   OUTPUTP83=NO  OUTPUTL83=NO

*----- Define HTML tags to use for various lists, TOC and the index
*       DIALOGTAG.0='<TT>,</TT>,<B>,</B>,<FONT COLOR="BLUE">,</FONT>'
*       DIALOGTAG.1=''
*       DLTAG.0='<DL>,</DL>,<P><DT>,,<DD>,'
*       DLTAG.1='<DL COMPACT>,</DL>,<DT>,,<DD>,'
*       DLTAG.2='<TABLE CELLPADDING="3">,</TABLE>,<TR VALIGN="TOP"><TD><P>,</TD>,<TD><P>,</TD></TR>'
*       DLTAG.3='<TABLE CELLPADDING="3">,</TABLE>,<TR VALIGN="TOP"><TD>,</TD>,<TD>,</TD></TR>'
*       FNTAG='<SUP>,</SUP>,<DL COMPACT>,</DL>,<P><DT><SUP>,</SUP></DT>,<DD>,</DD>,<HR>,'
*       GLTAG.0='<DL>,</DL>,<P><DT>,,<DD>,<DD>,,<P><DT><FONT SIZE="+2"><STRONG>,</STRONG></FONT><P>'
*       GLTAG.1='<DL COMPACT>,</DL>,<DT>,,<DD>,<DD>,,<P><DT><FONT SIZE="+2"><STRONG>,</STRONG></FONT><P>'
*       GLTAG.2='<TABLE CELLPADDING="3">,</TABLE>,<TR VALIGN="TOP"><TD><P>,</TD>,<TD><P>,<BR>,</TD></TR>,<TR><TD COLSPAN="2"><FONT SIZE="+2"><STRONG><P>,<P></STRONG></FONT></TD></TR>'
*       GLTAG.3='<TABLE CELLPADDING="3">,</TABLE>,<TR VALIGN="TOP"><TD>,</TD>,<TD>,<BR>,</TD></TR>,<TR><TD COLSPAN="2"><FONT SIZE="+2"><STRONG>,</STRONG></FONT></TD></TR>'
*       INDEXTAG='<MENU>,</MENU>,<LI>,</LI>,<STRONG>,</STRONG>'
*       INDEXTOCTAG=',<HR>,,<BR>,,<BR>,,'
*       NOTELTAG.0='<OL>,</OL>,<P><LI>,'
*       NOTELTAG.1='<OL COMPACT>,</OL>,<LI>,'
*       OLTAG.0='<OL>,</OL>,<P><LI>,'
*       OLTAG.1='<OL COMPACT>,</OL>,<LI>,'
*       SLTAG.0='<DL>,</DL>,<DD><P>,'
*       SLTAG.1='<DL COMPACT>,</DL>,<DD>,'
*       TOCTAG='<MENU>,</MENU>,<LI>,,<HR>,'
*       TFIGLISTTAG.0='<OL>,</OL>,<LI>,</LI>'
*       TFIGLISTTAG.1='<P>,<P>,,<BR>'
*       ULTAG.0='<UL>,</UL>,<P><LI>,'
*       ULTAG.1='<UL COMPACT>,</UL>,<LI>,'

*----- Table-of-Content & Sectioning parameters
*       BODYHD0=''
*       BODYHD0X=''
*       BODYHD1=''
*       BODYHD1X=''
*       FBC=NO
*       HEADNUM=NO
*       TOC=*3
*       TOCC=NO
*       TOCINDENT=YES
*       TOCSUPPRESS=0

*----- Index-related parameters
*       INDEX=NO
*       INDEXREFLINK=NO
*       INDEXSORT.SPEC='00-FF'
*       INDEXSORT.NUM='0-9'
*       INDEXSORT.LETTER='A-Z'
*       INDEXTOC=50

*----- Hyperlinking within the file
*       FNLINK=BOTH
*       FTLINK=YES
*       TOCRET=PTOC

*----- Splitting of the output HTML file
*        &#91;  = left bracket  ([)
*        &#93;  = right bracket (])
*        &#124; = vertical bar  (|)
*       AUTOSPLIT=NO
*       SPLITLINK=YES
        SPLITLINK.1=CLEAR   SPLITLINK.2=CLEAR   SPLITLINK.3=CLEAR
        SPLITLINK.4=CLEAR   SPLITLINK.5=CLEAR   SPLITLINK.6=CLEAR
        SPLITLINK.11=CLEAR  SPLITLINK.12=CLEAR  SPLITLINK.13=CLEAR
        SPLITLINK.14=CLEAR  SPLITLINK.15=CLEAR  SPLITLINK.16=CLEAR
*       ----- SplitLinks when NO index being generated -----
*       SPLITLINK.1='<B>&#91;'
*       SPLITLINK.1='<A HREF="&b2hbot">Bottom of Page</A> &#124;'
*       SPLITLINK.1='<A HREF="&b2hnext">Next Page</A>'
*       SPLITLINK.1='&#93;</B><HR><P>'
        SPLITLINK.2='<P><HR><B>&#91;'
        SPLITLINK.2='<A HREF="&b2htop">Top of Page</A> &#124;'
        SPLITLINK.2='<A HREF="&b2hnext">Next Page</A>'
        SPLITLINK.2='&#93;</B>'
*       SPLITLINK.3='<B>&#91;'
*       SPLITLINK.3='<A HREF="&b2hbot">Bottom of Page</A> &#124;'
*       SPLITLINK.3='<A HREF="&b2hprev">Previous Page</A> &#124;'
*       SPLITLINK.3='<A HREF="&b2hnext">Next Page</A> &#124;'
*       SPLITLINK.3='<A HREF="&b2htoc">Table of Contents</A>'
*       SPLITLINK.3='&#93;</B><HR><P>'
        SPLITLINK.4='<P><HR><B>&#91;'
        SPLITLINK.4='<A HREF="&b2htop">Top of Page</A> &#124;'
        SPLITLINK.4='<A HREF="&b2hprev">Previous Page</A> &#124;'
        SPLITLINK.4='<A HREF="&b2hnext">Next Page</A> &#124;'
        SPLITLINK.4='<A HREF="&b2htoc">Table of Contents</A>'
        SPLITLINK.4='&#93;</B>'
*       SPLITLINK.5='<B>&#91;'
*       SPLITLINK.5='<A HREF="&b2hbot">Bottom of Page</A> &#124;'
*       SPLITLINK.5='<A HREF="&b2hprev">Previous Page</A> &#124;'
*       SPLITLINK.5='<A HREF="&b2htoc">Table of Contents</A>'
*       SPLITLINK.5='&#93;</B><HR><P>'
        SPLITLINK.6='<P><HR><B>&#91;'
        SPLITLINK.6='<A HREF="&b2htop">Top of Page</A> &#124;'
        SPLITLINK.6='<A HREF="&b2hprev">Previous Page</A> &#124;'
        SPLITLINK.6='<A HREF="&b2htoc">Table of Contents</A>'
        SPLITLINK.6='&#93;</B>'
*       ----- SplitLinks when an index *IS* being generated -----
*       SPLITLINK.11='<B>&#91;'
*       SPLITLINK.11='<A HREF="&b2hbot">Bottom of Page</A> &#124;'
*       SPLITLINK.11='<A HREF="&b2hnext">Next Page</A> &#124;'
*       SPLITLINK.11='<A HREF="&b2hidx">Index</A>'
*       SPLITLINK.11='&#93;</B><HR><P>'
        SPLITLINK.12='<P><HR><B>&#91;'
        SPLITLINK.12='<A HREF="&b2htop">Top of Page</A> &#124;'
        SPLITLINK.12='<A HREF="&b2hnext">Next Page</A> &#124;'
        SPLITLINK.12='<A HREF="&b2hidx">Index</A>'
        SPLITLINK.12='&#93;</B>'
*       SPLITLINK.13='<B>&#91;'
*       SPLITLINK.13='<A HREF="&b2hbot">Bottom of Page</A> &#124;'
*       SPLITLINK.13='<A HREF="&b2hprev">Previous Page</A> &#124;'
*       SPLITLINK.13='<A HREF="&b2hnext">Next Page</A> &#124;'
*       SPLITLINK.13='<A HREF="&b2htoc">Table of Contents</A> &#124;'
*       SPLITLINK.13='<A HREF="&b2hidx">Index</A>'
*       SPLITLINK.13='&#93;</B><HR><P>'
        SPLITLINK.14='<P><HR><B>&#91;'
        SPLITLINK.14='<A HREF="&b2htop">Top of Page</A> &#124;'
        SPLITLINK.14='<A HREF="&b2hprev">Previous Page</A> &#124;'
        SPLITLINK.14='<A HREF="&b2hnext">Next Page</A> &#124;'
        SPLITLINK.14='<A HREF="&b2htoc">Table of Contents</A> &#124;'
        SPLITLINK.14='<A HREF="&b2hidx">Index</A>'
        SPLITLINK.14='&#93;</B>'
*       SPLITLINK.15='<B>&#91;'
*       SPLITLINK.15='<A HREF="&b2hbot">Bottom of Page</A> &#124;'
*       SPLITLINK.15='<A HREF="&b2hprev">Previous Page</A> &#124;'
*       SPLITLINK.15='<A HREF="&b2htoc">Table of Contents</A> &#124;'
*       SPLITLINK.15='<A HREF="&b2hidx">Index</A>'
*       SPLITLINK.15='&#93;</B><HR><P>'
        SPLITLINK.16='<P><HR><B>&#91;'
        SPLITLINK.16='<A HREF="&b2htop">Top of Page</A> &#124;'
        SPLITLINK.16='<A HREF="&b2hprev">Previous Page</A> &#124;'
        SPLITLINK.16='<A HREF="&b2htoc">Table of Contents</A> &#124;'
        SPLITLINK.16='<A HREF="&b2hidx">Index</A>'
        SPLITLINK.16='&#93;</B>'

*----- Content & Structure of the output HTML file(s)
*       ANNOT=NO
*       BODYTAG='<BODY>'
*       BORDERTAG='BORDER="1"'
*       CENTERTAG=NO
        COMMENTHEAD='&b2hiall converted by &b2hsig (&b2hplat) &b2huser on &date at &time'
*       COMMENT=CLEAR
*       DLFMT=DL
*       FIGCAPLOC=BEFORE
*       FIGLIST=YES
        FOOTER=NO
*(PC)   FOOTER='B2HIBM.FOT'
*(CMS)  FOOTER='B2HIBM FOOTER'
*(MVS)  FOOTER=B2HIBM.FOOTER
*       FTSEP=YES
*       GLFMT=DL
        HEADER=NO
*       HEADREC=CLEAR
*       HRTAG='<HR>'
*       (HRTAG.x='value' format also acceptable)
*       HTAG='<P><I><B>,:&nbsp;</B></I>&nbsp;,:P.,'
*       HTAG.0='<HR><H1>,</H1>'
*       HTAG.1='<HR><H1>,</H1>'
*       HTAG.2='<HR><H2>,</H2>'
*       HTAG.3='<P><H3>,</H3>'
*       HTAG.4='<P><H4>,</H4>'
*       LINES=PRE
*       LINEWIDTH=78
*       LIREF=NUM
*       MASTIMG=''
*       MASTALT=''
*       META=YES
*       SPLITDIGITS='2,DEC'
*       PRETAG=''
*       SYNFONT=NO
*       SYNTAG=''
*       TABLE2='+,+,+,&#124;,-,=, , '
*       TLIST=YES
*       TOPHEAD=1
*       XEDITG=YES

*----- File location parameters
(AIX)   IMBFT=script
(CMS)   IMBFT=SCRIPT
(HPFS)  IMBFT=script
(LINUX) IMBFT=script
(OS2)   IMBFT=scr
(WIN95) IMBFT=scr
(WINNT) IMBFT=scr
(UNIX)  IMBFT=script
(PC)    IMBFTEXT='NO,LC'
*(OS2)  IMBPATH='\advtools\doc;\doc'
*       IMGPATH='../images/'
        OUTPUTFM=A

*----- MVS file allocation defaults
*(MVS)  MVSALLOC.ANSFILE='DSORG(PS) LRECL(1024) RECFM(V) TRACKS SPACE(5,5) RELEASE'
*(MVS)  MVSALLOC.LOG='DSORG(PS) LRECL(1024) RECFM(V) TRACKS SPACE(5,5) RELEASE'
*(MVS)  MVSALLOC.OUTPUTPO='DSORG(PS) LRECL(1024) RECFM(V) TRACKS SPACE(5,5) RELEASE DIR(10)'
*(MVS)  MVSALLOC.OUTPUTPS='DSORG(PS) LRECL(1024) RECFM(V) TRACKS SPACE(5,5) RELEASE'
*(MVS)  MVSALLOC.SYSVARW='DSORG(PS) LRECL(1024) RECFM(V) TRACKS SPACE(5,5) RELEASE'
*(MVS)  MVSALLOC.TEMP='DSORG(PS) LRECL(1024) RECFM(V) TRACKS SPACE(5,5) RELEASE'

*----- Artwork parameters
*       ARTLINKIMG=b2hlink.gif
*       ARTSHOW=VIEW
*       ARTTYPE=gif

*----- Shading values (BGCOLOR=#rrggbb)
*       SHADE.XLIGHT=DADADA
*       SHADE.LIGHT=B0B0B0
*       SHADE.MEDIUM=8C8C8C
*       SHADE.DARK=6E6E6E
*       SHADE.XDARK=585858
*       SHADE.YES=B0B0B0
*       SHADE.SCREEN=B0B0B0

*----- Question and Answers
*       QRESET=NO
*       QUESTION=TEXT

*----- Default text for various tags
*       DEFTEXT.ABBREV='List of Abbreviations'
*       DEFTEXT.ABSTRACT='Abstract'
*       DEFTEXT.APPENDIX='Appendix'
*       DEFTEXT.ARTLABEL=''
*       DEFTEXT.ARTLINK='View figure.'
*       DEFTEXT.BIBLIOG='Bibliography'
*       DEFTEXT.COPYR='&copy; Copyright &b2hcopyr. &b2hcoprext'
*       DEFTEXT.DAYS='Mon Tue Wed Thu Fri Sat Sun'
*       DEFTEXT.DIALSYS='System'
*       DEFTEXT.DIALUSER='User'
*       DEFTEXT.DOCNUM='Document number'
*       DEFTEXT.FIGLIST='Figures'
*       DEFTEXT.FIGURE='Figure'
*       DEFTEXT.FOOTNOTES='Footnotes'
*       DEFTEXT.GLOSSARY='Glossary'
*       DEFTEXT.HTMLCMTL='<!-- '
*       DEFTEXT.HTMLCMTR=' -->'
*       DEFTEXT.HTMLHEAD='<!DOCTYPE HTML PUBLIC "-// ...  &b2hhtmlid//EN">'
*       DEFTEXT.IBMCOPYR='<B>&copy; Copyright International Business Machines Corporation &b2hibmcopyr.. All rights reserved. &b2hcoprext</B> <BR>Note to U.S. Government Users -- Documentation related ...'
*       DEFTEXT.IBMZALI='<HR><B>IBM License Information</B><HR>'
*       DEFTEXT.IBMZALP='<HR><B>IBM Licensed Program Specifications</B><HR>'
*       DEFTEXT.INDEX='Index'
*       DEFTEXT.INDEX0='Special Characters'
*       DEFTEXT.INDEX1='Numerics'
*       DEFTEXT.INDEX2='See also'
*       DEFTEXT.INDEX3='See'
*       DEFTEXT.INDEXENTRYL='('
*       DEFTEXT.INDEXENTRYR=')'
*       DEFTEXT.LEGEND='Legend'
*       DEFTEXT.LERSAUTH='Authorization'
*       DEFTEXT.LERSCOMMENTS='Comments'
*       DEFTEXT.LERSCONTEXT='Context'
*       DEFTEXT.LERSDEFAULTS='Defaults'
*       DEFTEXT.LERSERRCOND='Error Conditions'
*       DEFTEXT.LERSEXAMPLES='Examples'
*       DEFTEXT.LERSFLAGS='Flags'
*       DEFTEXT.LERSFORMAT='Format'
*       DEFTEXT.LERSINTREP='Internal Representation'
*       DEFTEXT.LERSMESSAGES='Messages'
*       DEFTEXT.LERSOPTIONS='Options'
*       DEFTEXT.LERSOTHE=''
*       DEFTEXT.LERSPARMS='Parameters'
*       DEFTEXT.LERSPREREQS='Prerequisites'
*       DEFTEXT.LERSPROCESS='Processing'
*       DEFTEXT.LERSPURPOSE='Purpose'
*       DEFTEXT.LERSRELATED='Related Information'
*       DEFTEXT.LERSRESTRICT='Restrictions'
*       DEFTEXT.LERSRESULTS='Results'
*       DEFTEXT.LERSRETCODES='Return Codes'
*       DEFTEXT.LERSSYSENV='System Environment'
*       DEFTEXT.LERSUSAGE='Usage'
*       DEFTEXT.LERSVERSION='Version'
*       DEFTEXT.MCDEST='Destination'
*       DEFTEXT.MCMODULE='Module'
*       DEFTEXT.MCNUMBYTES='Number of Error Bytes'
*       DEFTEXT.MCORESP='Operator Response'
*       DEFTEXT.MCPRESP='Programmer Response'
*       DEFTEXT.MCPROBD='Problem Determination'
*       DEFTEXT.MCSEVERITY='Severity'
*       DEFTEXT.MCSPRESP='System Programmer Response'
*       DEFTEXT.MCSYSACT='System Action'
*       DEFTEXT.MCURESP='User Response'
*       DEFTEXT.MCXPL='Explanation'
*       DEFTEXT.MONTHS='Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec'
*       DEFTEXT.NOTE='Note'
*       DEFTEXT.NOTEL='Notes'
*       DEFTEXT.NT='Note'
*       DEFTEXT.PREFACE='Preface'
*       DEFTEXT.PTOC='Partial Table-of-Contents'
*       DEFTEXT.PTOCLT='(Go to main Table-of-Contents)'
*       DEFTEXT.QANSREF='the answer to question'
*       DEFTEXT.QQREF='question'
*       DEFTEXT.SAFETY='Safety'
*       DEFTEXT.SCHEDACTHD='Activities'
*       DEFTEXT.SOA='Summary of Amendments'
*       DEFTEXT.SPOT1='Ref #'
*       DEFTEXT.SPOT2=' reference #'
*       DEFTEXT.SYNNT='Note:'
*       DEFTEXT.T2XREF='the appropriate section'
*       DEFTEXT.TABLE='Table'
*       DEFTEXT.TLIST='Tables'
*       DEFTEXT.TOC='Table of Contents'
*       DEFTEXT.VOLNUM='Volume'
*       DEFTEXT.WARRASIS='This program is provided "As Is" as specified in the IBM license.'
*       DEFTEXT.WARRFULL='This program is warranted as specified in the IBM license.:p.Licensed Program Specifications may be ...'
*       DEFTEXT.WARRNODSLO='This program is warranted as specified in the IBM license.:p.Licensed Program Specifications may be ...'
*----- Syntax diagram "drawing" characters & their displayed width
*       DEFTEXT._CROSS='+',1
*       DEFTEXT._DASH='-',1
*       DEFTEXT._END='&gt;&lt;',2
*       DEFTEXT._FRAGMENT_END='&#124;',1
*       DEFTEXT._FRAGMENT_START='&#124;',1
*       DEFTEXT._FRAGREF_END='&#124;',1
*       DEFTEXT._FRAGREF_START='&#124;',1
*       DEFTEXT._LOWERLEFT='+',1
*       DEFTEXT._LOWERRIGHT='+',1
*       DEFTEXT._MIDDLE='&gt;',1
*       DEFTEXT._MIDDLELEFT='&#124;',1
*       DEFTEXT._MIDDLERIGHT='&#124;',1
*       DEFTEXT._REPSEPLEFT='&lt;-',2
*       DEFTEXT._REPSEPRIGHT='--&lt;',3
*       DEFTEXT._REPSEPJOINL='V',1
*       DEFTEXT._REPSEPJOINR='+',1
*       DEFTEXT._START='&gt;&gt;',2
*       DEFTEXT._TEEDOWN='+',1
*       DEFTEXT._TEELEFT='&#124;',1
*       DEFTEXT._TEERIGHT='&#124;',1
*       DEFTEXT._TEEUP='+',1
*       DEFTEXT._UPPERLEFT='+',1
*       DEFTEXT._UPPERRIGHT='+',1

*----- Miscellaneous parameters
*       ALARM=5
*       B2HREQ=YES
*       IMBEDID=NO
*       LOG=NO
*       LTGT=CONVERT
*       PROCACT='NOENDTAG=WARNING NOIMBED=ERROR NOINDEX=WARNING NOPER=WARNING'
*       PROCACT='NOXREF=ERROR UNKOPT=TERM UNKTAG=WARNING'
*       MAXWIDTH=NOSPLIT
*       MSGLEVEL=INFO
*       PSC='CHAR HTML'
*       SOURCE=SCRIPT
(PC)    SHOWLINES=100
(CMS)   SHOWLINES=NO
(MVS)   SHOWLINES=NO
*       SYMCHARS=''
*       TAGCHECK=YES

*----- user profiles and symbol tables
        USERPROF=''
        USERSYM=''
