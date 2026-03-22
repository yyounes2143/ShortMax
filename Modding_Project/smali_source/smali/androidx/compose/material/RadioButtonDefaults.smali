.class public final Landroidx/compose/material/RadioButtonDefaults;
.super Ljava/lang/Object;
.source "RadioButton.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/RadioButtonDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/RadioButtonDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/RadioButtonDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/RadioButtonDefaults;->INSTANCE:Landroidx/compose/material/RadioButtonDefaults;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final colors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/RadioButtonColors;
    .locals 18
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    const v1, 0x51b3583a

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p9, 0x1

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSecondary-0d7_KjU()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    move-wide v6, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-wide/from16 v6, p1

    .line 27
    .line 28
    :goto_0
    and-int/lit8 v1, p9, 0x2

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    const/16 v14, 0xe

    .line 43
    .line 44
    const/4 v15, 0x0

    .line 45
    const v10, 0x3f19999a    # 0.6f

    .line 46
    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    move-wide v8, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-wide/from16 v8, p3

    .line 58
    .line 59
    :goto_1
    and-int/lit8 v1, p9, 0x4

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 70
    .line 71
    .line 72
    move-result-wide v10

    .line 73
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    const/16 v16, 0xe

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    const/4 v13, 0x0

    .line 84
    const/4 v14, 0x0

    .line 85
    const/4 v15, 0x0

    .line 86
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    move-wide v10, v1

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move-wide/from16 v10, p5

    .line 93
    .line 94
    :goto_2
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const v4, 0x607fb4c4

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    or-int/2addr v1, v2

    .line 121
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    or-int/2addr v1, v2

    .line 126
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-nez v1, :cond_3

    .line 131
    .line 132
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-ne v2, v1, :cond_4

    .line 139
    .line 140
    :cond_3
    new-instance v2, Landroidx/compose/material/DefaultRadioButtonColors;

    .line 141
    .line 142
    const/4 v12, 0x0

    .line 143
    move-object v5, v2

    .line 144
    invoke-direct/range {v5 .. v12}, Landroidx/compose/material/DefaultRadioButtonColors;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 151
    .line 152
    .line 153
    check-cast v2, Landroidx/compose/material/DefaultRadioButtonColors;

    .line 154
    .line 155
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 156
    .line 157
    .line 158
    return-object v2
.end method
