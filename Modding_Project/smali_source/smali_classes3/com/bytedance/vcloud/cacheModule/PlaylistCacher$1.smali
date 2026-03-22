.class Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$1;
.super Landroid/os/Handler;
.source "PlaylistCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->initStatusListenerHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

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
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "msg.what = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v2, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    .line 36
    .line 37
    const/16 v1, 0x2af9

    .line 38
    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;->onCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
