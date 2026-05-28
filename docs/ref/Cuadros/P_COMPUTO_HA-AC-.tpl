
template template_1343
{
    name = "template_1343";
    type = GRAPHICAL;
    width = 200;
    maxheight = 100;
    columns = (1, 1);
    gap = 1;
    fillpolicy = EVEN;
    filldirection = HORIZONTAL;
    fillstartfrom = TOPLEFT;
    margins = (0, 0, 0, 0);
    gridxspacing = 1;
    gridyspacing = 1;
    version = 4.1;
    created = "03.05.2004 13:23";
    modified = "19.05.2026 16:51";
    notes = "";
    colors = "153;152;160;161;162;163;164;165;154;155;156;157;158;159;130;131;132;133;";

    row _tmp_5
    {
        name = "DRAWING";
        height = 15;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "";
        contenttype = "DRAWING";
        sorttype = COMBINE;

        text _tmp_110
        {
            name = "Text_4";
            x1 = 15.99609375;
            y1 = 0;
            x2 = 15.99609375;
            y2 = 0;
            string = "DESCRIPCIÓN";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 3;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_111
        {
            name = "LineOrArc_11";
            x1 = 60;
            y1 = -0;
            x2 = 60;
            y2 = 8;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_1
        {
            name = "LíneaOArco";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 8;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        text _tmp_18
        {
            name = "Texto_5";
            x1 = 138.416015625;
            y1 = 3;
            x2 = 138.416015625;
            y2 = 3;
            string = "CANTIDAD";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        text _tmp_19
        {
            name = "Texto_6";
            x1 = 76.71484375;
            y1 = 0;
            x2 = 76.71484375;
            y2 = 0;
            string = "CALIDAD";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        lineorarc _tmp_24
        {
            name = "LíneaOArco_4";
            x1 = 134;
            y1 = 0;
            x2 = 134;
            y2 = 8;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_2
        {
            name = "LíneaOArco_1";
            x1 = 159;
            y1 = 8;
            x2 = 0;
            y2 = 8;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        text _tmp_9
        {
            name = "Text";
            x1 = 51.98828125;
            y1 = 10;
            x2 = 51.98828125;
            y2 = 10;
            string = "COMPUTO DE MATERIALES";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 3;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_82
        {
            name = "Texto_7";
            x1 = 141.328795683677;
            y1 = 0;
            x2 = 141.328795683677;
            y2 = 0;
            string = "TOTAL";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        text _tmp_84
        {
            name = "Texto_8";
            x1 = 113.416015625;
            y1 = 2;
            x2 = 113.416015625;
            y2 = 2;
            string = "CANTIDAD";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        lineorarc _tmp_86
        {
            name = "LíneaOArco_3";
            x1 = 0;
            y1 = 0;
            x2 = 0;
            y2 = 15;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_87
        {
            name = "LíneaOArco_6";
            x1 = 0;
            y1 = 15;
            x2 = 159;
            y2 = 15;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_88
        {
            name = "LíneaOArco_7";
            x1 = 159;
            y1 = 15;
            x2 = 159;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };
    };

    row _tmp_85
    {
        name = "PART_4";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"NAME\")== \"FUNDACION\" ) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "PART";
        sorttype = COMBINE;

        lineorarc _tmp_92
        {
            name = "LíneaOArco_10";
            x1 = 0;
            y1 = 0;
            x2 = -0;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_93
        {
            name = "LíneaOArco_11";
            x1 = 0;
            y1 = 0;
            x2 = 159;
            y2 = -0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_94
        {
            name = "LíneaOArco_13";
            x1 = 159;
            y1 = 5;
            x2 = 159;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_98
        {
            name = "LineOrArc";
            x1 = 60;
            y1 = -0;
            x2 = 60;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_99
        {
            name = "LíneaOArco_14";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_100
        {
            name = "LíneaOArco_18";
            x1 = 134;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        text _tmp_102
        {
            name = "Texto_9";
            x1 = 114;
            y1 = 2;
            x2 = 114;
            y2 = 2;
            string = "UNITARIA";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        text _tmp_104
        {
            name = "Texto_10";
            x1 = 148.095703125;
            y1 = 2;
            x2 = 148.095703125;
            y2 = 2;
            string = "Ud.)";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        text _tmp_106
        {
            name = "Texto_11";
            x1 = 139.880310385733;
            y1 = 2.07362931313148;
            x2 = 139.880310385733;
            y2 = 2.07362931313148;
            string = "(";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_108
        {
            name = "CANT_2";
            location = (140.880310385733, 2.07362931313148);
            formula = "GetValue(\"CAST_UNIT.NUMBER\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 4;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_37
    {
        name = "PART";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CAST_UNIT.MATERIAL\")== \"H30\" ) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "PART";
        sorttype = COMBINE;

        rectangle _tmp_57
        {
            name = "Rectángulo";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        lineorarc _tmp_58
        {
            name = "LíneaOArco_5";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_61
        {
            name = "LíneaOArco_8";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_62
        {
            name = "LíneaOArco_9";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_69
        {
            name = "MATERIAL";
            location = (53.59375, 2);
            formula = "GetValue(\"CAST_UNIT.MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 14;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_68
        {
            name = "VOLUMEN_hor";
            location = (91, 2);
            formula = "GetValue(\"VOLUME\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m3";
        };

        valuefield _tmp_1
        {
            name = "CampoValor";
            location = (74, 2);
            formula = "GetValue(\"VOLUME\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "m3";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_10
        {
            name = "LíneaOArco_19";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_71
        {
            name = "Texto_1";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        valuefield _tmp_74
        {
            name = "NOMBRE";
            location = (2, 2);
            formula = "GetValue(\"CAST_UNIT.CAST_UNIT_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_75
        {
            name = "CANTIDAD";
            location = (39, 2);
            formula = "GetValue(\"CAST_UNIT.NUMBER\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            aligncontenttotop = FALSE;
        };

        text _tmp_81
        {
            name = "Texto";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "CANT.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };
    };

    row _tmp_0
    {
        name = "PART_1";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CAST_UNIT.MATERIAL\")== \"H30\" ) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "PART";
        sorttype = COMBINE;

        text _tmp_4
        {
            name = "Texto_13";
            x1 = 1;
            y1 = 2;
            x2 = 1;
            y2 = 2;
            string = "HORMIGÓN ESTRUCTURAL";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        lineorarc _tmp_6
        {
            name = "LíneaOArco_2";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        valuefield _tmp_16
        {
            name = "CampoValor_1";
            location = (109.22895599212, 2);
            formula = "Total(\"VOLUMEN_hor\")/CopyField(\"CANT_2\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 10;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m3";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_18
        {
            name = "Rectángulo_2";
            x1 = -0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        lineorarc _tmp_19
        {
            name = "LíneaOArco_15";
            x1 = 96;
            y1 = 6;
            x2 = 96;
            y2 = 6;
            pen = -1;
            color = 164;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_77
        {
            name = "LíneaOArco_16";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        valuefield _tmp_79
        {
            name = "CampoValor_3";
            location = (134.79145599212, 2);
            formula = "Total(\"VOLUMEN_hor\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 10;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m3";
            aligncontenttotop = FALSE;
        };

        text _tmp_165
        {
            name = "Texto_20";
            x1 = 153.666015625;
            y1 = 2;
            x2 = 153.666015625;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        lineorarc _tmp_110
        {
            name = "LíneaOArco_12";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_112
        {
            name = "Texto_12";
            x1 = 128;
            y1 = 2;
            x2 = 128;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_114
        {
            name = "LíneaOArco_20";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_116
        {
            name = "MATERIAL_2";
            location = (74, 2);
            formula = "GetValue(\"CAST_UNIT.MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 13;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_118
        {
            name = "LíneaOArco_21";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = -0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };
    };

    row _tmp_82
    {
        name = "PART_2";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CAST_UNIT.MATERIAL\")== \"H15\" ) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "PART";
        sorttype = COMBINE;

        lineorarc _tmp_92
        {
            name = "LíneaOArco_17";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_93
        {
            name = "LíneaOArco_23";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_94
        {
            name = "MATERIAL_1";
            location = (53.59375, 2);
            formula = "GetValue(\"CAST_UNIT.MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 14;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_95
        {
            name = "VOLUMEN_hor_1";
            location = (91, 2);
            formula = "GetValue(\"VOLUME\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m3";
        };

        valuefield _tmp_96
        {
            name = "CampoValor_4";
            location = (74, 2);
            formula = "GetValue(\"VOLUME\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "m3";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_97
        {
            name = "LíneaOArco_24";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_98
        {
            name = "NOMBRE_1";
            location = (2, 2);
            formula = "GetValue(\"CAST_UNIT.CAST_UNIT_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_99
        {
            name = "CANTIDAD_1";
            location = (39, 2);
            formula = "GetValue(\"CAST_UNIT.NUMBER\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            aligncontenttotop = FALSE;
        };

        text _tmp_100
        {
            name = "Texto_2";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "CANT.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        text _tmp_102
        {
            name = "Texto_3";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        rectangle _tmp_106
        {
            name = "Rectángulo_1";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        lineorarc _tmp_108
        {
            name = "LíneaOArco_25";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };
    };

    row _tmp_110
    {
        name = "PART_3";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CAST_UNIT.MATERIAL\")== \"H15\" ) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "PART";
        sorttype = COMBINE;

        valuefield _tmp_121
        {
            name = "CampoValor_5";
            location = (109.54926849212, 2);
            formula = "Total(\"VOLUMEN_hor_1\")/CopyField(\"CANT_2\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 10;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m3";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_122
        {
            name = "Rectángulo_3";
            x1 = -0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        valuefield _tmp_124
        {
            name = "CampoValor_6";
            location = (132.94770599212, 2);
            formula = "Total(\"VOLUMEN_hor_1\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m3";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_120
        {
            name = "MATERIAL_3";
            location = (74, 2);
            formula = "GetValue(\"CAST_UNIT.MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 13;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        text _tmp_128
        {
            name = "Texto_4";
            x1 = 1;
            y1 = 2;
            x2 = 1;
            y2 = 2;
            string = "HORMIGÓN DE LIMPIEZA";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        lineorarc _tmp_129
        {
            name = "LíneaOArco_22";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = -0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_130
        {
            name = "LíneaOArco_26";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_131
        {
            name = "LíneaOArco_27";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_132
        {
            name = "LíneaOArco_28";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_133
        {
            name = "LíneaOArco_60";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_134
        {
            name = "Texto_17";
            x1 = 152.94770599212;
            y1 = 2;
            x2 = 152.94770599212;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_136
        {
            name = "Texto_18";
            x1 = 127.94770599212;
            y1 = 2;
            x2 = 127.94770599212;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };
    };

    row _tmp_125
    {
        name = "phi6";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"6\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        valuefield _tmp_131
        {
            name = "PESO_6";
            location = (72, 2);
            formula = "((CopyField(\"LONG6\")*CopyField(\"PU6\"))/1000)/(CopyField(\"CANT_2\"))";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_132
        {
            name = "LíneaOArco_29";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_133
        {
            name = "LíneaOArco_30";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_134
        {
            name = "LíneaOArco_31";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_135
        {
            name = "PESOT_6";
            location = (88, 2);
            formula = "CopyField(\"PESO_6\")*CopyField(\"CANT_2\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_137
        {
            name = "Rectángulo_4";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_139
        {
            name = "Texto_14";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_145
        {
            name = "LíneaOArco_32";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_146
        {
            name = "LONG6";
            location = (39, 2);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };

        text _tmp_147
        {
            name = "Texto_15";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "CANT.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_148
        {
            name = "PHI_6";
            location = (2, 2);
            formula = "GetValue(\"SIZE\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_1
        {
            name = "PU6";
            location = (57, 2);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 3;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_15
    {
        name = "phi8";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"8\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        valuefield _tmp_16
        {
            name = "PESO_8";
            location = (72, 2);
            formula = "((CopyField(\"LONG8\")*CopyField(\"PU8\"))/1000)/(CopyField(\"CANT_2\"))";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_17
        {
            name = "LíneaOArco_33";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_18
        {
            name = "LíneaOArco_34";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_19
        {
            name = "LíneaOArco_35";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_20
        {
            name = "PESOT_8";
            location = (88, 2);
            formula = "(CopyField(\"LONG8\")*CopyField(\"PU8\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = CLOSESUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_21
        {
            name = "Rectángulo_5";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_22
        {
            name = "Texto_16";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_23
        {
            name = "LíneaOArco_36";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_24
        {
            name = "LONG8";
            location = (39, 2);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };

        text _tmp_25
        {
            name = "Texto_22";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "LONG.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_26
        {
            name = "PHI_8";
            location = (2, 2);
            formula = "GetValue(\"SIZE\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_27
        {
            name = "PU8";
            location = (57, 2);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 3;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_30
    {
        name = "phi10";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"10\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        valuefield _tmp_43
        {
            name = "PESO_10";
            location = (72, 2);
            formula = "((CopyField(\"LONG10\")*CopyField(\"PU10\"))/1000)/(CopyField(\"CANT_2\"))";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_44
        {
            name = "LíneaOArco_37";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_45
        {
            name = "LíneaOArco_38";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_46
        {
            name = "LíneaOArco_39";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_47
        {
            name = "PESOT_10";
            location = (88, 2);
            formula = "(CopyField(\"LONG10\")*CopyField(\"PU10\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_48
        {
            name = "Rectángulo_6";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_49
        {
            name = "Texto_23";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_50
        {
            name = "LíneaOArco_40";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_51
        {
            name = "LONG10";
            location = (39, 2);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };

        text _tmp_52
        {
            name = "Texto_24";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "LONG.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_53
        {
            name = "PHI_10";
            location = (2, 2);
            formula = "GetValue(\"SIZE\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_54
        {
            name = "PU10";
            location = (57, 2);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 3;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_55
    {
        name = "phi12";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"12\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        valuefield _tmp_68
        {
            name = "PESO_12";
            location = (72, 2);
            formula = "((CopyField(\"LONG12\")*CopyField(\"PU12\"))/1000)/(CopyField(\"CANT_2\"))";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_69
        {
            name = "LíneaOArco_41";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_70
        {
            name = "LíneaOArco_42";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_71
        {
            name = "LíneaOArco_43";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_72
        {
            name = "PESOT_12";
            location = (88, 2);
            formula = "(CopyField(\"LONG12\")*CopyField(\"PU12\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_73
        {
            name = "Rectángulo_7";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_74
        {
            name = "Texto_25";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_75
        {
            name = "LíneaOArco_44";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_76
        {
            name = "LONG12";
            location = (39, 2);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };

        text _tmp_77
        {
            name = "Texto_26";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "LONG.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_78
        {
            name = "PHI_12";
            location = (2, 2);
            formula = "GetValue(\"SIZE\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_79
        {
            name = "PU12";
            location = (57, 2);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 3;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_1
    {
        name = "Fila";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"16\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        valuefield _tmp_14
        {
            name = "PESO_16";
            location = (72, 2);
            formula = "((CopyField(\"LONG16\")*CopyField(\"PU16\"))/1000)/(CopyField(\"CANT_2\"))";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_15
        {
            name = "LíneaOArco_45";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_16
        {
            name = "LíneaOArco_46";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_17
        {
            name = "LíneaOArco_47";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_18
        {
            name = "PESOT_16";
            location = (88, 2);
            formula = "(CopyField(\"LONG16\")*CopyField(\"PU16\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_19
        {
            name = "Rectángulo_8";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_20
        {
            name = "Texto_27";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_21
        {
            name = "LíneaOArco_48";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_22
        {
            name = "LONG16";
            location = (39, 2);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };

        text _tmp_23
        {
            name = "Texto_28";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "LONG.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_24
        {
            name = "PHI_16";
            location = (2, 2);
            formula = "GetValue(\"SIZE\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_25
        {
            name = "PU16";
            location = (57, 2);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 3;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_26
    {
        name = "Fila_1";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"20\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        valuefield _tmp_40
        {
            name = "PESO_20";
            location = (72, 2);
            formula = "((CopyField(\"LONG20\")*CopyField(\"PU20\"))/1000)/(CopyField(\"CANT_2\"))";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_41
        {
            name = "LíneaOArco_49";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_42
        {
            name = "LíneaOArco_50";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_43
        {
            name = "LíneaOArco_51";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_44
        {
            name = "PESOT_20";
            location = (88, 2);
            formula = "(CopyField(\"LONG20\")*CopyField(\"PU20\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_45
        {
            name = "Rectángulo_9";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_46
        {
            name = "Texto_29";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_47
        {
            name = "LíneaOArco_52";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_48
        {
            name = "LONG20";
            location = (39, 2);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };

        text _tmp_49
        {
            name = "Texto_30";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "LONG.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_50
        {
            name = "PHI_20";
            location = (2, 2);
            formula = "GetValue(\"SIZE\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_51
        {
            name = "PU20";
            location = (57, 2);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 3;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_27
    {
        name = "REBAR";
        height = 6;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"25\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        valuefield _tmp_52
        {
            name = "PESO_25";
            location = (72, 2);
            formula = "((CopyField(\"LONG25\")*CopyField(\"PU25\"))/1000)/(CopyField(\"CANT_2\"))";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_53
        {
            name = "LíneaOArco_53";
            x1 = 72;
            y1 = 6;
            x2 = 72;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_54
        {
            name = "LíneaOArco_54";
            x1 = 88;
            y1 = 6;
            x2 = 88;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_55
        {
            name = "LíneaOArco_55";
            x1 = 104;
            y1 = 6;
            x2 = 104;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_56
        {
            name = "PESOT_25";
            location = (88, 2);
            formula = "(CopyField(\"LONG25\")*CopyField(\"PU25\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_57
        {
            name = "Rectángulo_10";
            x1 = 0;
            y1 = 0;
            x2 = 116;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_58
        {
            name = "Texto_31";
            x1 = 105;
            y1 = 2;
            x2 = 105;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 1.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_59
        {
            name = "LíneaOArco_56";
            x1 = 54;
            y1 = 6;
            x2 = 54;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_60
        {
            name = "LONG25";
            location = (39, 2);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };

        text _tmp_61
        {
            name = "Texto_32";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "LONG.:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_62
        {
            name = "PHI_25";
            location = (2, 2);
            formula = "GetValue(\"SIZE\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_63
        {
            name = "PU25";
            location = (57, 2);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 3;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_64
    {
        name = "REBAR_1";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"MATERIAL\")== \"ADN-420\" ) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        text _tmp_73
        {
            name = "Texto_33";
            x1 = 1.390625;
            y1 = 2;
            x2 = 1.390625;
            y2 = 2;
            string = "ARMADURA";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_76
        {
            name = "ARMTOT_1";
            location = (132.86958099212, 2);
            formula = "Sum(\"PESOT_6\")+Sum(\"PESOT_8\")+Sum(\"PESOT_10\")+Sum(\"PESOT_12\")+Sum(\"PESOT_16\")+Sum(\"PESOT_20\")+Sum(\"PESOT_25\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_77
        {
            name = "Rectángulo_11";
            x1 = -0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        valuefield _tmp_1
        {
            name = "MATERIAL_4";
            location = (75, 2);
            formula = "GetValue(\"MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        lineorarc _tmp_9
        {
            name = "LíneaOArco_57";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = -0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_10
        {
            name = "LíneaOArco_58";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_11
        {
            name = "LíneaOArco_59";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_12
        {
            name = "LíneaOArco_61";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_13
        {
            name = "LíneaOArco_62";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_14
        {
            name = "Texto_19";
            x1 = 152.94770599212;
            y1 = 2;
            x2 = 152.94770599212;
            y2 = 2;
            string = "kg.";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_15
        {
            name = "Texto_21";
            x1 = 127.94770599212;
            y1 = 2;
            x2 = 127.94770599212;
            y2 = 2;
            string = "kg.";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        valuefield _tmp_2
        {
            name = "ARMTOT";
            location = (107.86958099212, 2);
            formula = "Sum(\"PESO_6\")+Sum(\"PESO_8\")+Sum(\"PESO_10\")+Sum(\"PESO_12\")+Sum(\"PESO_16\")+Sum(\"PESO_20\")+Sum(\"PESO_25\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 12;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_53
    {
        name = "PART_6";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CAST_UNIT.MATERIAL\")== \"SIKAGROUT 212\" ) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "PART";
        sorttype = COMBINE;

        rectangle _tmp_67
        {
            name = "Rectángulo_13";
            x1 = -0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        valuefield _tmp_69
        {
            name = "MATERIAL_6";
            location = (63.1640625, 2);
            formula = "GetValue(\"CAST_UNIT.MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = RIGHT;
            visibility = TRUE;
            angle = 0;
            length = 15;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        text _tmp_70
        {
            name = "Texto_36";
            x1 = 1;
            y1 = 2;
            x2 = 1;
            y2 = 2;
            string = "GROUT CEMENTICIO";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        lineorarc _tmp_71
        {
            name = "LíneaOArco_67";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = -0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_72
        {
            name = "LíneaOArco_68";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_73
        {
            name = "LíneaOArco_69";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_74
        {
            name = "LíneaOArco_70";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_75
        {
            name = "LíneaOArco_71";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_76
        {
            name = "Texto_37";
            x1 = 152.94770599212;
            y1 = 2;
            x2 = 152.94770599212;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_77
        {
            name = "Texto_38";
            x1 = 127.94770599212;
            y1 = 2;
            x2 = 127.94770599212;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        valuefield _tmp_79
        {
            name = "CampoValor_7";
            location = (111.94770599212, 2);
            formula = "GetValue(\"VOLUME\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "m3";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_81
        {
            name = "VOLUMEN_hor_3";
            location = (135.94770599212, 2);
            formula = "GetValue(\"VOLUME\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Volume";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "m3";
            aligncontenttotop = FALSE;
        };

        text _tmp_1
        {
            name = "Texto_34";
            x1 = 89.494140625;
            y1 = 2;
            x2 = 89.494140625;
            y2 = 2;
            string = "O SIMILAR";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };
    };

    row _tmp_111
    {
        name = "PART_7";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if match(GetValue(\"PROFILE\"),\"PL*\") || match(GetValue(\"PROFILE\"),\"IPE*\") && GetValue(\"MATERIAL_TYPE\") == \"STEEL\"  then\n Output()\nelse\n StepOver() \nendif\n";
        contenttype = "PART";
        sorttype = COMBINE;

        valuefield _tmp_114
        {
            name = "MATERIAL_7";
            location = (74, 2);
            formula = "GetValue(\"MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 13;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        text _tmp_116
        {
            name = "Texto_39";
            x1 = 1;
            y1 = 2;
            x2 = 1;
            y2 = 2;
            string = "PLACA e=";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_118
        {
            name = "LONG";
            location = (33, 2);
            formula = "GetValue(\"HEIGHT\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = RIGHT;
            visibility = TRUE;
            angle = 0;
            length = 5;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_120
        {
            name = "Rectángulo_14";
            x1 = -0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        lineorarc _tmp_128
        {
            name = "LíneaOArco_72";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_129
        {
            name = "LíneaOArco_73";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_130
        {
            name = "LíneaOArco_74";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_131
        {
            name = "LíneaOArco_75";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_132
        {
            name = "Texto_40";
            x1 = 127.94770599212;
            y1 = 2;
            x2 = 127.94770599212;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_133
        {
            name = "LíneaOArco_76";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_134
        {
            name = "Texto_41";
            x1 = 152.94770599212;
            y1 = 2;
            x2 = 152.94770599212;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        valuefield _tmp_140
        {
            name = "PESOPL";
            location = (135.91645599212, 2);
            formula = "GetValue(\"WEIGHT_NET\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        text _tmp_147
        {
            name = "Texto_42";
            x1 = 32;
            y1 = 2;
            x2 = 32;
            y2 = 2;
            string = "-";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        text _tmp_149
        {
            name = "Texto_43";
            x1 = 41.8864555339276;
            y1 = 2.00208432355917;
            x2 = 41.8864555339276;
            y2 = 2.00208432355917;
            string = "x";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_151
        {
            name = "ESP";
            location = (17, 2);
            formula = "GetValue(\"WIDTH\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 5;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        text _tmp_153
        {
            name = "Texto_44";
            x1 = 26;
            y1 = 2;
            x2 = 26;
            y2 = 2;
            string = "mm";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_156
        {
            name = "PESOPL_1";
            location = (110.94770599212, 2);
            formula = "GetValue(\"WEIGHT_NET\")*2";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_158
        {
            name = "LONG_1";
            location = (43.7262992839276, 2.00208432355917);
            formula = "GetValue(\"LENGTH\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 5;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        text _tmp_210
        {
            name = "Texto_52";
            x1 = 52.6484375;
            y1 = 2;
            x2 = 52.6484375;
            y2 = 2;
            string = "mm";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };
    };

    row _tmp_159
    {
        name = "PART_8";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"MATERIAL\")== \"AL-220\" ) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        text _tmp_179
        {
            name = "Texto_45";
            x1 = 1;
            y1 = 2;
            x2 = 1;
            y2 = 2;
            string = "INSERTOS Ø=";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        rectangle _tmp_181
        {
            name = "Rectángulo_15";
            x1 = -0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        lineorarc _tmp_182
        {
            name = "LíneaOArco_77";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = -0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_183
        {
            name = "LíneaOArco_78";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_184
        {
            name = "LíneaOArco_79";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_185
        {
            name = "LíneaOArco_80";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_186
        {
            name = "Texto_46";
            x1 = 127.94770599212;
            y1 = 2;
            x2 = 127.94770599212;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_187
        {
            name = "LíneaOArco_81";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_188
        {
            name = "Texto_47";
            x1 = 152.94770599212;
            y1 = 2;
            x2 = 152.94770599212;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_193
        {
            name = "Texto_50";
            x1 = 30;
            y1 = 2;
            x2 = 30;
            y2 = 2;
            string = "mm";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_249
        {
            name = "ESP_1";
            location = (24, 2);
            formula = "GetValue(\"SIZE\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 3;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_251
        {
            name = "MATERIAL_8";
            location = (74, 2);
            formula = "GetValue(\"MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 13;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_253
        {
            name = "PESOPL_2";
            location = (136.22895599212, 2);
            formula = "GetValue(\"WEIGHT_TOTAL\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_1
        {
            name = "PESOPL_3";
            location = (110.94770599212, 2);
            formula = "(CopyField(\"PESOPL_2\"))/CopyField(\"CANT_2\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_211
    {
        name = "PART_9";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if(match(GetValue(\"PROFILE\"), \"ESPARRAGO*\")) then\n Output() \nelse\n StepOver() \nendif";
        contenttype = "PART";
        sorttype = COMBINE;

        valuefield _tmp_230
        {
            name = "MATERIAL_9";
            location = (71.08203125, 2);
            formula = "GetValue(\"MATERIAL\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 17;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        text _tmp_231
        {
            name = "Texto_53";
            x1 = 1;
            y1 = 2;
            x2 = 1;
            y2 = 2;
            string = "ANCLAJE Ø=";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        rectangle _tmp_232
        {
            name = "Rectángulo_16";
            x1 = 0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        lineorarc _tmp_233
        {
            name = "LíneaOArco_82";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = -0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_234
        {
            name = "LíneaOArco_83";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_235
        {
            name = "LíneaOArco_84";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_236
        {
            name = "LíneaOArco_85";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_237
        {
            name = "Texto_54";
            x1 = 127.94770599212;
            y1 = 2;
            x2 = 127.94770599212;
            y2 = 2;
            string = "Ud";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_238
        {
            name = "LíneaOArco_86";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_239
        {
            name = "Texto_55";
            x1 = 152.94770599212;
            y1 = 2;
            x2 = 152.94770599212;
            y2 = 2;
            string = "Ud";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        valuefield _tmp_240
        {
            name = "NUMT";
            location = (138.58833099212, 2);
            formula = "GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 5;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_241
        {
            name = "ESP_2";
            location = (22, 2);
            formula = "GetValue(\"WIDTH\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 5;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        text _tmp_242
        {
            name = "Texto_56";
            x1 = 31;
            y1 = 2;
            x2 = 31;
            y2 = 2;
            string = "mm";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_243
        {
            name = "NUM_1";
            location = (113.74848724212, 2);
            formula = "(1/CopyField(\"CANT_2\"))*CopyField(\"NUMT\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 5;
            decimals = 0;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = SUM;
            aligncontenttotop = FALSE;
        };

        text _tmp_244
        {
            name = "Texto_57";
            x1 = 37;
            y1 = 2;
            x2 = 37;
            y2 = 2;
            string = "-";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_245
        {
            name = "LONG_2";
            location = (43, 2);
            formula = "GetValue(\"LENGTH\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 5;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        text _tmp_246
        {
            name = "Texto_58";
            x1 = 39;
            y1 = 2;
            x2 = 39;
            y2 = 2;
            string = "L=";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        text _tmp_247
        {
            name = "Texto_59";
            x1 = 52.20703125;
            y1 = 2;
            x2 = 52.20703125;
            y2 = 2;
            string = "mm";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };
    };

    row _tmp_2
    {
        name = "OBJETOREF";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "";
        contenttype = "REFERENCE_OBJECT";
        sorttype = COMBINE;

        lineorarc _tmp_13
        {
            name = "LíneaOArco_87";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = -0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_14
        {
            name = "LíneaOArco_88";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_15
        {
            name = "LíneaOArco_89";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_16
        {
            name = "LíneaOArco_90";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_17
        {
            name = "Texto_48";
            x1 = 127.94770599212;
            y1 = 2;
            x2 = 127.94770599212;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_18
        {
            name = "Texto_49";
            x1 = 152.94770599212;
            y1 = 2;
            x2 = 152.94770599212;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_19
        {
            name = "LíneaOArco_91";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        rectangle _tmp_20
        {
            name = "Rectángulo_17";
            x1 = -0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_21
        {
            name = "Texto_51";
            x1 = 1;
            y1 = 2;
            x2 = 1;
            y2 = 2;
            string = "OBJETO DE REFERENCIA";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };

        valuefield _tmp_2
        {
            name = "VAR";
            location = (135.51020599212, 2);
            formula = "GetValue(\"REFERENCE_MODEL.NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 20;
            decimals = 2;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 0;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_3
    {
        name = "REFERENCE_OBJECT_1";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "";
        contenttype = "REFERENCE_OBJECT";
        sorttype = COMBINE;

        lineorarc _tmp_22
        {
            name = "LíneaOArco_92";
            x1 = 60;
            y1 = 6;
            x2 = 60;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_23
        {
            name = "LíneaOArco_93";
            x1 = 108.94770599212;
            y1 = 6;
            x2 = 108.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_24
        {
            name = "LíneaOArco_94";
            x1 = 133.94770599212;
            y1 = 6;
            x2 = 133.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
            bulge = 0;
        };

        lineorarc _tmp_25
        {
            name = "LíneaOArco_95";
            x1 = 126.94770599212;
            y1 = 6;
            x2 = 126.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_26
        {
            name = "Texto_60";
            x1 = 127.94770599212;
            y1 = 2;
            x2 = 127.94770599212;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_27
        {
            name = "Texto_61";
            x1 = 152.94770599212;
            y1 = 2;
            x2 = 152.94770599212;
            y2 = 2;
            string = "m3";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_28
        {
            name = "LíneaOArco_96";
            x1 = 151.94770599212;
            y1 = 6;
            x2 = 151.94770599212;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        rectangle _tmp_29
        {
            name = "Rectángulo_18";
            x1 = -0;
            y1 = 0;
            x2 = 159;
            y2 = 6;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 2;
        };

        text _tmp_30
        {
            name = "Texto_62";
            x1 = 1;
            y1 = 2;
            x2 = 1;
            y2 = 2;
            string = "RELLENO";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = CENTERED;
            pen = -1;
        };
    };
};
