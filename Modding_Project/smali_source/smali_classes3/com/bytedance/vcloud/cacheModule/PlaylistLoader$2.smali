.class Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$2;
.super Landroid/os/Handler;
.source "PlaylistLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->initPreloadCmdHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

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
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x2710

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$800(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v1, 0x2711

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$900(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x2712

    .line 28
    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$1000(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 v1, 0x2ee0

    .line 38
    .line 39
    if-ne v0, v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "fileKey"

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "status"

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->covertCode(I)Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 68
    .line 69
    invoke-virtual {v3, v1, v0, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->processStatusChangeInner(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
