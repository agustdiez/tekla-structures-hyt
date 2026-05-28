
template template_1343
{
    name = "template_1343";
    type = GRAPHICAL;
    width = 210;
    maxheight = 297;
    columns = (1, 1);
    gap = 1;
    fillpolicy = EVEN;
    filldirection = HORIZONTAL;
    fillstartfrom = TOPLEFT;
    margins = (20, 50, 12, 10);
    gridxspacing = 1;
    gridyspacing = 1;
    version = 4.1;
    created = "03.05.2004 13:23";
    modified = "27.05.2026 15:27";
    notes = "Converted template";
    colors = "153;152;160;161;162;163;164;165;154;155;156;157;158;159;130;131;132;133;";

    header _tmp_833
    {
        name = "Header";
        height = 8;

        text _tmp_835
        {
            name = "Tekst";
            x1 = 2;
            y1 = 4;
            x2 = 2;
            y2 = 4;
            string = "PLANILLA DE DOBLADO";
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

        lineorarc _tmp_1
        {
            name = "LineOrArc";
            x1 = 2;
            y1 = 3;
            x2 = 48;
            y2 = 3;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };
    };

    row _tmp_35
    {
        name = "Conjunto";
        height = 12;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CAST_UNIT_REBAR_WEIGHT\") != 0) then\n  Output()\nelse\n  StepOut()\nendif";
        contenttype = "CAST_UNIT";
        sorttype = COMBINE;

        text _tmp_36
        {
            name = "Fundacion: ";
            x1 = 2.0306396484375;
            y1 = 5;
            x2 = 2.0306396484375;
            y2 = 5;
            string = "Elemento: ";
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

        valuefield _tmp_37
        {
            name = "Tipofundacion";
            location = (20.3667832067279, 5.12471759656651);
            formula = "GetValue(\"CAST_UNIT_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 80;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = -1;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        text _tmp_37
        {
            name = "Text_8";
            x1 = 2;
            y1 = 1;
            x2 = 2;
            y2 = 1;
            string = "Cantidad:";
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

        valuefield _tmp_38
        {
            name = "CANTIDAD";
            location = (20.3361435582904, 1.12471759656651);
            formula = "GetValue(\"MODEL_TOTAL\")";
            maxnumoflines = 1;
            datatype = INTEGER;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 10;
            decimals = 0;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2.5;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = -1;
            oncombine = CLOSESUM;
            aligncontenttotop = FALSE;
        };

        row _tmp_0
        {
            name = "Fundacion";
            height = 2;
            visibility = FALSE;
            usecolumns = FALSE;
            rule = "";
            contenttype = "PART";
            sorttype = COMBINE;

            row _tmp_2
            {
                name = "Encabezado grafico";
                height = 9;
                visibility = TRUE;
                usecolumns = FALSE;
                rule = "";
                contenttype = "PART";
                sorttype = COMBINE;

                rectangle _tmp_19
                {
                    name = "Rectangle";
                    x1 = 0;
                    y1 = 0;
                    x2 = 178;
                    y2 = 9;
                    filled = FALSE;
                    filltype = -1;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                };

                text _tmp_20
                {
                    name = "Text";
                    x1 = 6;
                    y1 = 3;
                    x2 = 6;
                    y2 = 3;
                    string = "Posición";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                text _tmp_22
                {
                    name = "Text_1";
                    x1 = 43;
                    y1 = 3;
                    x2 = 43;
                    y2 = 3;
                    string = "Material";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                lineorarc _tmp_23
                {
                    name = "LineOrArc_2";
                    x1 = 55;
                    y1 = 0;
                    x2 = 55;
                    y2 = 9;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                text _tmp_27
                {
                    name = "Text_4";
                    x1 = 76.751708984375;
                    y1 = 5;
                    x2 = 76.751708984375;
                    y2 = 5;
                    string = "Forma de la barra (1)";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                text _tmp_28
                {
                    name = "Text_5";
                    x1 = 25;
                    y1 = 3;
                    x2 = 25;
                    y2 = 3;
                    string = "Diámetro";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                lineorarc _tmp_29
                {
                    name = "LineOrArc_4";
                    x1 = 20;
                    y1 = 0;
                    x2 = 20;
                    y2 = 9;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_30
                {
                    name = "LineOrArc_5";
                    x1 = 40;
                    y1 = 0;
                    x2 = 40;
                    y2 = 9;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                text _tmp_40
                {
                    name = "Text_9";
                    x1 = 156;
                    y1 = 6;
                    x2 = 156;
                    y2 = 6;
                    string = "Longitud [m]";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                text _tmp_42
                {
                    name = "Text_10";
                    x1 = 167;
                    y1 = 1;
                    x2 = 167;
                    y2 = 1;
                    string = "Total";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                lineorarc _tmp_43
                {
                    name = "LineOrArc_1";
                    x1 = 178;
                    y1 = 8;
                    x2 = 178;
                    y2 = 8;
                    pen = -1;
                    color = 164;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_44
                {
                    name = "LineOrArc_8";
                    x1 = 178;
                    y1 = 5;
                    x2 = 148;
                    y2 = 5;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_45
                {
                    name = "LineOrArc_9";
                    x1 = 148;
                    y1 = 0;
                    x2 = 148;
                    y2 = 9;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                text _tmp_47
                {
                    name = "Text_11";
                    x1 = 149;
                    y1 = 1;
                    x2 = 149;
                    y2 = 1;
                    string = "A cortar (2)";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                lineorarc _tmp_48
                {
                    name = "LineOrArc_10";
                    x1 = 163;
                    y1 = 5;
                    x2 = 163;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                text _tmp_54
                {
                    name = "Text_12";
                    x1 = 127;
                    y1 = 6;
                    x2 = 127;
                    y2 = 6;
                    string = "Cantidad [Ud.]";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                text _tmp_55
                {
                    name = "Text_13";
                    x1 = 138;
                    y1 = 1;
                    x2 = 138;
                    y2 = 1;
                    string = "Total";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                lineorarc _tmp_56
                {
                    name = "LineOrArc_11";
                    x1 = 148;
                    y1 = 5;
                    x2 = 118;
                    y2 = 5;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                text _tmp_57
                {
                    name = "Text_14";
                    x1 = 121;
                    y1 = 1;
                    x2 = 121;
                    y2 = 1;
                    string = "Parcial";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = LEFT;
                    pen = -1;
                };

                lineorarc _tmp_58
                {
                    name = "LineOrArc_12";
                    x1 = 133;
                    y1 = 5;
                    x2 = 133;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_60
                {
                    name = "LineOrArc_13";
                    x1 = 118;
                    y1 = 0;
                    x2 = 118;
                    y2 = 9;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                text _tmp_6
                {
                    name = "Text_2";
                    x1 = 85.14794921875;
                    y1 = 2;
                    x2 = 85.14794921875;
                    y2 = 2;
                    string = "[m]";
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

            row _tmp_20
            {
                name = "ARMADURA";
                height = 30;
                visibility = TRUE;
                usecolumns = FALSE;
                rule = "if (GetValue(\"SHAPE\") != \"A\") then\n  Output()\nelse\n  StepOver()\nendif";
                contenttype = "REBAR";
                sorttype = COMBINE;

                valuefield _tmp_21
                {
                    name = "Pos_-1_1";
                    location = (4.625, 14);
                    formula = "GetValue(\"REBAR_POS\")";
                    maxnumoflines = 1;
                    datatype = STRING;
                    class = "";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 8;
                    decimals = 0;
                    sortdirection = ASCENDING;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_23
                {
                    name = "GRADE_1";
                    location = (43, 14);
                    formula = "GetValue(\"GRADE\")";
                    maxnumoflines = 1;
                    datatype = STRING;
                    class = "";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 7;
                    decimals = 0;
                    sortdirection = NONE;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                graphicalfield _tmp_24
                {
                    name = "field_REBAR_SHAPE_1";
                    location = (58, 2);
                    field = "PULLOUT";
                    height = 24;
                    width = 57;
                    isalwaysvisible = TRUE;
                    visibilityrule = "";

                    userattribute _tmp_25
                    {
                        name = "FontName";
                        value = "Arial Narrow";
                    };

                    userattribute _tmp_26
                    {
                        name = "FontColor";
                        value = "1";
                    };

                    userattribute _tmp_27
                    {
                        name = "FontSize";
                        value = "2.0";
                    };
                };

                lineorarc _tmp_28
                {
                    name = "Lijn of boog";
                    x1 = 20;
                    y1 = 30;
                    x2 = 20;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_29
                {
                    name = "Lijn of boog_1";
                    x1 = 40;
                    y1 = 30;
                    x2 = 40;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_30
                {
                    name = "Lijn of boog_2";
                    x1 = 55;
                    y1 = 30;
                    x2 = 55;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_31
                {
                    name = "Lijn of boog_3";
                    x1 = 118;
                    y1 = 30;
                    x2 = 118;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                rectangle _tmp_32
                {
                    name = "Rectangle_15";
                    x1 = 0;
                    y1 = 0;
                    x2 = 178;
                    y2 = 30;
                    filled = FALSE;
                    filltype = -1;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                };

                lineorarc _tmp_33
                {
                    name = "LineOrArc_101";
                    x1 = 133;
                    y1 = 30;
                    x2 = 133;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_34
                {
                    name = "LineOrArc_102";
                    x1 = 148;
                    y1 = 30;
                    x2 = 148;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_35
                {
                    name = "LineOrArc_103";
                    x1 = 163;
                    y1 = 30;
                    x2 = 163;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                valuefield _tmp_36
                {
                    name = "LONGT-1_1";
                    location = (166, 14);
                    formula = "CopyField(\"CANT_TOTAL\")*CopyField(\"LONGU-1_1\")";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Length";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 7;
                    decimals = 2;
                    sortdirection = NONE;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    unit = "m";
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_37
                {
                    name = "LONGU-1_1";
                    location = (151.168701171875, 14);
                    formula = "GetValue(\"LENGTH\")";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Length";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 7;
                    decimals = 2;
                    sortdirection = NONE;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    unit = "m";
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_38
                {
                    name = "CANT_TOTAL";
                    location = (136, 14);
                    formula = "GetValue(\"NUMBER\")";
                    maxnumoflines = 1;
                    datatype = INTEGER;
                    class = "";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 6;
                    decimals = 0;
                    sortdirection = NONE;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = SUM;
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_39
                {
                    name = "CANTU-1_1";
                    location = (122.6650390625, 14);
                    formula = "CopyField(\"CANT_TOTAL\")/CopyField(\"CANTIDAD\")";
                    maxnumoflines = 1;
                    datatype = INTEGER;
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
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = SUM;
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_45
                {
                    name = "NOMBRE_FUNDACION";
                    location = (58, 27);
                    formula = "GetValue(\"NAME\")";
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
                    fontsize = 1.5;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                };

                valuefield _tmp_3
                {
                    name = "SIZE_-1_1";
                    location = (27.3125, 14);
                    formula = "GetValue(\"SIZE\")";
                    maxnumoflines = 1;
                    datatype = STRING;
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
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                text _tmp_6
                {
                    name = "Text_17";
                    x1 = 57;
                    y1 = 1;
                    x2 = 57;
                    y2 = 1;
                    string = "Radio=";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = RIGHT;
                    pen = -1;
                };

                valuefield _tmp_7
                {
                    name = "RADIO";
                    location = (64.25, 1);
                    formula = "GetValue(\"DIM_R_ALL\")";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Length";
                    cacheable = TRUE;
                    formatzeroasempty = TRUE;
                    justify = RIGHT;
                    visibility = TRUE;
                    angle = 0;
                    length = 5;
                    decimals = 2;
                    sortdirection = NONE;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    unit = "cm";
                    aligncontenttotop = FALSE;
                };

                text _tmp_7
                {
                    name = "Text_24";
                    x1 = 70;
                    y1 = 1;
                    x2 = 70;
                    y2 = 1;
                    string = "cm";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = RIGHT;
                    pen = -1;
                };
            };

            row _tmp_9
            {
                name = "MALLA_01";
                height = 30;
                visibility = TRUE;
                usecolumns = FALSE;
                rule = "if (GetValue(\"SHAPE\") != \"A\") then\n  Output()\nelse\n  StepOver()\nendif";
                contenttype = "MESH";
                sorttype = COMBINE;

                valuefield _tmp_78
                {
                    name = "Pos_-1_3";
                    location = (5, 13);
                    formula = "GetValue(\"GROUP_POS\")";
                    maxnumoflines = 1;
                    datatype = STRING;
                    class = "";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 8;
                    decimals = 0;
                    sortdirection = ASCENDING;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_79
                {
                    name = "GRADE_2";
                    location = (43.375, 13);
                    formula = "GetValue(\"GRADE\")";
                    maxnumoflines = 1;
                    datatype = STRING;
                    class = "";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 7;
                    decimals = 0;
                    sortdirection = NONE;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_80
                {
                    name = "NOMBRE_FUNDACION_2";
                    location = (58.375, 27);
                    formula = "GetValue(\"NAME\")";
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
                    fontsize = 1.5;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                };

                valuefield _tmp_87
                {
                    name = "CANT_TOTAL_1";
                    location = (136.375, 14);
                    formula = "GetValue(\"NUMBER\")";
                    maxnumoflines = 1;
                    datatype = INTEGER;
                    class = "";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 6;
                    decimals = 0;
                    sortdirection = NONE;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = SUM;
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_88
                {
                    name = "SUPTOTAL_1";
                    location = (163.28125, 14);
                    formula = "CopyField(\"SUPUNIT_1\")*CopyField(\"CANT_TOTAL_1\")";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Area";
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
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    unit = "m2";
                    aligncontenttotop = FALSE;
                };

                lineorarc _tmp_89
                {
                    name = "Lijn of boog_10";
                    x1 = 20;
                    y1 = 30;
                    x2 = 20;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_90
                {
                    name = "Lijn of boog_11";
                    x1 = 40;
                    y1 = 30;
                    x2 = 40;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_91
                {
                    name = "Lijn of boog_12";
                    x1 = 55;
                    y1 = 30;
                    x2 = 55;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_92
                {
                    name = "Lijn of boog_13";
                    x1 = 118;
                    y1 = 30;
                    x2 = 118;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_93
                {
                    name = "Lijn of boog_14";
                    x1 = 133;
                    y1 = 30;
                    x2 = 133;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                lineorarc _tmp_94
                {
                    name = "Lijn of boog_15";
                    x1 = 148;
                    y1 = 30;
                    x2 = 148;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                valuefield _tmp_95
                {
                    name = "LENGTH_1";
                    location = (21.25, 12);
                    formula = "GetValue(\"CUSTOM.MESH_LENGTH_NET\")/1000";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Length";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = RIGHT;
                    visibility = TRUE;
                    angle = 0;
                    length = 8;
                    decimals = 2;
                    sortdirection = ASCENDING;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                text _tmp_96
                {
                    name = "Text_27";
                    x1 = 29.326171875;
                    y1 = 12;
                    x2 = 29.326171875;
                    y2 = 12;
                    string = "*";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = RIGHT;
                    pen = -1;
                };

                valuefield _tmp_97
                {
                    name = "WIDTH_1";
                    location = (30, 12);
                    formula = "GetValue(\"CUSTOM.MESH_WIDTH_NET\")/1000";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Length";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = LEFT;
                    visibility = TRUE;
                    angle = 0;
                    length = 8;
                    decimals = 2;
                    sortdirection = ASCENDING;
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_98
                {
                    name = "SUPUNIT_1";
                    location = (118.609375, 14);
                    formula = "GetValue(\"AREA\")";
                    maxnumoflines = 1;
                    datatype = DOUBLE;
                    class = "Area";
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
                    fontsize = 2;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    unit = "m2";
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_99
                {
                    name = "CATNAME_2";
                    location = (20.59375, 15);
                    formula = "GetValue(\"CATALOG_NAME\")";
                    maxnumoflines = 2;
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
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                valuefield _tmp_100
                {
                    name = "CATNAME_3";
                    location = (22, 3);
                    formula = "GetValue(\"CUSTOM.MESH_SIZE_NET\")";
                    maxnumoflines = 2;
                    datatype = STRING;
                    class = "";
                    cacheable = TRUE;
                    formatzeroasempty = FALSE;
                    justify = CENTERED;
                    visibility = TRUE;
                    angle = 0;
                    length = 16;
                    decimals = 0;
                    sortdirection = ASCENDING;
                    fontname = "Arial";
                    fontcolor = 131;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontstyle = 0;
                    fontslant = 0;
                    pen = 6;
                    oncombine = NONE;
                    aligncontenttotop = FALSE;
                };

                rectangle _tmp_103
                {
                    name = "Rectangle_18";
                    x1 = 0;
                    y1 = 0;
                    x2 = 178;
                    y2 = 30;
                    filled = FALSE;
                    filltype = -1;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                };

                text _tmp_1
                {
                    name = "Text_7";
                    x1 = 166.9296875;
                    y1 = 26;
                    x2 = 166.9296875;
                    y2 = 26;
                    string = "Sup. Parcial";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = CENTERED;
                    pen = -1;
                };

                text _tmp_3
                {
                    name = "Text_15";
                    x1 = 168.626782749376;
                    y1 = 23.4608320270202;
                    x2 = 168.626782749376;
                    y2 = 23.4608320270202;
                    string = "(m2)";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = CENTERED;
                    pen = -1;
                };

                text _tmp_5
                {
                    name = "Text_16";
                    x1 = 122;
                    y1 = 26;
                    x2 = 122;
                    y2 = 26;
                    string = "Sup. Unit.";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = CENTERED;
                    pen = -1;
                };

                text _tmp_7
                {
                    name = "Text_20";
                    x1 = 123;
                    y1 = 23;
                    x2 = 123;
                    y2 = 23;
                    string = "(m2)";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = CENTERED;
                    pen = -1;
                };

                lineorarc _tmp_9
                {
                    name = "Lijn of boog_4";
                    x1 = 163;
                    y1 = 30;
                    x2 = 163;
                    y2 = 0;
                    pen = -1;
                    color = 153;
                    linetype = 1;
                    linewidth = 1;
                    bulge = 0;
                };

                text _tmp_11
                {
                    name = "Text_23";
                    x1 = 154;
                    y1 = 14;
                    x2 = 154;
                    y2 = 14;
                    string = "------";
                    fontname = "Arial";
                    fontcolor = 153;
                    fonttype = 2;
                    fontsize = 1.5;
                    fontratio = 1;
                    fontslant = 0;
                    fontstyle = 0;
                    angle = 0;
                    justify = CENTERED;
                    pen = -1;
                };

                graphicalfield _tmp_0
                {
                    name = "GraphicalField";
                    location = (62, 2);
                    field = "";
                    height = 24;
                    width = 49;
                    isalwaysvisible = TRUE;
                    visibilityrule = "";

                    applicationattribute _tmp_4
                    {
                        name = "Dimensions";
                        type = INTEGER;
                        value = 1;
                    };
                };
            };
        };
    };

    row _tmp_832
    {
        name = "Row_1";
        height = 30;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "";
        contenttype = "REBAR";
        sorttype = COMBINE;

        rectangle _tmp_257
        {
            name = "Rectángulo";
            x1 = 49;
            y1 = 10;
            x2 = 134;
            y2 = 14;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        text _tmp_258
        {
            name = "Texto_4";
            x1 = 70.5107421875;
            y1 = 10.9382964696719;
            x2 = 70.5107421875;
            y2 = 10.9382964696719;
            string = "TABLA RESUMEN DE ARMADURA";
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

        lineorarc _tmp_259
        {
            name = "LíneaOArco_16";
            x1 = 89;
            y1 = 5;
            x2 = 89;
            y2 = 10;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_260
        {
            name = "Texto_5";
            x1 = 91;
            y1 = 6;
            x2 = 91;
            y2 = 6;
            string = "Peso Unitario";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_261
        {
            name = "LíneaOArco_17";
            x1 = 109;
            y1 = 5;
            x2 = 109;
            y2 = 10;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_262
        {
            name = "Texto_6";
            x1 = 118;
            y1 = 6;
            x2 = 118;
            y2 = 6;
            string = "Peso";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_263
        {
            name = "Texto_7";
            x1 = 55;
            y1 = 6;
            x2 = 55;
            y2 = 6;
            string = "Diámetro";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_264
        {
            name = "LíneaOArco_19";
            x1 = 71;
            y1 = 5;
            x2 = 71;
            y2 = 10;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        rectangle _tmp_265
        {
            name = "Rectángulo_1";
            x1 = 49;
            y1 = 5;
            x2 = 134;
            y2 = 10;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        rectangle _tmp_266
        {
            name = "Rectángulo_2";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_267
        {
            name = "LíneaOArco_18";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_268
        {
            name = "LíneaOArco_22";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_269
        {
            name = "LíneaOArco_23";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_271
        {
            name = "Texto_14";
            x1 = 57.07421875;
            y1 = 2;
            x2 = 57.07421875;
            y2 = 2;
            string = "[mm]";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_272
        {
            name = "Texto_8";
            x1 = 75;
            y1 = 6;
            x2 = 75;
            y2 = 6;
            string = "Longitud";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_273
        {
            name = "Texto_9";
            x1 = 78;
            y1 = 2;
            x2 = 78;
            y2 = 2;
            string = "[m]";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_274
        {
            name = "Texto_10";
            x1 = 94;
            y1 = 2;
            x2 = 94;
            y2 = 2;
            string = "[kg/m]";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_275
        {
            name = "Texto_11";
            x1 = 119;
            y1 = 2;
            x2 = 119;
            y2 = 2;
            string = "[kg]";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };
    };

    row _tmp_276
    {
        name = "phi6";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"6\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        rectangle _tmp_278
        {
            name = "Rectángulo_3";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_279
        {
            name = "LíneaOArco_24";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_280
        {
            name = "LíneaOArco_32";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_281
        {
            name = "LíneaOArco_33";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_282
        {
            name = "CampoValor_7";
            location = (57.6650390625, 1.04066853770492);
            formula = "GetValue(\"SIZE\")";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_289
        {
            name = "PESO_6";
            location = (116, 1);
            formula = "(CopyField(\"LONG6\")*CopyField(\"PU6\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 1;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_36
        {
            name = "PU6";
            location = (94, 1);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\n";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_0
        {
            name = "LONG6";
            location = (75, 1);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_10
    {
        name = "phi8";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"8\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        rectangle _tmp_11
        {
            name = "Rectangle_2";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_12
        {
            name = "LineOrArc_14";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_13
        {
            name = "LineOrArc_15";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_14
        {
            name = "LineOrArc_16";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_15
        {
            name = "ValueField_3";
            location = (57.6650390625, 1.04066853770492);
            formula = "GetValue(\"SIZE\")";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_17
        {
            name = "PESO_8";
            location = (116, 1);
            formula = "(CopyField(\"LONG8\")*CopyField(\"PU8\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 1;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_35
        {
            name = "PU8";
            location = (94, 1);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\n";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_1
        {
            name = "LONG8";
            location = (75, 1);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_18
    {
        name = "phi10";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"10\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        rectangle _tmp_19
        {
            name = "Rectangle_3";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_20
        {
            name = "LineOrArc_17";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_21
        {
            name = "LineOrArc_18";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_22
        {
            name = "LineOrArc_19";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_23
        {
            name = "ValueField_6";
            location = (57.6650390625, 1.04066853770492);
            formula = "GetValue(\"SIZE\")";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_25
        {
            name = "PESO_10";
            location = (115, 1);
            formula = "(CopyField(\"LONG10\")*CopyField(\"PU10\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 0;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_5
        {
            name = "PU10";
            location = (94, 1);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\n";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_2
        {
            name = "LONG10";
            location = (75, 1);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_26
    {
        name = "phi12";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"12\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        rectangle _tmp_27
        {
            name = "Rectangle_4";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_28
        {
            name = "LineOrArc_20";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_29
        {
            name = "LineOrArc_21";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_30
        {
            name = "LineOrArc_22";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_31
        {
            name = "ValueField_9";
            location = (57.6650390625, 1.04066853770492);
            formula = "GetValue(\"SIZE\")";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_33
        {
            name = "PESO_12";
            location = (115, 1);
            formula = "(CopyField(\"LONG12\")*CopyField(\"PU12\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 1;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_37
        {
            name = "PU12";
            location = (94, 1);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\n";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_3
        {
            name = "LONG12";
            location = (75, 1);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_34
    {
        name = "phi16";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"16\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        rectangle _tmp_35
        {
            name = "Rectangle_5";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_36
        {
            name = "LineOrArc_23";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_37
        {
            name = "LineOrArc_24";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_38
        {
            name = "LineOrArc_25";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_39
        {
            name = "ValueField_12";
            location = (57.6650390625, 1.04066853770492);
            formula = "GetValue(\"SIZE\")";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_41
        {
            name = "PESO_16";
            location = (115, 1);
            formula = "(CopyField(\"LONG16\")*CopyField(\"PU16\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 1;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_38
        {
            name = "PU16";
            location = (94, 1);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\n";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_4
        {
            name = "LONG16";
            location = (75, 1);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_42
    {
        name = "phi20";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"20\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        rectangle _tmp_43
        {
            name = "Rectangle_6";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_44
        {
            name = "LineOrArc_26";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_45
        {
            name = "LineOrArc_27";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_46
        {
            name = "LineOrArc_28";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_47
        {
            name = "ValueField_15";
            location = (57.6650390625, 1.04066853770492);
            formula = "GetValue(\"SIZE\")";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_49
        {
            name = "PESO_20";
            location = (115, 1);
            formula = "(CopyField(\"LONG20\")*CopyField(\"PU20\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 1;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_39
        {
            name = "PU20";
            location = (94, 1);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\n";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_5
        {
            name = "LONG20";
            location = (75, 1);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_58
    {
        name = "phi25";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"SIZE\")== \"25\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "REBAR";
        sorttype = COMBINE;

        rectangle _tmp_59
        {
            name = "Rectangle_7";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_60
        {
            name = "LineOrArc_29";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_61
        {
            name = "LineOrArc_30";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_62
        {
            name = "LineOrArc_31";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_63
        {
            name = "ValueField_18";
            location = (57.6650390625, 1.04066853770492);
            formula = "GetValue(\"SIZE\")";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_65
        {
            name = "PESO_25";
            location = (115, 1);
            formula = "(CopyField(\"LONG25\")*CopyField(\"PU25\"))/1000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 1;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_40
        {
            name = "PU25";
            location = (94, 1);
            formula = "if (GetValue(\"SIZE\")==6) then\n0.222\nelse\nif (GetValue(\"SIZE\")==8) then\n0.395\nelse\nif (GetValue(\"SIZE\")==10) then\n0.617\nelse\nif (GetValue(\"SIZE\")==12) then\n0.888\nelse\nif (GetValue(\"SIZE\")==16) then\n1.580\nelse\nif (GetValue(\"SIZE\")==20) then\n2.470\nelse\nif (GetValue(\"SIZE\")==25) then\n3.850\nelse\nif (GetValue(\"SIZE\")==32) then\n6.310\nelse\nif (GetValue(\"SIZE\")==40) then\n9.860\nelse\n\"Ø no disp.\"\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\nendif\n";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "mm";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_6
        {
            name = "LONG25";
            location = (75, 1);
            formula = "GetValue(\"LENGTH\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Length";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 8;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_94
    {
        name = "TOTAL";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "";
        contenttype = "REBAR";
        sorttype = COMBINE;

        lineorarc _tmp_95
        {
            name = "LineOrArc_38";
            x1 = 89;
            y1 = 6;
            x2 = 89;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_97
        {
            name = "LineOrArc_39";
            x1 = 134;
            y1 = 6;
            x2 = 134;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_98
        {
            name = "LineOrArc_40";
            x1 = 89;
            y1 = 0;
            x2 = 134;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_100
        {
            name = "Text_18";
            x1 = 94;
            y1 = 2;
            x2 = 94;
            y2 = 2;
            string = "Total ADN 420:";
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

        valuefield _tmp_102
        {
            name = "PESOTOTAL";
            location = (112, 2);
            formula = "Sum(\"PESO_6\")+Sum(\"PESO_8\")+Sum(\"PESO_10\")+Sum(\"PESO_12\")+Sum(\"PESO_16\")+Sum(\"PESO_20\")+Sum(\"PESO_25\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = RIGHT;
            visibility = TRUE;
            angle = 0;
            length = 11;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        text _tmp_104
        {
            name = "Text_19";
            x1 = 128;
            y1 = 2;
            x2 = 128;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        row _tmp_32
        {
            name = "Row";
            height = 15;
            visibility = TRUE;
            usecolumns = FALSE;
            rule = "";
            contenttype = "REBAR";
            sorttype = COMBINE;

            lineorarc _tmp_33
            {
                name = "LíneaOArco";
                x1 = 89;
                y1 = 5;
                x2 = 89;
                y2 = 10;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            text _tmp_34
            {
                name = "Texto_1";
                x1 = 91;
                y1 = 6;
                x2 = 91;
                y2 = 6;
                string = "Peso Unitario";
                fontname = "Arial";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 2;
                fontratio = 1;
                fontslant = 0;
                fontstyle = 0;
                angle = 0;
                justify = LEFT;
                pen = -1;
            };

            lineorarc _tmp_35
            {
                name = "LíneaOArco_1";
                x1 = 109;
                y1 = 5;
                x2 = 109;
                y2 = 10;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            text _tmp_36
            {
                name = "Texto_2";
                x1 = 118;
                y1 = 6;
                x2 = 118;
                y2 = 6;
                string = "Peso";
                fontname = "Arial";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 2;
                fontratio = 1;
                fontslant = 0;
                fontstyle = 0;
                angle = 0;
                justify = LEFT;
                pen = -1;
            };

            text _tmp_37
            {
                name = "Texto_3";
                x1 = 56;
                y1 = 6;
                x2 = 56;
                y2 = 6;
                string = "TIPO";
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

            lineorarc _tmp_38
            {
                name = "LíneaOArco_2";
                x1 = 71;
                y1 = 5;
                x2 = 71;
                y2 = 10;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            rectangle _tmp_39
            {
                name = "Rectángulo_5";
                x1 = 49;
                y1 = 5;
                x2 = 134;
                y2 = 10;
                filled = FALSE;
                filltype = -1;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
            };

            rectangle _tmp_40
            {
                name = "Rectángulo_6";
                x1 = 49;
                y1 = 0;
                x2 = 134;
                y2 = 5;
                filled = FALSE;
                filltype = -1;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
            };

            lineorarc _tmp_41
            {
                name = "LíneaOArco_3";
                x1 = 71;
                y1 = 0;
                x2 = 71;
                y2 = 5;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            lineorarc _tmp_42
            {
                name = "LíneaOArco_4";
                x1 = 89;
                y1 = 0;
                x2 = 89;
                y2 = 5;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            lineorarc _tmp_43
            {
                name = "LíneaOArco_5";
                x1 = 109;
                y1 = 0;
                x2 = 109;
                y2 = 5;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            text _tmp_44
            {
                name = "Texto_13";
                x1 = 74;
                y1 = 6;
                x2 = 74;
                y2 = 6;
                string = "Superficie";
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

            text _tmp_45
            {
                name = "Texto_15";
                x1 = 77.3828125;
                y1 = 2;
                x2 = 77.3828125;
                y2 = 2;
                string = "[m2]";
                fontname = "Arial";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 2;
                fontratio = 1;
                fontslant = 0;
                fontstyle = 0;
                angle = 0;
                justify = LEFT;
                pen = -1;
            };

            text _tmp_46
            {
                name = "Texto_16";
                x1 = 94;
                y1 = 2;
                x2 = 94;
                y2 = 2;
                string = "[kg/m2]";
                fontname = "Arial";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 2;
                fontratio = 1;
                fontslant = 0;
                fontstyle = 0;
                angle = 0;
                justify = LEFT;
                pen = -1;
            };

            text _tmp_47
            {
                name = "Texto_17";
                x1 = 119;
                y1 = 2;
                x2 = 119;
                y2 = 2;
                string = "[kg]";
                fontname = "Arial";
                fontcolor = 153;
                fonttype = 2;
                fontsize = 2;
                fontratio = 1;
                fontslant = 0;
                fontstyle = 0;
                angle = 0;
                justify = LEFT;
                pen = -1;
            };

            text _tmp_1
            {
                name = "Texto";
                x1 = 56;
                y1 = 1;
                x2 = 56;
                y2 = 1;
                string = "Malla";
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
    };

    row _tmp_1
    {
        name = "MALLA_Q131";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q131\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_6
        {
            name = "MALLA_Q131_1";
            location = (50.59375, 1);
            formula = "GetValue(\"CATALOG_NAME\")";
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
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_8
        {
            name = "PUM_Q131";
            location = (94.3349609375, 1);
            formula = "2.055126";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_9
        {
            name = "PESO_Q131";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q131\")*CopyField(\"PUM_Q131\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_11
        {
            name = "Rectangle_8";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_15
        {
            name = "LineOrArc_3";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_16
        {
            name = "LineOrArc_6";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_17
        {
            name = "LineOrArc_7";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_1
        {
            name = "SUPERF_Q131";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_19
    {
        name = "MALLA_Q188";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q188\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_49
        {
            name = "MALLA_Q188";
            location = (50.59375, 1);
            formula = "GetValue(\"CATALOG_NAME\")";
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
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_50
        {
            name = "PUM_Q188";
            location = (94.3349609375, 1);
            formula = "2.959380";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_51
        {
            name = "PESO_Q188";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q188\")*CopyField(\"PUM_Q188\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_52
        {
            name = "Rectangle_9";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_53
        {
            name = "LineOrArc_32";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_54
        {
            name = "LineOrArc_33";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_55
        {
            name = "LineOrArc_34";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_56
        {
            name = "SUPERF_Q188";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_20
    {
        name = "MALLA_Q196";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q196\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_70
        {
            name = "MALLA_Q196";
            location = (50, 1.04066853770492);
            formula = "GetValue(\"CATALOG_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 15;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_71
        {
            name = "PUM_Q196";
            location = (94.3349609375, 1);
            formula = "3.082688";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_72
        {
            name = "PESO_Q196";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q196\")*CopyField(\"PUM_Q196\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_73
        {
            name = "Rectangle_10";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_74
        {
            name = "LineOrArc_37";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_75
        {
            name = "LineOrArc_41";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_76
        {
            name = "LineOrArc_42";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_77
        {
            name = "SUPERF_Q196";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_21
    {
        name = "MALLA_Q221";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q221\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_86
        {
            name = "MALLA_Q221_1";
            location = (50, 1.04066853770492);
            formula = "GetValue(\"CATALOG_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 15;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_87
        {
            name = "PUM_Q221";
            location = (94.3349609375, 1);
            formula = "3.473162";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_88
        {
            name = "PESO_Q221";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q221\")*CopyField(\"PUM_Q221\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_89
        {
            name = "Rectangle_11";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_90
        {
            name = "LineOrArc_43";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_91
        {
            name = "LineOrArc_44";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_92
        {
            name = "LineOrArc_45";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_93
        {
            name = "SUPERF_Q221";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_22
    {
        name = "MALLA_Q257";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q257\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_102
        {
            name = "MALLA_Q257_1";
            location = (50, 1.04066853770492);
            formula = "GetValue(\"CATALOG_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 15;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_103
        {
            name = "PUM_Q257";
            location = (94.3349609375, 1);
            formula = "4.028045";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_104
        {
            name = "PESO_Q257";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q257\")*CopyField(\"PUM_Q257\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_105
        {
            name = "Rectangle_12";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_106
        {
            name = "LineOrArc_46";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_107
        {
            name = "LineOrArc_47";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_108
        {
            name = "LineOrArc_48";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_109
        {
            name = "SUPERF_Q257";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_23
    {
        name = "MALLA_Q335";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q335\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_118
        {
            name = "MALLA_Q335_1";
            location = (50, 1.04066853770492);
            formula = "GetValue(\"CATALOG_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 15;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_119
        {
            name = "PUM_Q335";
            location = (94.3349609375, 1);
            formula = "5.261120";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_120
        {
            name = "PESO_Q335";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q335\")*CopyField(\"PUM_Q335\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_121
        {
            name = "Rectangle_13";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_122
        {
            name = "LineOrArc_49";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_123
        {
            name = "LineOrArc_50";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_124
        {
            name = "LineOrArc_51";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_125
        {
            name = "SUPERF_Q335";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_24
    {
        name = "MALLA_Q378";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q378\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_134
        {
            name = "MALLA_Q378_1";
            location = (50, 1.04066853770492);
            formula = "GetValue(\"CATALOG_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 15;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_135
        {
            name = "PUM_Q378";
            location = (94.3349609375, 1);
            formula = "5.939312";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_136
        {
            name = "PESO_Q378";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q378\")*CopyField(\"PUM_Q378\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_137
        {
            name = "Rectangle_14";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_138
        {
            name = "LineOrArc_52";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_139
        {
            name = "LineOrArc_53";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_140
        {
            name = "LineOrArc_54";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_141
        {
            name = "SUPERF_Q378";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_25
    {
        name = "MALLA_Q524";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q524\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_150
        {
            name = "MALLA_Q524_1";
            location = (50, 1.04066853770492);
            formula = "GetValue(\"CATALOG_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 15;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_151
        {
            name = "PUM_Q524";
            location = (94.3349609375, 1);
            formula = "8.220501";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_152
        {
            name = "PESO_Q524";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q524\")*CopyField(\"PUM_Q524\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_153
        {
            name = "Rectangle_16";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_154
        {
            name = "LineOrArc_55";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_155
        {
            name = "LineOrArc_56";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_156
        {
            name = "LineOrArc_57";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_157
        {
            name = "SUPERF_Q524";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_27
    {
        name = "MALLA_Q524";
        height = 5;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "if (GetValue(\"CATALOG_NAME\")== \"Q754\") then\n  Output() \nelse\n  StepOut()\nendif";
        contenttype = "MESH";
        sorttype = COMBINE;

        valuefield _tmp_166
        {
            name = "MALLA_Q754";
            location = (50, 1.04066853770492);
            formula = "GetValue(\"CATALOG_NAME\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 15;
            decimals = 0;
            sortdirection = ASCENDING;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_167
        {
            name = "PUM_Q754";
            location = (94.3349609375, 1);
            formula = "11.837521";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 7;
            decimals = 3;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = NONE;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        valuefield _tmp_168
        {
            name = "PESO_Q754";
            location = (115.3349609375, 1);
            formula = "(CopyField(\"SUPERF_Q754\")*CopyField(\"PUM_Q754\"))/1000000";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        rectangle _tmp_169
        {
            name = "Rectangle_17";
            x1 = 49;
            y1 = 0;
            x2 = 134;
            y2 = 5;
            filled = FALSE;
            filltype = -1;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
        };

        lineorarc _tmp_170
        {
            name = "LineOrArc_58";
            x1 = 71;
            y1 = 0;
            x2 = 71;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_171
        {
            name = "LineOrArc_59";
            x1 = 89;
            y1 = 0;
            x2 = 89;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        lineorarc _tmp_172
        {
            name = "LineOrArc_60";
            x1 = 109;
            y1 = 0;
            x2 = 109;
            y2 = 5;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_173
        {
            name = "SUPERF_Q754";
            location = (74, 1);
            formula = "GetValue(\"AREA\")*GetValue(\"NUMBER\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Area";
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
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "m2";
            aligncontenttotop = FALSE;
        };
    };

    row _tmp_28
    {
        name = "MALLA_TOTAL";
        height = 6;
        visibility = TRUE;
        usecolumns = FALSE;
        rule = "";
        contenttype = "MESH";
        sorttype = COMBINE;

        lineorarc _tmp_35
        {
            name = "LineOrArc_35";
            x1 = 134;
            y1 = 6;
            x2 = 134;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        text _tmp_37
        {
            name = "Text_21";
            x1 = 128;
            y1 = 2;
            x2 = 128;
            y2 = 2;
            string = "kg";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        text _tmp_38
        {
            name = "Text_22";
            x1 = 89.40625;
            y1 = 2;
            x2 = 89.40625;
            y2 = 2;
            string = "Total Malla AM500:";
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontslant = 0;
            fontstyle = 0;
            angle = 0;
            justify = LEFT;
            pen = -1;
        };

        lineorarc _tmp_39
        {
            name = "LineOrArc_36";
            x1 = 89;
            y1 = 6;
            x2 = 89;
            y2 = 0;
            pen = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            bulge = 0;
        };

        valuefield _tmp_40
        {
            name = "PESO";
            location = (115, 2);
            formula = "Sum(\"PESO_Q131\")+Sum(\"PESO_Q188\")+Sum(\"PESO_Q196\")+Sum(\"PESO_Q221\")+Sum(\"PESO_Q257\")+Sum(\"PESO_Q335\")+Sum(\"PESO_Q378\")+Sum(\"PESO_Q524\")+Sum(\"PESO_Q754\")";
            maxnumoflines = 1;
            datatype = DOUBLE;
            class = "Weight";
            cacheable = TRUE;
            formatzeroasempty = FALSE;
            justify = CENTERED;
            visibility = TRUE;
            angle = 0;
            length = 9;
            decimals = 2;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 153;
            fonttype = 2;
            fontsize = 2;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = 6;
            oncombine = SUM;
            unit = "kg";
            aligncontenttotop = FALSE;
        };

        polyline _tmp_57
        {
            name = "Polilínea";
            filled = FALSE;
            filltype = -1;
            color = 153;
            linetype = 1;
            linewidth = 1;
            pen = -1;

            lineorarc _tmp_58
            {
                name = "LíneaOArco_6";
                x1 = 89;
                y1 = 6;
                x2 = 134;
                y2 = 6;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            lineorarc _tmp_59
            {
                name = "LíneaOArco_6";
                x1 = 134;
                y1 = 6;
                x2 = 134;
                y2 = 0;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            lineorarc _tmp_60
            {
                name = "LíneaOArco_6";
                x1 = 134;
                y1 = 0;
                x2 = 89;
                y2 = 0;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };

            lineorarc _tmp_61
            {
                name = "LíneaOArco_6";
                x1 = 89;
                y1 = 0;
                x2 = 89;
                y2 = 6;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };
        };
    };

    footer _tmp_0
    {
        name = "Footer";
        height = 16;

        text _tmp_2
        {
            name = "Text_3";
            x1 = 1;
            y1 = 10;
            x2 = 1;
            y2 = 10;
            string = "(1): las longitudes de doblado se indican a filo externo de barras";
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

        text _tmp_4
        {
            name = "Text_6";
            x1 = 1;
            y1 = 5;
            x2 = 1;
            y2 = 5;
            string = "(2) las longitudes a cortar se indican a a eje de barras";
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
};
