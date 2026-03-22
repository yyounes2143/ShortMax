.class Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;
.super Ljava/lang/Object;
.source "VideoEventSampleRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncGetLogDataRunnable"
.end annotation


# instance fields
.field private rContext:Landroid/content/Context;

.field private rEvent:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

.field private rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private rEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

.field private rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

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
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->access$100(Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable$1;

    .line 26
    .line 27
    invoke-direct {v2, p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable$1;-><init>(Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;Lorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    :goto_0
    sget-object v1, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    const-string/jumbo v3, "videoplayer_sample"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v0, v3}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
