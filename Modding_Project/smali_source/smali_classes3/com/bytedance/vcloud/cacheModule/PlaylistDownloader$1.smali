.class Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;
.super Landroid/os/Handler;
.source "PlaylistDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->initStatusListenerHandler()V
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
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

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
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$000()Ljava/lang/String;

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
    const-string v2, "<"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ">msg.what = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v2, p1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    .line 44
    .line 45
    packed-switch v0, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$800(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 72
    .line 73
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$700(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 86
    .line 87
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$600(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 98
    .line 99
    invoke-static {v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$500(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 116
    .line 117
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x2af8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
