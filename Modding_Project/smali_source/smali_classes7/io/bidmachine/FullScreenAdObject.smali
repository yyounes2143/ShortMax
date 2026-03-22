.class public final Lio/bidmachine/FullScreenAdObject;
.super Lio/bidmachine/AdObjectImpl;
.source "FullScreenAdObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/FullScreenAdObject$b;,
        Lio/bidmachine/FullScreenAdObject$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/FullScreenAdRequest<",
        "TAdRequestType;>;>",
        "Lio/bidmachine/AdObjectImpl<",
        "TAdRequestType;",
        "Llp/b;",
        "Lxq/h;",
        "Lxq/i;",
        "Lxq/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final thresholdTask:Lio/bidmachine/FullScreenAdObject$b;


# direct methods
.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/FullScreenAdRequest;Llp/b;Lxq/h;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/FullScreenAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Llp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lxq/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdProcessCallback;",
            "TAdRequestType;",
            "Llp/b;",
            "Lxq/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Llp/b;Lxq/b;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance p1, Lio/bidmachine/FullScreenAdObject$a;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lio/bidmachine/FullScreenAdObject$a;-><init>(Lio/bidmachine/FullScreenAdObject;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$b;

    .line 18
    .line 19
    return-void
.end method

.method private cancelImpressionThresholdTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/FullScreenAdObject$b;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private startImpressionThresholdTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getParams()Llp/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Llp/b;->e()Lio/bidmachine/core/i;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lio/bidmachine/core/i;->b()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/FullScreenAdObject$b;->d(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/c;
    .locals 0
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/FullScreenAdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/i;

    move-result-object p1

    return-object p1
.end method

.method public createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/i;
    .locals 1
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lio/bidmachine/FullScreenAdObject$c;

    invoke-direct {v0, p1}, Lio/bidmachine/FullScreenAdObject$c;-><init>(Lio/bidmachine/AdProcessCallback;)V

    return-object v0
.end method

.method public onClosed(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lio/bidmachine/AdObjectImpl;->onClosed(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onFinished()V
    .locals 0

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onFinished()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onImpression()V
    .locals 0

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onImpression()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onShowFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onShowFailed()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onShown()V
    .locals 0

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onShown()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->startImpressionThresholdTask()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/RendererConfiguration;)V
    .locals 2
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Fullscreen ad already showing, please wait until the ad closes"

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lxq/h;

    .line 26
    .line 27
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAdCallback()Lxq/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lxq/i;

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1, p2}, Lxq/h;->k(Lio/bidmachine/ContextProvider;Lxq/i;Lio/bidmachine/RendererConfiguration;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processFillAd()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
