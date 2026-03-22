.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)Lat/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/q<",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/compose/ui/Alignment;

.field public final synthetic b:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h$g;->a:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h$g;->b:Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 12
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v7, p5

    .line 8
    .line 9
    move/from16 v5, p6

    .line 10
    .line 11
    const-string v6, "<this>"

    .line 12
    .line 13
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v6, "onDisplayed"

    .line 17
    .line 18
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v6, "onClick"

    .line 22
    .line 23
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    and-int/lit8 v6, v5, 0x6

    .line 27
    .line 28
    if-nez v6, :cond_1

    .line 29
    .line 30
    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v6, 0x2

    .line 39
    :goto_0
    or-int/2addr v6, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v6, v5

    .line 42
    :goto_1
    and-int/lit8 v8, v5, 0x30

    .line 43
    .line 44
    if-nez v8, :cond_3

    .line 45
    .line 46
    invoke-interface {v7, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    const/16 v8, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v8, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v6, v8

    .line 58
    :cond_3
    and-int/lit16 v8, v5, 0x180

    .line 59
    .line 60
    if-nez v8, :cond_5

    .line 61
    .line 62
    invoke-interface {v7, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_4

    .line 67
    .line 68
    const/16 v8, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v8, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v6, v8

    .line 74
    :cond_5
    and-int/lit16 v5, v5, 0xc00

    .line 75
    .line 76
    if-nez v5, :cond_7

    .line 77
    .line 78
    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_6

    .line 83
    .line 84
    const/16 v5, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    const/16 v5, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v6, v5

    .line 90
    :cond_7
    and-int/lit16 v5, v6, 0x2493

    .line 91
    .line 92
    const/16 v8, 0x2492

    .line 93
    .line 94
    if-ne v5, v8, :cond_9

    .line 95
    .line 96
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_8

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 104
    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_9
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_a

    .line 112
    .line 113
    const/4 v5, -0x1

    .line 114
    const-string v8, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastIcon.<anonymous> (Linear.kt:149)"

    .line 115
    .line 116
    const v9, -0x35dc88d0    # -2678220.0f

    .line 117
    .line 118
    .line 119
    invoke-static {v9, v6, v5, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_a
    const/4 v5, 0x1

    .line 123
    if-eqz v2, :cond_b

    .line 124
    .line 125
    move v6, v5

    .line 126
    goto :goto_6

    .line 127
    :cond_b
    const/4 v6, 0x0

    .line 128
    :goto_6
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 129
    .line 130
    iget-object v9, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h$g;->a:Landroidx/compose/ui/Alignment;

    .line 131
    .line 132
    invoke-interface {p1, v8, v9}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v8, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h$g;->b:Landroidx/compose/foundation/layout/PaddingValues;

    .line 137
    .line 138
    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h$g$a;

    .line 143
    .line 144
    invoke-direct {v1, p2, p3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h$g$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 145
    .line 146
    .line 147
    const v2, 0x3afe2408

    .line 148
    .line 149
    .line 150
    invoke-static {v7, v2, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    const/high16 v10, 0x30000

    .line 155
    .line 156
    const/16 v11, 0x1c

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    const/4 v4, 0x0

    .line 160
    const/4 v5, 0x0

    .line 161
    move v1, v6

    .line 162
    move-object v2, v8

    .line 163
    move-object v6, v9

    .line 164
    move-object/from16 v7, p5

    .line 165
    .line 166
    move v8, v10

    .line 167
    move v9, v11

    .line 168
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_c

    .line 176
    .line 177
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 178
    .line 179
    .line 180
    :cond_c
    :goto_7
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 3
    .line 4
    move-object v2, p2

    .line 5
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;

    .line 6
    .line 7
    move-object v3, p3

    .line 8
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    move-object v4, p4

    .line 11
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    move-object v5, p5

    .line 14
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    check-cast p6, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    move-object v0, p0

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h$g;->a(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method
