.class Lio/bidmachine/s0$b;
.super Ljava/lang/Object;
.source "AdResponseLoader.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$b;
.implements Lio/bidmachine/core/NetworkRequest$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$b<",
        "Lcom/explorestack/protobuf/openrtb/Response;",
        "Lfr/a;",
        ">;",
        "Lio/bidmachine/core/NetworkRequest$c;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/AdRequestParameters;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/NetworkAdUnitManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/s0$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lio/bidmachine/s0$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/NetworkAdUnitManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/s0$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/s0$b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/s0$b;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/s0$b;->c:Lio/bidmachine/AdRequestParameters;

    .line 9
    .line 10
    iput-object p4, p0, Lio/bidmachine/s0$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 11
    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lio/bidmachine/s0$b;->e:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lio/bidmachine/s0$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lio/bidmachine/s0$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    return-void
.end method

.method static synthetic b(Lio/bidmachine/s0$b;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/s0$b;->f()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lio/bidmachine/s0$b;)Lio/bidmachine/NetworkAdUnitManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/s0$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/bidmachine/s0$b;Lio/bidmachine/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/s0$b;->m(Lio/bidmachine/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lio/bidmachine/s0$b;Lfr/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/s0$b;->l(Lfr/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/s0$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/s0$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/s0$b;->e:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method private j()Lio/bidmachine/s0$a;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/s0$b;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lio/bidmachine/s0$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/s0$b;->e:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lio/bidmachine/s0$a;

    .line 22
    .line 23
    return-object v0
.end method

.method private k()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/s0$b;->j()Lio/bidmachine/s0$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lio/bidmachine/s0$a;->onCancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/s0$b;->g()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private l(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/s0$b;->j()Lio/bidmachine/s0$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lio/bidmachine/s0$a;->a(Lfr/a;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/s0$b;->g()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private m(Lio/bidmachine/u;)V
    .locals 1
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/s0$b;->j()Lio/bidmachine/s0$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lio/bidmachine/s0$a;->b(Lio/bidmachine/u;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lio/bidmachine/u;->Z(Lio/bidmachine/AdResponseStatus;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/s0$b;->g()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lfr/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/s0$b;->h(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/s0$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/s0$b;->e:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public h(Lfr/a;)V
    .locals 2
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/x4;->b()Lio/bidmachine/x4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/s0$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/x4;->c(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/s0$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkAuctionResult(Lio/bidmachine/NetworkAdUnit;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/s0$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lio/bidmachine/w0;->e()Lio/bidmachine/w0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lio/bidmachine/s0$b;->c:Lio/bidmachine/AdRequestParameters;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lio/bidmachine/w0;->m(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/u;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lio/bidmachine/s0$b;->m(Lio/bidmachine/u;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/s0$b;->l(Lfr/a;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public i(Lcom/explorestack/protobuf/openrtb/Response;)V
    .locals 3
    .param p1    # Lcom/explorestack/protobuf/openrtb/Response;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/x4;->b()Lio/bidmachine/x4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/s0$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/x4;->c(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/s0$b;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Lio/bidmachine/UrlProvider;->setAuctionUrlFromSuccessRequest(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/s0$b;->c:Lio/bidmachine/AdRequestParameters;

    .line 16
    .line 17
    iget-object v1, p0, Lio/bidmachine/s0$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 18
    .line 19
    new-instance v2, Lio/bidmachine/s0$b$a;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lio/bidmachine/s0$b$a;-><init>(Lio/bidmachine/s0$b;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, p1, v2}, Lio/bidmachine/a5;->a(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lio/bidmachine/a5$a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onCanceled()V
    .locals 2

    .line 1
    invoke-static {}, Lio/bidmachine/x4;->b()Lio/bidmachine/x4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/s0$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/x4;->c(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/s0$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lio/bidmachine/s0$b;->k()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/s0$b;->i(Lcom/explorestack/protobuf/openrtb/Response;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
