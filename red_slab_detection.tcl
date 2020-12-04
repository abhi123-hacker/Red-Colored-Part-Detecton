#############################################################################
# Generated by PAGE version 5.4
#  in conjunction with Tcl version 8.6
#  Aug 21, 2020 04:54:16 PM IST  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background #000000 
    wm focusmodel $top passive
    wm geometry $top 1370x970+286+37
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Red_Slab_Detect"
    vTcl:DefineAlias "$top" "ColorDetect" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    canvas $top.can45 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 600 -insertbackground black -relief ridge \
        -selectbackground blue -selectforeground white -width 652 
    vTcl:DefineAlias "$top.can45" "Canvas1" vTcl:WidgetProc "ColorDetect" 1
    canvas $top.can46 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 601 -insertbackground black -relief ridge \
        -selectbackground blue -selectforeground white -width 640 
    vTcl:DefineAlias "$top.can46" "Canvas2" vTcl:WidgetProc "ColorDetect" 1
    label $top.lab47 \
        -background #7ad800 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Capture 
    vTcl:DefineAlias "$top.lab47" "CapLevel" vTcl:WidgetProc "ColorDetect" 1
    label $top.lab48 \
        -background #89d800 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Output 
    vTcl:DefineAlias "$top.lab48" "OutLabel" vTcl:WidgetProc "ColorDetect" 1
    button $top.but49 \
        -background #d80000 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Capture 
    vTcl:DefineAlias "$top.but49" "capButton" vTcl:WidgetProc "ColorDetect" 1
    button $top.but50 \
        -background #d80000 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Stop 
    vTcl:DefineAlias "$top.but50" "stopButton" vTcl:WidgetProc "ColorDetect" 1
    button $top.but51 \
        -background #d80000 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Close 
    vTcl:DefineAlias "$top.but51" "closeButton" vTcl:WidgetProc "ColorDetect" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.can45 \
        -in $top -x 0 -relx 0.015 -y 0 -rely 0.057 -width 0 -relwidth 0.479 \
        -height 0 -relheight 0.681 -anchor nw -bordermode ignore 
    place $top.can46 \
        -in $top -x 0 -relx 0.522 -y 0 -rely 0.057 -width 0 -relwidth 0.47 \
        -height 0 -relheight 0.682 -anchor nw -bordermode ignore 
    place $top.lab47 \
        -in $top -x 0 -relx 0.147 -y 0 -rely 0.011 -width 0 -relwidth 0.184 \
        -height 0 -relheight 0.035 -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 0 -relx 0.691 -y 0 -rely 0.011 -width 0 -relwidth 0.176 \
        -height 0 -relheight 0.035 -anchor nw -bordermode ignore 
    place $top.but49 \
        -in $top -x 0 -relx 0.168 -y 0 -rely 0.784 -width 221 -relwidth 0 \
        -height 51 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but50 \
        -in $top -x 0 -relx 0.642 -y 0 -rely 0.784 -width 251 -relwidth 0 \
        -height 51 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but51 \
        -in $top -x 0 -relx 0.401 -y 0 -rely 0.907 -width 271 -relwidth 0 \
        -height 41 -relheight 0 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

