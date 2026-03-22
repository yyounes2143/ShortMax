.class Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable$1;
.super Ljava/lang/Object;
.source "VideoEventAbrEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable;

.field final synthetic val$isUpload:Z

.field final synthetic val$jsonEvent:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable;ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable$1;->val$isUpload:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable$1;->val$jsonEvent:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable$1;->val$isUpload:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable$1;->val$jsonEvent:Lorg/json/JSONObject;

    .line 6
    .line 7
    const-string/jumbo v3, "videoplayer_abrswitch"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
