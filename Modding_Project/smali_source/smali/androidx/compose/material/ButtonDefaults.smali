.class public final Landroidx/compose/material/ButtonDefaults;
.super Ljava/lang/Object;
.source "Button.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field private static final ButtonHorizontalPadding:F

.field private static final ButtonVerticalPadding:F

.field private static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/material/ButtonDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IconSize:F

.field private static final IconSpacing:F

.field private static final MinHeight:F

.field private static final MinWidth:F

.field public static final OutlinedBorderOpacity:F = 0.12f

.field private static final OutlinedBorderSize:F

.field private static final TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TextButtonHorizontalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/material/ButtonDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/ButtonDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Landroidx/compose/material/ButtonDefaults;->ButtonHorizontalPadding:F

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sput v2, Landroidx/compose/material/ButtonDefaults;->ButtonVerticalPadding:F

    .line 25
    .line 26
    invoke-static {v0, v2, v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Landroidx/compose/material/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 31
    .line 32
    const/16 v2, 0x40

    .line 33
    .line 34
    int-to-float v2, v2

    .line 35
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sput v2, Landroidx/compose/material/ButtonDefaults;->MinWidth:F

    .line 40
    .line 41
    const/16 v2, 0x24

    .line 42
    .line 43
    int-to-float v2, v2

    .line 44
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    sput v2, Landroidx/compose/material/ButtonDefaults;->MinHeight:F

    .line 49
    .line 50
    const/16 v2, 0x12

    .line 51
    .line 52
    int-to-float v2, v2

    .line 53
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sput v2, Landroidx/compose/material/ButtonDefaults;->IconSize:F

    .line 58
    .line 59
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    sput v2, Landroidx/compose/material/ButtonDefaults;->IconSpacing:F

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    int-to-float v2, v2

    .line 67
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    sput v2, Landroidx/compose/material/ButtonDefaults;->OutlinedBorderSize:F

    .line 72
    .line 73
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sput v1, Landroidx/compose/material/ButtonDefaults;->TextButtonHorizontalPadding:F

    .line 78
    .line 79
    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {v1, v2, v1, v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Landroidx/compose/material/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 92
    .line 93
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
.method public final buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;
    .locals 18
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    const v1, 0x6f7b993e

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p11, 0x1

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
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

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
    and-int/lit8 v1, p11, 0x2

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    and-int/lit8 v1, p10, 0xe

    .line 33
    .line 34
    invoke-static {v6, v7, v0, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    move-wide v8, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-wide/from16 v8, p3

    .line 41
    .line 42
    :goto_1
    and-int/lit8 v1, p11, 0x4

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 53
    .line 54
    .line 55
    move-result-wide v10

    .line 56
    const/16 v16, 0xe

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const v12, 0x3df5c28f    # 0.12f

    .line 61
    .line 62
    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v14, 0x0

    .line 65
    const/4 v15, 0x0

    .line 66
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    move-wide v10, v3

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move-wide/from16 v10, p5

    .line 85
    .line 86
    :goto_2
    and-int/lit8 v1, p11, 0x8

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/16 v2, 0xe

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    const/4 v12, 0x0

    .line 110
    const/4 v13, 0x0

    .line 111
    const/4 v14, 0x0

    .line 112
    move-wide/from16 p1, v3

    .line 113
    .line 114
    move/from16 p3, v1

    .line 115
    .line 116
    move/from16 p4, v12

    .line 117
    .line 118
    move/from16 p5, v13

    .line 119
    .line 120
    move/from16 p6, v14

    .line 121
    .line 122
    move/from16 p7, v2

    .line 123
    .line 124
    move-object/from16 p8, v5

    .line 125
    .line 126
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    move-wide v12, v1

    .line 131
    goto :goto_3

    .line 132
    :cond_3
    move-wide/from16 v12, p7

    .line 133
    .line 134
    :goto_3
    new-instance v1, Landroidx/compose/material/DefaultButtonColors;

    .line 135
    .line 136
    const/4 v14, 0x0

    .line 137
    move-object v5, v1

    .line 138
    invoke-direct/range {v5 .. v14}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    .line 140
    .line 141
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 142
    .line 143
    .line 144
    return-object v1
.end method

.method public final elevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonElevation;
    .locals 7
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p7, -0x2bf05456

    .line 2
    .line 3
    .line 4
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 p7, p8, 0x1

    .line 8
    .line 9
    if-eqz p7, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    int-to-float p1, p1

    .line 13
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_0
    move v1, p1

    .line 18
    and-int/lit8 p1, p8, 0x2

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    :cond_1
    move v2, p2

    .line 30
    and-int/lit8 p1, p8, 0x4

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    int-to-float p1, p2

    .line 36
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    :cond_2
    move v3, p3

    .line 41
    and-int/lit8 p1, p8, 0x8

    .line 42
    .line 43
    const/4 p3, 0x4

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    int-to-float p1, p3

    .line 47
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    :cond_3
    move v4, p4

    .line 52
    and-int/lit8 p1, p8, 0x10

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    int-to-float p1, p3

    .line 57
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 58
    .line 59
    .line 60
    move-result p5

    .line 61
    :cond_4
    move v5, p5

    .line 62
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 75
    .line 76
    .line 77
    move-result-object p5

    .line 78
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 79
    .line 80
    .line 81
    move-result-object p7

    .line 82
    filled-new-array {p1, p3, p4, p5, p7}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const p3, -0x21de6e89

    .line 87
    .line 88
    .line 89
    invoke-interface {p6, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 90
    .line 91
    .line 92
    move p3, p2

    .line 93
    :goto_0
    const/4 p4, 0x5

    .line 94
    if-ge p2, p4, :cond_5

    .line 95
    .line 96
    aget-object p4, p1, p2

    .line 97
    .line 98
    invoke-interface {p6, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    or-int/2addr p3, p4

    .line 103
    add-int/lit8 p2, p2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-nez p3, :cond_6

    .line 111
    .line 112
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-ne p1, p2, :cond_7

    .line 119
    .line 120
    :cond_6
    new-instance p1, Landroidx/compose/material/DefaultButtonElevation;

    .line 121
    .line 122
    const/4 v6, 0x0

    .line 123
    move-object v0, p1

    .line 124
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/DefaultButtonElevation;-><init>(FFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p6, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 131
    .line 132
    .line 133
    check-cast p1, Landroidx/compose/material/DefaultButtonElevation;

    .line 134
    .line 135
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 136
    .line 137
    .line 138
    return-object p1
.end method

.method public final synthetic elevation-yajeYGU(FFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonElevation;
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const v0, 0x55265a6a

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    int-to-float p1, p1

    .line 13
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_0
    move v1, p1

    .line 18
    and-int/lit8 p1, p6, 0x2

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    :cond_1
    move v2, p2

    .line 30
    const/4 p1, 0x4

    .line 31
    and-int/lit8 p2, p6, 0x4

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    int-to-float p2, p2

    .line 37
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    :cond_2
    move v3, p3

    .line 42
    int-to-float p1, p1

    .line 43
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    and-int/lit8 p1, p5, 0xe

    .line 52
    .line 53
    or-int/lit16 p1, p1, 0x6c00

    .line 54
    .line 55
    and-int/lit8 p2, p5, 0x70

    .line 56
    .line 57
    or-int/2addr p1, p2

    .line 58
    and-int/lit16 p2, p5, 0x380

    .line 59
    .line 60
    or-int/2addr p1, p2

    .line 61
    shl-int/lit8 p2, p5, 0x6

    .line 62
    .line 63
    const/high16 p3, 0x70000

    .line 64
    .line 65
    and-int/2addr p2, p3

    .line 66
    or-int v7, p1, p2

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    move-object v0, p0

    .line 70
    move-object v6, p4

    .line 71
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material/ButtonDefaults;->elevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonElevation;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 76
    .line 77
    .line 78
    return-object p1
.end method

.method public final getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ButtonDefaults;->IconSize:F

    .line 2
    .line 3
    return v0
.end method

.method public final getIconSpacing-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ButtonDefaults;->IconSpacing:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMinHeight-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ButtonDefaults;->MinHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMinWidth-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ButtonDefaults;->MinWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public final getOutlinedBorder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/BorderStroke;
    .locals 9
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p2, -0x7ca6e789

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget p2, Landroidx/compose/material/ButtonDefaults;->OutlinedBorderSize:F

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0, p1, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const/16 v7, 0xe

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const v3, 0x3df5c28f    # 0.12f

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {p2, v0, v1}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method public final getOutlinedBorderSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ButtonDefaults;->OutlinedBorderSize:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTextButtonContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 2
    .line 3
    return-object v0
.end method

.method public final outlinedButtonColors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;
    .locals 20
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
    const v1, -0x7e9fdd4d

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
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    move-wide v10, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-wide/from16 v10, p1

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
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    move-wide v8, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-wide/from16 v8, p3

    .line 45
    .line 46
    :goto_1
    and-int/lit8 v1, p9, 0x4

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 57
    .line 58
    .line 59
    move-result-wide v12

    .line 60
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    const/16 v18, 0xe

    .line 67
    .line 68
    const/16 v19, 0x0

    .line 69
    .line 70
    const/4 v15, 0x0

    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    const/16 v17, 0x0

    .line 74
    .line 75
    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    move-wide v12, v1

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move-wide/from16 v12, p5

    .line 82
    .line 83
    :goto_2
    new-instance v1, Landroidx/compose/material/DefaultButtonColors;

    .line 84
    .line 85
    const/4 v14, 0x0

    .line 86
    move-object v5, v1

    .line 87
    move-wide v6, v10

    .line 88
    invoke-direct/range {v5 .. v14}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    .line 90
    .line 91
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 92
    .line 93
    .line 94
    return-object v1
.end method

.method public final textButtonColors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;
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
    const v1, 0xae46cc8

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
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    move-wide v8, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-wide/from16 v8, p1

    .line 22
    .line 23
    :goto_0
    and-int/lit8 v1, p9, 0x2

    .line 24
    .line 25
    const/4 v2, 0x6

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    move-wide v6, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-wide/from16 v6, p3

    .line 41
    .line 42
    :goto_1
    and-int/lit8 v1, p9, 0x4

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 53
    .line 54
    .line 55
    move-result-wide v10

    .line 56
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    const/16 v16, 0xe

    .line 63
    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    const/4 v13, 0x0

    .line 67
    const/4 v14, 0x0

    .line 68
    const/4 v15, 0x0

    .line 69
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    move-wide v10, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-wide/from16 v10, p5

    .line 76
    .line 77
    :goto_2
    new-instance v1, Landroidx/compose/material/DefaultButtonColors;

    .line 78
    .line 79
    const/4 v12, 0x0

    .line 80
    move-object v3, v1

    .line 81
    move-wide v4, v8

    .line 82
    invoke-direct/range {v3 .. v12}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 86
    .line 87
    .line 88
    return-object v1
.end method
