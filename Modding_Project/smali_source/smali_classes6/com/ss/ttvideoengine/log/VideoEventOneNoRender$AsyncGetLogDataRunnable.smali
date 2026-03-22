.class Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;
.super Ljava/lang/Object;
.source "VideoEventOneNoRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncGetLogDataRunnable"
.end annotation


# instance fields
.field private final event:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

.field private final eventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private final eventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->event:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->eventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->eventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

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
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->lambda$run$0(ZLorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$run$0(ZLorg/json/JSONObject;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    const-string/jumbo v1, "videoplayer_oneevent"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1, v1}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->event:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->eventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

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
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->eventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->handler:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v3, Lcom/ss/ttvideoengine/log/i;

    .line 26
    .line 27
    invoke-direct {v3, v2, v0}, Lcom/ss/ttvideoengine/log/i;-><init>(ZLorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
