.class Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper$1;
.super Landroid/os/Handler;
.source "CacheInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper$1;->this$0:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper$1;->this$0:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->access$000(Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper$1;->this$0:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 15
    .line 16
    invoke-static {v3}, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->access$100(Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;)Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper$1;->this$0:Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;->access$100(Lcom/bytedance/vcloud/cacheModule/CacheInfoHelper;)Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;->onInfoListener(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method
