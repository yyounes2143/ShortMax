.class public Lio/bidmachine/ExtraParamsManager;
.super Ljava/lang/Object;
.source "ExtraParamsManager.java"


# static fields
.field static final KEY_MRAID_JS:Ljava/lang/String; = "mraid_js"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static volatile instance:Lio/bidmachine/ExtraParamsManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final internalDataRetriever:Lgr/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final isExtrasPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final loadFromStoreLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final needLoadFromStore:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private privateExtras:Lcom/explorestack/protobuf/Struct;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final publicDataRetriever:Lgr/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final updateExtrasLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->needLoadFromStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->loadFromStoreLock:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->updateExtrasLock:Ljava/lang/Object;

    .line 33
    .line 34
    new-instance v0, Lgr/f;

    .line 35
    .line 36
    invoke-direct {v0}, Lgr/f;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->publicDataRetriever:Lgr/f;

    .line 40
    .line 41
    new-instance v0, Lgr/f;

    .line 42
    .line 43
    invoke-direct {v0}, Lgr/f;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->internalDataRetriever:Lgr/f;

    .line 47
    .line 48
    return-void
.end method

.method private checkAndPrepareExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/Extras;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->updateExtrasLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ExtraParamsManager;->setExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public static get()Lio/bidmachine/ExtraParamsManager;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/ExtraParamsManager;->instance:Lio/bidmachine/ExtraParamsManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lio/bidmachine/ExtraParamsManager;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lio/bidmachine/ExtraParamsManager;->instance:Lio/bidmachine/ExtraParamsManager;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lio/bidmachine/ExtraParamsManager;

    .line 13
    .line 14
    invoke-direct {v0}, Lio/bidmachine/ExtraParamsManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/bidmachine/ExtraParamsManager;->instance:Lio/bidmachine/ExtraParamsManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getInternalDataRetriever(Landroid/content/Context;)Lgr/f;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ExtraParamsManager;->loadFromStore(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/ExtraParamsManager;->internalDataRetriever:Lgr/f;

    .line 5
    .line 6
    return-object p1
.end method

.method public getPrivateStruct(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ExtraParamsManager;->loadFromStore(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/ExtraParamsManager;->privateExtras:Lcom/explorestack/protobuf/Struct;

    .line 5
    .line 6
    return-object p1
.end method

.method public getPublic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ExtraParamsManager;->loadFromStore(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/ExtraParamsManager;->publicDataRetriever:Lgr/f;

    .line 5
    .line 6
    invoke-interface {p1, p2}, Lgr/c;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method isExtrasPrepared()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method loadFromStore(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->loadFromStoreLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ExtraParamsManager;->needLoadFromStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p1}, Lio/bidmachine/m2;->e(Landroid/content/Context;)Lio/bidmachine/protobuf/Extras;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {p0, p1, v1}, Lio/bidmachine/ExtraParamsManager;->checkAndPrepareExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method setExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/Extras;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->needLoadFromStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->updateExtrasLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object p2, p0, Lio/bidmachine/ExtraParamsManager;->publicDataRetriever:Lgr/f;

    .line 19
    .line 20
    invoke-virtual {p2}, Lgr/d;->q()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lio/bidmachine/ExtraParamsManager;->internalDataRetriever:Lgr/f;

    .line 24
    .line 25
    invoke-virtual {p2}, Lgr/d;->q()V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lio/bidmachine/ExtraParamsManager;->privateExtras:Lcom/explorestack/protobuf/Struct;

    .line 30
    .line 31
    invoke-static {p1}, Lio/bidmachine/m2;->b(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lio/bidmachine/ExtraParamsManager;->publicDataRetriever:Lgr/f;

    .line 39
    .line 40
    invoke-virtual {p2}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lgr/f;->u(Lcom/explorestack/protobuf/Struct;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lio/bidmachine/ExtraParamsManager;->internalDataRetriever:Lgr/f;

    .line 48
    .line 49
    invoke-virtual {p2}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lgr/f;->u(Lcom/explorestack/protobuf/Struct;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lio/bidmachine/ExtraParamsManager;->privateExtras:Lcom/explorestack/protobuf/Struct;

    .line 61
    .line 62
    invoke-static {p1, p2}, Lio/bidmachine/m2;->x(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p1
.end method
