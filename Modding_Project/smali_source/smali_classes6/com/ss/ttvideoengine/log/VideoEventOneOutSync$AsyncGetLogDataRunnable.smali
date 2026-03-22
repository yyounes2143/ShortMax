.class Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;
.super Ljava/lang/Object;
.source "VideoEventOneOutSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncGetLogDataRunnable"
.end annotation


# instance fields
.field private rContext:Landroid/content/Context;

.field private rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

.field private rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

.field private rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

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
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->isUploadLogEnabled:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 18
    .line 19
    invoke-virtual {v0, v3, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v3, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable$1;

    .line 37
    .line 38
    invoke-direct {v3, p0, v2, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable$1;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;ZLorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1600(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mLastEventTime:J

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    :goto_1
    sget-object v1, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 56
    .line 57
    const-string/jumbo v3, "videoplayer_oneevent"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v0, v3}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
