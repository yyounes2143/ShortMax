.class Lio/bidmachine/AdsType$b;
.super Ljava/lang/Object;
.source "AdsType.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdsType;->collectPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lxq/d;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lom/n;

.field final synthetic b:Lio/bidmachine/ContextProvider;

.field final synthetic c:Lxq/d;

.field final synthetic d:Ljava/util/Collection;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lio/bidmachine/AdPlacementConfig;

.field final synthetic g:I

.field final synthetic h:Ljava/util/List;

.field final synthetic i:Ljava/util/concurrent/CountDownLatch;

.field final synthetic j:Lio/bidmachine/AdsType;


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;Lom/n;Lio/bidmachine/ContextProvider;Lxq/d;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdsType$b;->j:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/AdsType$b;->a:Lom/n;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/AdsType$b;->b:Lio/bidmachine/ContextProvider;

    .line 6
    .line 7
    iput-object p4, p0, Lio/bidmachine/AdsType$b;->c:Lxq/d;

    .line 8
    .line 9
    iput-object p5, p0, Lio/bidmachine/AdsType$b;->d:Ljava/util/Collection;

    .line 10
    .line 11
    iput-object p6, p0, Lio/bidmachine/AdsType$b;->e:Ljava/util/List;

    .line 12
    .line 13
    iput-object p7, p0, Lio/bidmachine/AdsType$b;->f:Lio/bidmachine/AdPlacementConfig;

    .line 14
    .line 15
    iput p8, p0, Lio/bidmachine/AdsType$b;->g:I

    .line 16
    .line 17
    iput-object p9, p0, Lio/bidmachine/AdsType$b;->h:Ljava/util/List;

    .line 18
    .line 19
    iput-object p10, p0, Lio/bidmachine/AdsType$b;->i:Ljava/util/concurrent/CountDownLatch;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdsType$b;->a:Lom/n;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/AdsType$b;->b:Lio/bidmachine/ContextProvider;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/AdsType$b;->c:Lxq/d;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/AdsType$b;->j:Lio/bidmachine/AdsType;

    .line 8
    .line 9
    iget-object v4, p0, Lio/bidmachine/AdsType$b;->d:Ljava/util/Collection;

    .line 10
    .line 11
    iget-object v5, p0, Lio/bidmachine/AdsType$b;->e:Ljava/util/List;

    .line 12
    .line 13
    iget-object v6, p0, Lio/bidmachine/AdsType$b;->f:Lio/bidmachine/AdPlacementConfig;

    .line 14
    .line 15
    iget v7, p0, Lio/bidmachine/AdsType$b;->g:I

    .line 16
    .line 17
    invoke-virtual/range {v0 .. v7}, Lom/n;->e(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lio/bidmachine/AdsType$b;->h:Ljava/util/List;

    .line 22
    .line 23
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    iget-object v2, p0, Lio/bidmachine/AdsType$b;->h:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    iget-object v0, p0, Lio/bidmachine/AdsType$b;->i:Ljava/util/concurrent/CountDownLatch;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :goto_0
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lio/bidmachine/AdsType$b;->i:Ljava/util/concurrent/CountDownLatch;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method
