.class Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;
.super Ljava/lang/Object;
.source "VideoEventOneOpera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneOpera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncGetLogDataRunnable"
.end annotation


# instance fields
.field private rContext:Landroid/content/Context;

.field private rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

.field private rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private rHandler:Landroid/os/Handler;

.field private rOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOneOpera;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateMDLInfo()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->isUploadLogEnabled:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 35
    .line 36
    invoke-static {v2, v3, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->access$500(Lcom/ss/ttvideoengine/log/VideoEventOneOpera;Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    sget-object v2, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 45
    .line 46
    const-string/jumbo v3, "videoplayer_oneopera"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1, v0, v3}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    new-instance v3, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable$1;

    .line 54
    .line 55
    invoke-direct {v3, p0, v1, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable$1;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;ZLorg/json/JSONObject;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
