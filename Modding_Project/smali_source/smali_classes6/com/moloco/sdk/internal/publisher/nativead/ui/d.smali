.class public final Lcom/moloco/sdk/internal/publisher/nativead/ui/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/nativead/ui/d$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/moloco/sdk/internal/publisher/nativead/ui/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I


# instance fields
.field public final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroidx/compose/ui/platform/ComposeView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->d:Lcom/moloco/sdk/internal/publisher/nativead/ui/d$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->e:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;",
            "Lcom/moloco/sdk/internal/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "vastAdController"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "viewVisibilityTracker"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "viewLifecycleOwner"

    .line 19
    .line 20
    .line 21
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "watermark"

    .line 25
    .line 26
    .line 27
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->b:Lcom/moloco/sdk/internal/a;

    .line 36
    .line 37
    new-instance p2, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;

    .line 38
    .line 39
    invoke-direct {p2, p5, p0, p6, p3}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/nativead/ui/d;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;)V

    .line 40
    .line 41
    .line 42
    const p3, 0x6f487f35

    .line 43
    .line 44
    .line 45
    const/4 p4, 0x1

    .line 46
    invoke-static {p3, p4, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/ui/e;->a(Landroid/content/Context;Lat/n;)Landroidx/compose/ui/platform/ComposeView;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    const/4 p3, -0x1

    .line 57
    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->c:Landroidx/compose/ui/platform/ComposeView;

    .line 64
    .line 65
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/publisher/nativead/ui/d;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic getVideoView$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/t;->destroy()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->c:Landroidx/compose/ui/platform/ComposeView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->c:Landroidx/compose/ui/platform/ComposeView;

    .line 13
    .line 14
    return-void
.end method

.method public final getVideoView()Landroidx/compose/ui/platform/ComposeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->c:Landroidx/compose/ui/platform/ComposeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 5
    .line 6
    const/16 v5, 0xc

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const-string v1, "VideoContainer"

    .line 10
    .line 11
    const-string v2, "onAttachedToWindow"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->b:Lcom/moloco/sdk/internal/a;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lcom/moloco/sdk/internal/a;->a(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 5
    .line 6
    const/16 v5, 0xc

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const-string v1, "VideoContainer"

    .line 10
    .line 11
    const-string v2, "onDetachedFromWindow"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->b:Lcom/moloco/sdk/internal/a;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lcom/moloco/sdk/internal/a;->b(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->b:Lcom/moloco/sdk/internal/a;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/moloco/sdk/internal/a;->c(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->b:Lcom/moloco/sdk/internal/a;

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lcom/moloco/sdk/internal/a;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final setVideoView(Landroidx/compose/ui/platform/ComposeView;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/platform/ComposeView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->c:Landroidx/compose/ui/platform/ComposeView;

    .line 2
    .line 3
    return-void
.end method
