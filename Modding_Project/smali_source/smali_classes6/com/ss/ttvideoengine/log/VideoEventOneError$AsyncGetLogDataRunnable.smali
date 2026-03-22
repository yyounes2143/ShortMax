.class Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;
.super Ljava/lang/Object;
.source "VideoEventOneError.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncGetLogDataRunnable"
.end annotation


# instance fields
.field private rContext:Landroid/content/Context;

.field private rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneError;

.field private rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOneError;Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneError;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneError;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateMDLInfo()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 14
    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getNetType()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-boolean v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->isUploadLogEnabled:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneError;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneError;->access$000(Lcom/ss/ttvideoengine/log/VideoEventOneError;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v3, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable$1;

    .line 52
    .line 53
    invoke-direct {v3, p0, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable$1;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;ZLorg/json/JSONObject;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    :goto_1
    sget-object v2, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 61
    .line 62
    const-string/jumbo v3, "videoplayer_oneerror"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0, v1, v3}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
