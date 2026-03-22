.class public Lio/bidmachine/NetworkAdUnitManager;
.super Ljava/lang/Object;
.source "NetworkAdUnitManager.java"


# instance fields
.field private final isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final networkAdUnitList:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/bidmachine/NetworkAdUnitManager;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lfr/j;

    const-string v1, "NetworkAdUnitManager"

    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->tag:Lfr/j;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/NetworkAdUnitManager;->setNetworkAdUnitList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method findOrAddWinnerNetworkAdUnit(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkAdUnit;
    .locals 5
    .param p1    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/NetworkAdUnit;"
        }
    .end annotation

    .line 1
    const-string v0, "bm_ad_unit_id"

    .line 2
    .line 3
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lio/bidmachine/NetworkAdUnit;

    .line 33
    .line 34
    invoke-virtual {v3}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    move-object v2, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-nez v2, :cond_2

    .line 47
    .line 48
    new-instance v2, Lio/bidmachine/NetworkAdUnit;

    .line 49
    .line 50
    invoke-direct {v2, p1, p2, p3}, Lio/bidmachine/NetworkAdUnit;-><init>(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    return-object v2
.end method

.method getNetworkAdUnitList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method notifyNetworkAuctionResult(Lio/bidmachine/NetworkAdUnit;)V
    .locals 3
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->tag:Lfr/j;

    .line 13
    .line 14
    const-string v1, "notifyNetworkAuctionResult"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lio/bidmachine/NetworkAdUnit;

    .line 36
    .line 37
    if-ne v1, p1, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->onWinAuction()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->onLossAuction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method notifyNetworkClearAuction()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->tag:Lfr/j;

    .line 11
    .line 12
    const-string v1, "notifyNetworkClearAuction"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lio/bidmachine/NetworkAdUnit;

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->clearAuction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method setNetworkAdUnitList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/bidmachine/core/g;->I(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
