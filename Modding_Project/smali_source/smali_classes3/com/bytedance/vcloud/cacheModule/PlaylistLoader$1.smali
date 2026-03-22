.class Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;
.super Landroid/os/Handler;
.source "PlaylistLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->initStatusListenerHandler()V
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
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

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
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$000()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

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
    packed-switch v0, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$700(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 64
    .line 65
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$600(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$500(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 94
    .line 95
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x2af8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
