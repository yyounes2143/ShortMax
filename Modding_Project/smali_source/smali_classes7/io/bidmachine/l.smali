.class Lio/bidmachine/l;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "AdRequestExecutor.java"


# static fields
.field private static volatile a:Lio/bidmachine/l;


# direct methods
.method constructor <init>(I)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 4
    .line 5
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move v1, p1

    .line 12
    move v2, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static a()Lio/bidmachine/l;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/l;->a:Lio/bidmachine/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lio/bidmachine/l;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lio/bidmachine/l;->a:Lio/bidmachine/l;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lio/bidmachine/l;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    mul-int/lit8 v2, v2, 0x2

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lio/bidmachine/l;-><init>(I)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lio/bidmachine/l;->a:Lio/bidmachine/l;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    goto :goto_2

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1

    .line 36
    :cond_1
    :goto_2
    sget-object v0, Lio/bidmachine/l;->a:Lio/bidmachine/l;

    .line 37
    .line 38
    return-object v0
.end method
