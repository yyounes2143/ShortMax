.class public final Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/ui/d;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/n<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

.field public final synthetic b:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/nativead/ui/d;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lcom/moloco/sdk/internal/publisher/nativead/ui/d;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->b:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    const-string v0, "modifier"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v0, p3, 0x6

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    :goto_0
    or-int/2addr p3, v0

    .line 20
    :cond_1
    and-int/lit8 v0, p3, 0x13

    .line 21
    .line 22
    const/16 v1, 0x12

    .line 23
    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    const/4 v0, -0x1

    .line 44
    const-string v1, "com.moloco.sdk.internal.publisher.nativead.ui.NativeAdVideoContainer.videoView.<anonymous> (NativeAdVideoContainer.kt:56)"

    .line 45
    .line 46
    const v2, 0x6f487f35

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 53
    .line 54
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->b:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->c:Lkotlin/jvm/functions/Function0;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;

    .line 61
    .line 62
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b$a;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/ui/d;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;)V

    .line 63
    .line 64
    .line 65
    const p1, 0x3dbdba72

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-static {p2, p1, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v0, 0x6

    .line 74
    invoke-interface {p3, p1, p2, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
