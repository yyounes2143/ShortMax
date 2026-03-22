.class Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable$1;
.super Ljava/lang/Object;
.source "VideoEventSampleRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;

.field final synthetic val$jsonEvent:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable$1;->val$jsonEvent:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable$1;->val$jsonEvent:Lorg/json/JSONObject;

    .line 4
    .line 5
    const-string/jumbo v2, "videoplayer_sample"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
