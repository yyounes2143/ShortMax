.class Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;
.super Ljava/lang/Object;
.source "VideoEventLoggerV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncGetLogDataRunnable"
.end annotation


# instance fields
.field private final rContext:Landroid/content/Context;

.field private final rEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

.field rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field rEventSaver:Lcom/ss/ttvideoengine/log/EventSaver;

.field private final rHandler:Landroid/os/Handler;

.field rLogger:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

.field rQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;Lcom/ss/ttvideoengine/log/EventSaver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rLogger:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

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
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 24
    .line 25
    iput-object p6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEventSaver:Lcom/ss/ttvideoengine/log/EventSaver;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->lambda$run$0(ZLorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$run$0(ZLorg/json/JSONObject;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEvent(ZLorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "AyncGetLogDataRunnable enter"

    .line 2
    .line 3
    const-string v1, "VideoEventLoggerV2"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "rEvent is null, return."

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 23
    .line 24
    invoke-static {v1, v0, v2, v3}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3200(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 36
    .line 37
    iget-boolean v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->isUploadLogEnabled:Z

    .line 38
    .line 39
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEventSaver:Lcom/ss/ttvideoengine/log/EventSaver;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSessionID:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/log/EventSaver;->remove(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEventSaver:Lcom/ss/ttvideoengine/log/EventSaver;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 51
    .line 52
    iget-boolean v3, v3, Lcom/ss/ttvideoengine/log/VideoEventBase;->isUploadLogEnabled:Z

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/log/EventSaver;->uploadIfExits(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;->rHandler:Landroid/os/Handler;

    .line 58
    .line 59
    new-instance v3, Lcom/ss/ttvideoengine/log/d;

    .line 60
    .line 61
    invoke-direct {v3, v1, v0}, Lcom/ss/ttvideoengine/log/d;-><init>(ZLorg/json/JSONObject;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method
