.class public Lcom/bytedance/adsdk/ZYk/PiB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ZYk/PiB$oJ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static oJ:Ljava/util/concurrent/Executor;


# instance fields
.field private volatile Pfn:Lcom/bytedance/adsdk/ZYk/BTZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/BTZ<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final ZYk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/adsdk/ZYk/dLZ<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final ex:Landroid/os/Handler;

.field private final tB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/adsdk/ZYk/dLZ<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/bytedance/adsdk/ZYk/PiB;->oJ:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/bytedance/adsdk/ZYk/BTZ<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ZYk/PiB;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/bytedance/adsdk/ZYk/BTZ<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->ZYk:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->tB:Ljava/util/Set;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->ex:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->Pfn:Lcom/bytedance/adsdk/ZYk/BTZ;

    if-eqz p2, :cond_0

    .line 7
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ZYk/BTZ;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/PiB;->oJ(Lcom/bytedance/adsdk/ZYk/BTZ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/bytedance/adsdk/ZYk/BTZ;

    invoke-direct {p2, p1}, Lcom/bytedance/adsdk/ZYk/BTZ;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ZYk/PiB;->oJ(Lcom/bytedance/adsdk/ZYk/BTZ;)V

    return-void

    .line 9
    :cond_0
    sget-object p2, Lcom/bytedance/adsdk/ZYk/PiB;->oJ:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/bytedance/adsdk/ZYk/PiB$oJ;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/adsdk/ZYk/PiB$oJ;-><init>(Lcom/bytedance/adsdk/ZYk/PiB;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ZYk/PiB;)Lcom/bytedance/adsdk/ZYk/BTZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->Pfn:Lcom/bytedance/adsdk/ZYk/BTZ;

    return-object p0
.end method

.method private oJ()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->ex:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/PiB$1;

    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/ZYk/PiB$1;-><init>(Lcom/bytedance/adsdk/ZYk/PiB;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private oJ(Lcom/bytedance/adsdk/ZYk/BTZ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/BTZ<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->Pfn:Lcom/bytedance/adsdk/ZYk/BTZ;

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/PiB;->Pfn:Lcom/bytedance/adsdk/ZYk/BTZ;

    .line 7
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/PiB;->oJ()V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A task may only be set once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ZYk/PiB;Lcom/bytedance/adsdk/ZYk/BTZ;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/PiB;->oJ(Lcom/bytedance/adsdk/ZYk/BTZ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ZYk/PiB;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/PiB;->oJ(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ZYk/PiB;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/PiB;->oJ(Ljava/lang/Throwable;)V

    return-void
.end method

.method private declared-synchronized oJ(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/PiB;->ZYk:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ZYk/dLZ;

    .line 17
    invoke-interface {v1, p1}, Lcom/bytedance/adsdk/ZYk/dLZ;->oJ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 18
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized oJ(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 19
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/PiB;->tB:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ZYk/dLZ;

    .line 23
    invoke-interface {v1, p1}, Lcom/bytedance/adsdk/ZYk/dLZ;->oJ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 24
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized ZYk(Lcom/bytedance/adsdk/ZYk/dLZ;)Lcom/bytedance/adsdk/ZYk/PiB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/dLZ<",
            "TT;>;)",
            "Lcom/bytedance/adsdk/ZYk/PiB<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->ZYk:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-object p0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized ex(Lcom/bytedance/adsdk/ZYk/dLZ;)Lcom/bytedance/adsdk/ZYk/PiB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/dLZ<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/bytedance/adsdk/ZYk/PiB<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->tB:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-object p0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized oJ(Lcom/bytedance/adsdk/ZYk/dLZ;)Lcom/bytedance/adsdk/ZYk/PiB;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/dLZ<",
            "TT;>;)",
            "Lcom/bytedance/adsdk/ZYk/PiB<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->Pfn:Lcom/bytedance/adsdk/ZYk/BTZ;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/BTZ;->oJ()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/BTZ;->oJ()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/adsdk/ZYk/dLZ;->oJ(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->ZYk:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized tB(Lcom/bytedance/adsdk/ZYk/dLZ;)Lcom/bytedance/adsdk/ZYk/PiB;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/dLZ<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/bytedance/adsdk/ZYk/PiB<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->Pfn:Lcom/bytedance/adsdk/ZYk/BTZ;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/BTZ;->ZYk()Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/BTZ;->ZYk()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Lcom/bytedance/adsdk/ZYk/dLZ;->oJ(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/PiB;->tB:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-object p0

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method
