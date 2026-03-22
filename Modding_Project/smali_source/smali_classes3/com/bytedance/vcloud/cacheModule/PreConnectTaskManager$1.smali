.class Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;
.super Landroid/os/Handler;
.source "PreConnectTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

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
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 8
    .line 9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->access$800(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 18
    .line 19
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->access$700(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 28
    .line 29
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->changeCurPreConnectTsKeyInner(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 38
    .line 39
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->access$600(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_4
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 48
    .line 49
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->access$500(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_5
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 60
    .line 61
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Ljava/lang/String;

    .line 64
    .line 65
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 66
    .line 67
    invoke-static {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->access$400(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_6
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 72
    .line 73
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->access$300(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_7
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->access$200(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
