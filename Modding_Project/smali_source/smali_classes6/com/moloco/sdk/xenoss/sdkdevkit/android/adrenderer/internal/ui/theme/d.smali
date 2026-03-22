.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/compose/material/Colors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Landroidx/compose/material/Colors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 53

    .line 1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/a;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/a;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sget-object v26, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 10
    .line 11
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    const/16 v24, 0xff8

    .line 16
    .line 17
    const/16 v25, 0x0

    .line 18
    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    const-wide/16 v8, 0x0

    .line 22
    .line 23
    const-wide/16 v10, 0x0

    .line 24
    .line 25
    const-wide/16 v12, 0x0

    .line 26
    .line 27
    const-wide/16 v14, 0x0

    .line 28
    .line 29
    const-wide/16 v16, 0x0

    .line 30
    .line 31
    const-wide/16 v18, 0x0

    .line 32
    .line 33
    const-wide/16 v20, 0x0

    .line 34
    .line 35
    const-wide/16 v22, 0x0

    .line 36
    .line 37
    invoke-static/range {v0 .. v25}, Landroidx/compose/material/ColorsKt;->darkColors-2qZNXz8$default(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/Colors;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/d;->a:Landroidx/compose/material/Colors;

    .line 42
    .line 43
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/a;->a()J

    .line 44
    .line 45
    .line 46
    move-result-wide v27

    .line 47
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/a;->a()J

    .line 48
    .line 49
    .line 50
    move-result-wide v29

    .line 51
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 52
    .line 53
    .line 54
    move-result-wide v31

    .line 55
    const/16 v51, 0xff8

    .line 56
    .line 57
    const/16 v52, 0x0

    .line 58
    .line 59
    const-wide/16 v33, 0x0

    .line 60
    .line 61
    const-wide/16 v35, 0x0

    .line 62
    .line 63
    const-wide/16 v37, 0x0

    .line 64
    .line 65
    const-wide/16 v39, 0x0

    .line 66
    .line 67
    const-wide/16 v41, 0x0

    .line 68
    .line 69
    const-wide/16 v43, 0x0

    .line 70
    .line 71
    const-wide/16 v45, 0x0

    .line 72
    .line 73
    const-wide/16 v47, 0x0

    .line 74
    .line 75
    const-wide/16 v49, 0x0

    .line 76
    .line 77
    invoke-static/range {v27 .. v52}, Landroidx/compose/material/ColorsKt;->lightColors-2qZNXz8$default(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/Colors;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/d;->b:Landroidx/compose/material/Colors;

    .line 82
    .line 83
    return-void
.end method

.method public static final a(ZLkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p4, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/d;->b(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final b(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x9596733

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    and-int/lit8 v1, p3, 0x6

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    and-int/lit8 v1, p4, 0x1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int/2addr v1, p3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, p3

    .line 33
    :goto_1
    and-int/lit8 v2, p4, 0x2

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    or-int/lit8 v1, v1, 0x30

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_2
    and-int/lit8 v2, p3, 0x30

    .line 41
    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    const/16 v2, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/16 v2, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v1, v2

    .line 56
    :cond_4
    :goto_3
    and-int/lit8 v2, v1, 0x13

    .line 57
    .line 58
    const/16 v3, 0x12

    .line 59
    .line 60
    if-ne v2, v3, :cond_6

    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_5

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 70
    .line 71
    .line 72
    goto :goto_9

    .line 73
    :cond_6
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 74
    .line 75
    .line 76
    and-int/lit8 v2, p3, 0x1

    .line 77
    .line 78
    if-eqz v2, :cond_8

    .line 79
    .line 80
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 88
    .line 89
    .line 90
    and-int/lit8 v2, p4, 0x1

    .line 91
    .line 92
    if-eqz v2, :cond_9

    .line 93
    .line 94
    :goto_5
    and-int/lit8 v1, v1, -0xf

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_8
    :goto_6
    and-int/lit8 v2, p4, 0x1

    .line 98
    .line 99
    if-eqz v2, :cond_9

    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    invoke-static {p2, p0}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;I)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    goto :goto_5

    .line 107
    :cond_9
    :goto_7
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_a

    .line 115
    .line 116
    const/4 v2, -0x1

    .line 117
    const-string v3, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.Theme (Theme.kt:31)"

    .line 118
    .line 119
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_a
    if-eqz p0, :cond_b

    .line 123
    .line 124
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/d;->a:Landroidx/compose/material/Colors;

    .line 125
    .line 126
    goto :goto_8

    .line 127
    :cond_b
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/d;->b:Landroidx/compose/material/Colors;

    .line 128
    .line 129
    :goto_8
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/e;->a()Landroidx/compose/material/Typography;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/b;->a()Landroidx/compose/material/Shapes;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    shl-int/lit8 v1, v1, 0x6

    .line 138
    .line 139
    and-int/lit16 v1, v1, 0x1c00

    .line 140
    .line 141
    or-int/lit16 v6, v1, 0x1b0

    .line 142
    .line 143
    const/4 v7, 0x0

    .line 144
    move-object v1, v0

    .line 145
    move-object v4, p1

    .line 146
    move-object v5, p2

    .line 147
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_c

    .line 155
    .line 156
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 157
    .line 158
    .line 159
    :cond_c
    :goto_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    if-eqz p2, :cond_d

    .line 164
    .line 165
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/c;

    .line 166
    .line 167
    invoke-direct {v0, p0, p1, p3, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/c;-><init>(ZLkotlin/jvm/functions/Function2;II)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 171
    .line 172
    .line 173
    :cond_d
    return-void
.end method
