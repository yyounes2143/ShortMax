.class public final Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;->b(Landroidx/compose/foundation/layout/BoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/n<",
        "Ljava/lang/Boolean;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a$a;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ZLandroidx/compose/runtime/Composer;I)V
    .locals 19
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v14, p2

    .line 4
    .line 5
    and-int/lit8 v1, p3, 0x6

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x2

    .line 18
    :goto_0
    or-int v1, p3, v1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move/from16 v1, p3

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v2, v1, 0x13

    .line 24
    .line 25
    const/16 v3, 0x12

    .line 26
    .line 27
    if-ne v2, v3, :cond_3

    .line 28
    .line 29
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 37
    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    const/4 v2, -0x1

    .line 47
    const-string v3, "com.moloco.sdk.internal.publisher.nativead.ui.ComposableSingletons$NativeVideoPlaybackControlUIKt.lambda-1.<anonymous>.<anonymous> (NativeVideoPlaybackControlUI.kt:30)"

    .line 48
    .line 49
    const v4, 0x69e2c69a

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    if-eqz v0, :cond_5

    .line 56
    .line 57
    sget v0, Lcom/moloco/sdk/o;->h:I

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    sget v0, Lcom/moloco/sdk/o;->i:I

    .line 61
    .line 62
    :goto_3
    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v14, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object/from16 v12, p0

    .line 68
    .line 69
    iget-object v1, v12, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a$a;->a:Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    const v15, 0x36000

    .line 78
    .line 79
    .line 80
    const/16 v16, 0x3cc

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    const-string v4, "play/pause"

    .line 85
    .line 86
    const-wide/16 v7, 0x0

    .line 87
    .line 88
    const-wide/16 v9, 0x0

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    const-wide/16 v17, 0x0

    .line 92
    .line 93
    move-wide/from16 v12, v17

    .line 94
    .line 95
    move-object/from16 v14, p2

    .line 96
    .line 97
    invoke-static/range {v0 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e0;->b(Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLjava/lang/String;JJJLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/Composer;II)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_4
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 8
    .line 9
    check-cast p3, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a$a;->a(ZLandroidx/compose/runtime/Composer;I)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method
