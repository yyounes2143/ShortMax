.class Lcom/ss/ttm/player/TTPlayerClient$2;
.super Ljava/lang/Object;
.source "TTPlayerClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttm/player/TTPlayerClient;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttm/player/TTPlayerClient;


# direct methods
.method constructor <init>(Lcom/ss/ttm/player/TTPlayerClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient$2;->this$0:Lcom/ss/ttm/player/TTPlayerClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient$2;->this$0:Lcom/ss/ttm/player/TTPlayerClient;

    invoke-static {v0}, Lcom/ss/ttm/player/TTPlayerClient;->access$000(Lcom/ss/ttm/player/TTPlayerClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient$2;->this$0:Lcom/ss/ttm/player/TTPlayerClient;

    invoke-static {v0}, Lcom/ss/ttm/player/TTPlayerClient;->access$100(Lcom/ss/ttm/player/TTPlayerClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient$2;->this$0:Lcom/ss/ttm/player/TTPlayerClient;

    invoke-static {v0}, Lcom/ss/ttm/player/TTPlayerClient;->access$200(Lcom/ss/ttm/player/TTPlayerClient;)Lcom/ss/ttm/player/ITTPlayerRef;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient$2;->this$0:Lcom/ss/ttm/player/TTPlayerClient;

    invoke-static {v0}, Lcom/ss/ttm/player/TTPlayerClient;->access$000(Lcom/ss/ttm/player/TTPlayerClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient$2;->this$0:Lcom/ss/ttm/player/TTPlayerClient;

    invoke-static {v1}, Lcom/ss/ttm/player/TTPlayerClient;->access$000(Lcom/ss/ttm/player/TTPlayerClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6
    :catch_0
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerClient;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPlayer setsurface null failed."

    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :goto_2
    const-string v0, "OK"

    return-object v0
.end method
