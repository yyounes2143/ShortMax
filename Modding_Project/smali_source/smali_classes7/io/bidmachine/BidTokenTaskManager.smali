.class public Lio/bidmachine/BidTokenTaskManager;
.super Ljava/lang/Object;
.source "BidTokenTaskManager.java"


# static fields
.field private static volatile instance:Ljr/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cancel(Ljr/b;)V
    .locals 1
    .param p0    # Ljr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/BidTokenTaskManager;->get()Ljr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljr/a;->b(Ljr/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/BidTokenTaskManager;->get()Ljr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljr/a;->execute(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static get()Ljr/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/BidTokenTaskManager;->instance:Ljr/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Ljr/a;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lio/bidmachine/BidTokenTaskManager;->instance:Ljr/a;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljr/a;

    .line 13
    .line 14
    invoke-direct {v0}, Ljr/a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/bidmachine/BidTokenTaskManager;->instance:Ljr/a;

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

.method public static schedule(Ljr/b;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p0    # Ljr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/BidTokenTaskManager;->get()Ljr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Ljr/a;->d(Ljr/b;JLjava/util/concurrent/TimeUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
