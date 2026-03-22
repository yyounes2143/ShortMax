.class public abstract Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/s;
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/t;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/s;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/t;"
    }
.end annotation


# instance fields
.field public final a:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgt/g0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->a:Lgt/g0;

    .line 15
    .line 16
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/j;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/j;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->d:Lms/i;

    .line 26
    .line 27
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->e:Lkt/e;

    .line 34
    .line 35
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/k;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/k;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->f:Lms/i;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic getAdView$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 1
    return-void
.end method

.method public static final i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;)Lkt/i;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->isLoaded()Lkt/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->e:Lkt/e;

    .line 6
    .line 7
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C$a;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C$a;-><init>(Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/c;->G(Lkt/b;Lkt/b;Lat/n;)Lkt/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->a:Lgt/g0;

    .line 18
    .line 19
    sget-object v1, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/flow/m$a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/m$a;->c()Lkotlinx/coroutines/flow/m;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/flow/c;->T(Lkt/b;Lgt/g0;Lkotlinx/coroutines/flow/m;Ljava/lang/Object;)Lkt/i;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static final j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;)Lkt/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;->isLoaded()Lkt/i;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->a:Lgt/g0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->setAdView(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Landroid/view/ViewGroup;

    .line 21
    .line 22
    :cond_0
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public abstract getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getAdShowListener()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract synthetic getCreativeType()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public h(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;)V
    .locals 8
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->a:Lgt/g0;

    .line 2
    .line 3
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C$b;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v1, v7

    .line 7
    move-object v2, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v3, v7

    .line 18
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public isLoaded()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkt/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public abstract k()V
.end method

.method public m()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkt/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "changedView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->e:Lkt/e;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p1, p2}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setAdShowListener(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->c:Landroid/view/View;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->c:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    instance-of v1, v0, Landroidx/compose/ui/platform/ComposeView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method
