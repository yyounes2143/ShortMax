.class public Lcom/ss/ttvideoengine/net/BaseDNS;
.super Ljava/lang/Object;
.source "BaseDNS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/net/BaseDNS$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_IS_CANCELLED:I = 0x0

.field private static final MSG_IS_ERROR:I = 0x2

.field private static final MSG_IS_RETRY:I = 0x1

.field private static final MSG_IS_SUCCESS:I = 0x3


# instance fields
.field protected mCancelled:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mHostname:Ljava/lang/String;

.field protected mListener:Lcom/ss/ttvideoengine/net/DNSCompletionListener;

.field protected mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/ss/ttvideoengine/net/BaseDNS$MyHandler;

    invoke-direct {p1, p0}, Lcom/ss/ttvideoengine/net/BaseDNS$MyHandler;-><init>(Lcom/ss/ttvideoengine/net/BaseDNS;)V

    iput-object p1, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 10
    new-instance p1, Lcom/ss/ttvideoengine/net/BaseDNS$MyHandler;

    invoke-direct {p1, p0}, Lcom/ss/ttvideoengine/net/BaseDNS$MyHandler;-><init>(Lcom/ss/ttvideoengine/net/BaseDNS;)V

    iput-object p1, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    .line 11
    new-instance p2, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    invoke-direct {p2}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    .line 12
    :cond_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected notifyError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected notifyRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected notifySuccess(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setCompletionListener(Lcom/ss/ttvideoengine/net/DNSCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mListener:Lcom/ss/ttvideoengine/net/DNSCompletionListener;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
.end method
