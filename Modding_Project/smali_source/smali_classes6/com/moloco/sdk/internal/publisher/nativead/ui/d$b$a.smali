.class public final Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/nativead/ui/d;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/ui/d;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->a:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->c:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    and-int/lit8 v2, v1, 0x3

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v2, v3, :cond_1

    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    const-string v3, "com.moloco.sdk.internal.publisher.nativead.ui.NativeAdVideoContainer.videoView.<anonymous>.<anonymous> (NativeAdVideoContainer.kt:57)"

    .line 31
    .line 32
    const v4, 0x3dbdba72

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->a:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->a(Lcom/moloco/sdk/internal/publisher/nativead/ui/d;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;

    .line 51
    .line 52
    move-object v9, v2

    .line 53
    iget-object v5, v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->b:Lkotlin/jvm/functions/Function0;

    .line 54
    .line 55
    invoke-direct {v2, v5, v5, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-static {v14, v2}, Lcom/moloco/sdk/internal/publisher/nativead/ui/h;->a(Landroidx/compose/runtime/Composer;I)Lat/r;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {}, Lcom/moloco/sdk/internal/publisher/nativead/ui/i;->a()Lat/p;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const/4 v7, 0x6

    .line 68
    invoke-static {v6, v14, v7, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a0;->a(Lat/p;Landroidx/compose/runtime/Composer;II)Lat/r;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->c:Landroidx/compose/ui/Modifier;

    .line 73
    .line 74
    iget-object v13, v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;

    .line 75
    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const/16 v17, 0x200

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    const v15, 0x61b6180

    .line 86
    .line 87
    .line 88
    move-object/from16 v14, p1

    .line 89
    .line 90
    invoke-static/range {v1 .. v17}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroidx/compose/ui/Modifier;JLat/r;Lat/a;Lat/a;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lat/p;Lat/q;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Landroidx/compose/runtime/Composer;III)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;->a(Landroidx/compose/runtime/Composer;I)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method
