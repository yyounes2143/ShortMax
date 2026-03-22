.class public final Lcom/moloco/sdk/internal/publisher/nativead/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;I)Lat/r;
    .locals 17
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lat/r<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    const v0, -0x3f53ef0f

    .line 4
    .line 5
    .line 6
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const-string v2, "com.moloco.sdk.internal.publisher.nativead.ui.nativeVideoMuteButton (NativeVideoMuteButton.kt:11)"

    .line 17
    .line 18
    move/from16 v3, p1

    .line 19
    .line 20
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 26
    .line 27
    .line 28
    move-result-wide v9

    .line 29
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    sget v0, Lcom/moloco/sdk/o;->j:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {v0, v14, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    sget v0, Lcom/moloco/sdk/o;->k:I

    .line 43
    .line 44
    invoke-static {v0, v14, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    const v15, 0x186000

    .line 49
    .line 50
    .line 51
    const/16 v16, 0x22f

    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    const-wide/16 v5, 0x0

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v13, 0x0

    .line 62
    move-object/from16 v14, p0

    .line 63
    .line 64
    invoke-static/range {v0 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->c(JJLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLandroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lat/r;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method
