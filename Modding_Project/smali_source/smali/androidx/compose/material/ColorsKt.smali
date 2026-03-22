.class public final Landroidx/compose/material/ColorsKt;
.super Ljava/lang/Object;
.source "Colors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final LocalColors:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/Colors;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE:Landroidx/compose/material/ColorsKt$LocalColors$1;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    return-void
.end method

.method public static final contentColorFor-4WTKRHQ(Landroidx/compose/material/Colors;J)J
    .locals 2
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$contentColorFor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getOnPrimary-0d7_KjU()J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getPrimaryVariant-0d7_KjU()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getOnPrimary-0d7_KjU()J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getSecondary-0d7_KjU()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getOnSecondary-0d7_KjU()J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getSecondaryVariant-0d7_KjU()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getOnSecondary-0d7_KjU()J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getBackground-0d7_KjU()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getOnBackground-0d7_KjU()J

    .line 77
    .line 78
    .line 79
    move-result-wide p0

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 92
    .line 93
    .line 94
    move-result-wide p0

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getOnError-0d7_KjU()J

    .line 107
    .line 108
    .line 109
    move-result-wide p0

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 114
    .line 115
    .line 116
    move-result-wide p0

    .line 117
    :goto_0
    return-wide p0
.end method

.method public static final contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ReadOnlyComposable;
    .end annotation

    .line 1
    sget-object p3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-virtual {p3, p2, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-static {p3, p0, p1}, Landroidx/compose/material/ColorsKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material/Colors;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    sget-object p3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 13
    .line 14
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    cmp-long p3, p0, v0

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    :goto_0
    return-wide p0
.end method

.method public static final darkColors-2qZNXz8(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;
    .locals 28
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v3, p2

    .line 4
    .line 5
    move-wide/from16 v5, p4

    .line 6
    .line 7
    move-wide/from16 v7, p6

    .line 8
    .line 9
    move-wide/from16 v9, p8

    .line 10
    .line 11
    move-wide/from16 v11, p10

    .line 12
    .line 13
    move-wide/from16 v13, p12

    .line 14
    .line 15
    move-wide/from16 v15, p14

    .line 16
    .line 17
    move-wide/from16 v17, p16

    .line 18
    .line 19
    move-wide/from16 v19, p18

    .line 20
    .line 21
    move-wide/from16 v21, p20

    .line 22
    .line 23
    move-wide/from16 v23, p22

    .line 24
    .line 25
    new-instance v27, Landroidx/compose/material/Colors;

    .line 26
    .line 27
    move-object/from16 v0, v27

    .line 28
    .line 29
    const/16 v25, 0x0

    .line 30
    .line 31
    const/16 v26, 0x0

    .line 32
    .line 33
    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/Colors;-><init>(JJJJJJJJJJJJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    return-object v27
.end method

.method public static synthetic darkColors-2qZNXz8$default(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/Colors;
    .locals 26

    .line 1
    move/from16 v0, p24

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-wide v1, 0xffbb86fcL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide/from16 v1, p0

    .line 18
    .line 19
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    const-wide v3, 0xff3700b3L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-wide/from16 v3, p2

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    const-wide v5, 0xff03dac6L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move-wide/from16 v5, p4

    .line 50
    .line 51
    :goto_2
    and-int/lit8 v7, v0, 0x8

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    move-wide v7, v5

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    move-wide/from16 v7, p6

    .line 58
    .line 59
    :goto_3
    and-int/lit8 v9, v0, 0x10

    .line 60
    .line 61
    const-wide v10, 0xff121212L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    if-eqz v9, :cond_4

    .line 67
    .line 68
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v12

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    move-wide/from16 v12, p8

    .line 74
    .line 75
    :goto_4
    and-int/lit8 v9, v0, 0x20

    .line 76
    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    goto :goto_5

    .line 84
    :cond_5
    move-wide/from16 v9, p10

    .line 85
    .line 86
    :goto_5
    and-int/lit8 v11, v0, 0x40

    .line 87
    .line 88
    if-eqz v11, :cond_6

    .line 89
    .line 90
    const-wide v14, 0xffcf6679L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v14

    .line 99
    goto :goto_6

    .line 100
    :cond_6
    move-wide/from16 v14, p12

    .line 101
    .line 102
    :goto_6
    and-int/lit16 v11, v0, 0x80

    .line 103
    .line 104
    if-eqz v11, :cond_7

    .line 105
    .line 106
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 107
    .line 108
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 109
    .line 110
    .line 111
    move-result-wide v16

    .line 112
    goto :goto_7

    .line 113
    :cond_7
    move-wide/from16 v16, p14

    .line 114
    .line 115
    :goto_7
    and-int/lit16 v11, v0, 0x100

    .line 116
    .line 117
    if-eqz v11, :cond_8

    .line 118
    .line 119
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 120
    .line 121
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 122
    .line 123
    .line 124
    move-result-wide v18

    .line 125
    goto :goto_8

    .line 126
    :cond_8
    move-wide/from16 v18, p16

    .line 127
    .line 128
    :goto_8
    and-int/lit16 v11, v0, 0x200

    .line 129
    .line 130
    if-eqz v11, :cond_9

    .line 131
    .line 132
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 133
    .line 134
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 135
    .line 136
    .line 137
    move-result-wide v20

    .line 138
    goto :goto_9

    .line 139
    :cond_9
    move-wide/from16 v20, p18

    .line 140
    .line 141
    :goto_9
    and-int/lit16 v11, v0, 0x400

    .line 142
    .line 143
    if-eqz v11, :cond_a

    .line 144
    .line 145
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 146
    .line 147
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 148
    .line 149
    .line 150
    move-result-wide v22

    .line 151
    goto :goto_a

    .line 152
    :cond_a
    move-wide/from16 v22, p20

    .line 153
    .line 154
    :goto_a
    and-int/lit16 v0, v0, 0x800

    .line 155
    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 161
    .line 162
    .line 163
    move-result-wide v24

    .line 164
    goto :goto_b

    .line 165
    :cond_b
    move-wide/from16 v24, p22

    .line 166
    .line 167
    :goto_b
    move-wide/from16 p0, v1

    .line 168
    .line 169
    move-wide/from16 p2, v3

    .line 170
    .line 171
    move-wide/from16 p4, v5

    .line 172
    .line 173
    move-wide/from16 p6, v7

    .line 174
    .line 175
    move-wide/from16 p8, v12

    .line 176
    .line 177
    move-wide/from16 p10, v9

    .line 178
    .line 179
    move-wide/from16 p12, v14

    .line 180
    .line 181
    move-wide/from16 p14, v16

    .line 182
    .line 183
    move-wide/from16 p16, v18

    .line 184
    .line 185
    move-wide/from16 p18, v20

    .line 186
    .line 187
    move-wide/from16 p20, v22

    .line 188
    .line 189
    move-wide/from16 p22, v24

    .line 190
    .line 191
    invoke-static/range {p0 .. p23}, Landroidx/compose/material/ColorsKt;->darkColors-2qZNXz8(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    return-object v0
.end method

.method public static final getLocalColors()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/Colors;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getPrimarySurface(Landroidx/compose/material/Colors;)J
    .locals 2
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->isLight()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :goto_0
    return-wide v0
.end method

.method public static final lightColors-2qZNXz8(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;
    .locals 28
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v3, p2

    .line 4
    .line 5
    move-wide/from16 v5, p4

    .line 6
    .line 7
    move-wide/from16 v7, p6

    .line 8
    .line 9
    move-wide/from16 v9, p8

    .line 10
    .line 11
    move-wide/from16 v11, p10

    .line 12
    .line 13
    move-wide/from16 v13, p12

    .line 14
    .line 15
    move-wide/from16 v15, p14

    .line 16
    .line 17
    move-wide/from16 v17, p16

    .line 18
    .line 19
    move-wide/from16 v19, p18

    .line 20
    .line 21
    move-wide/from16 v21, p20

    .line 22
    .line 23
    move-wide/from16 v23, p22

    .line 24
    .line 25
    new-instance v27, Landroidx/compose/material/Colors;

    .line 26
    .line 27
    move-object/from16 v0, v27

    .line 28
    .line 29
    const/16 v25, 0x1

    .line 30
    .line 31
    const/16 v26, 0x0

    .line 32
    .line 33
    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/Colors;-><init>(JJJJJJJJJJJJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    return-object v27
.end method

.method public static synthetic lightColors-2qZNXz8$default(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/Colors;
    .locals 19

    .line 1
    move/from16 v0, p24

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-wide v1, 0xff6200eeL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide/from16 v1, p0

    .line 18
    .line 19
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    const-wide v3, 0xff3700b3L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-wide/from16 v3, p2

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    const-wide v5, 0xff03dac6L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move-wide/from16 v5, p4

    .line 50
    .line 51
    :goto_2
    and-int/lit8 v7, v0, 0x8

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    const-wide v7, 0xff018786L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move-wide/from16 v7, p6

    .line 66
    .line 67
    :goto_3
    and-int/lit8 v9, v0, 0x10

    .line 68
    .line 69
    if-eqz v9, :cond_4

    .line 70
    .line 71
    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 72
    .line 73
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move-wide/from16 v9, p8

    .line 79
    .line 80
    :goto_4
    and-int/lit8 v11, v0, 0x20

    .line 81
    .line 82
    if-eqz v11, :cond_5

    .line 83
    .line 84
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 85
    .line 86
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 87
    .line 88
    .line 89
    move-result-wide v11

    .line 90
    goto :goto_5

    .line 91
    :cond_5
    move-wide/from16 v11, p10

    .line 92
    .line 93
    :goto_5
    and-int/lit8 v13, v0, 0x40

    .line 94
    .line 95
    if-eqz v13, :cond_6

    .line 96
    .line 97
    const-wide v13, 0xffb00020L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v13

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    move-wide/from16 v13, p12

    .line 108
    .line 109
    :goto_6
    and-int/lit16 v15, v0, 0x80

    .line 110
    .line 111
    if-eqz v15, :cond_7

    .line 112
    .line 113
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 114
    .line 115
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 116
    .line 117
    .line 118
    move-result-wide v15

    .line 119
    goto :goto_7

    .line 120
    :cond_7
    move-wide/from16 v15, p14

    .line 121
    .line 122
    :goto_7
    move-wide/from16 p14, v15

    .line 123
    .line 124
    and-int/lit16 v15, v0, 0x100

    .line 125
    .line 126
    if-eqz v15, :cond_8

    .line 127
    .line 128
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 129
    .line 130
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 131
    .line 132
    .line 133
    move-result-wide v15

    .line 134
    goto :goto_8

    .line 135
    :cond_8
    move-wide/from16 v15, p16

    .line 136
    .line 137
    :goto_8
    move-wide/from16 p16, v15

    .line 138
    .line 139
    and-int/lit16 v15, v0, 0x200

    .line 140
    .line 141
    if-eqz v15, :cond_9

    .line 142
    .line 143
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 144
    .line 145
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 146
    .line 147
    .line 148
    move-result-wide v15

    .line 149
    goto :goto_9

    .line 150
    :cond_9
    move-wide/from16 v15, p18

    .line 151
    .line 152
    :goto_9
    move-wide/from16 p18, v15

    .line 153
    .line 154
    and-int/lit16 v15, v0, 0x400

    .line 155
    .line 156
    if-eqz v15, :cond_a

    .line 157
    .line 158
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 159
    .line 160
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 161
    .line 162
    .line 163
    move-result-wide v15

    .line 164
    goto :goto_a

    .line 165
    :cond_a
    move-wide/from16 v15, p20

    .line 166
    .line 167
    :goto_a
    and-int/lit16 v0, v0, 0x800

    .line 168
    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 174
    .line 175
    .line 176
    move-result-wide v17

    .line 177
    goto :goto_b

    .line 178
    :cond_b
    move-wide/from16 v17, p22

    .line 179
    .line 180
    :goto_b
    move-wide/from16 p0, v1

    .line 181
    .line 182
    move-wide/from16 p2, v3

    .line 183
    .line 184
    move-wide/from16 p4, v5

    .line 185
    .line 186
    move-wide/from16 p6, v7

    .line 187
    .line 188
    move-wide/from16 p8, v9

    .line 189
    .line 190
    move-wide/from16 p10, v11

    .line 191
    .line 192
    move-wide/from16 p12, v13

    .line 193
    .line 194
    move-wide/from16 p20, v15

    .line 195
    .line 196
    move-wide/from16 p22, v17

    .line 197
    .line 198
    invoke-static/range {p0 .. p23}, Landroidx/compose/material/ColorsKt;->lightColors-2qZNXz8(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0
.end method

.method public static final updateColorsFrom(Landroidx/compose/material/Colors;Landroidx/compose/material/Colors;)V
    .locals 2
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setPrimary-8_81llA$material_release(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getPrimaryVariant-0d7_KjU()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setPrimaryVariant-8_81llA$material_release(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getSecondary-0d7_KjU()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setSecondary-8_81llA$material_release(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getSecondaryVariant-0d7_KjU()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setSecondaryVariant-8_81llA$material_release(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getBackground-0d7_KjU()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setBackground-8_81llA$material_release(J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setSurface-8_81llA$material_release(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setError-8_81llA$material_release(J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getOnPrimary-0d7_KjU()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setOnPrimary-8_81llA$material_release(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getOnSecondary-0d7_KjU()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setOnSecondary-8_81llA$material_release(J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getOnBackground-0d7_KjU()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setOnBackground-8_81llA$material_release(J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setOnSurface-8_81llA$material_release(J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->getOnError-0d7_KjU()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->setOnError-8_81llA$material_release(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->isLight()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Landroidx/compose/material/Colors;->setLight$material_release(Z)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
