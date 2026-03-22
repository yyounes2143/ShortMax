.class Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;
.super Ljava/lang/Object;
.source "VideoEventOneEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncGetLogDataRunnable"
.end annotation


# instance fields
.field private rContext:Landroid/content/Context;

.field private rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

.field private rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

.field private rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOneEvent;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

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
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

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
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 18
    .line 19
    invoke-static {v0, v3, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

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
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v3, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable$1;

    .line 37
    .line 38
    invoke-direct {v3, p0, v2, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable$1;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;ZLorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;)Ljava/util/HashMap;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;)Ljava/util/HashMap;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEventType:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;)Ljava/util/HashMap;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 71
    .line 72
    iget-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEventType:Ljava/lang/String;

    .line 73
    .line 74
    iget-wide v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndT:J

    .line 75
    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw v0

    .line 88
    :cond_3
    :goto_1
    sget-object v1, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 89
    .line 90
    const-string/jumbo v3, "videoplayer_oneevent"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2, v0, v3}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
