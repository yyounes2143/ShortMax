.class Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$2;
.super Landroid/os/Handler;
.source "PlaylistDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->initDownloadCmdHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$900(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v1, 0x2ee0

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "fileKey"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "status"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->covertCode(I)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 48
    .line 49
    invoke-virtual {v3, v1, v0, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->processStatusChangeInner(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/16 v1, 0x2712

    .line 54
    .line 55
    if-ne v0, v1, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$1000(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
