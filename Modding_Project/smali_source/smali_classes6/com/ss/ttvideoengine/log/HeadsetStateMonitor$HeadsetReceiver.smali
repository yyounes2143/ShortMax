.class Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;->this$0:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;-><init>(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;->this$0:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->access$400(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$onReceive$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;->this$0:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->access$300(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$onReceive$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;->this$0:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->access$400(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$onReceive$3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;->this$0:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->access$300(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method
