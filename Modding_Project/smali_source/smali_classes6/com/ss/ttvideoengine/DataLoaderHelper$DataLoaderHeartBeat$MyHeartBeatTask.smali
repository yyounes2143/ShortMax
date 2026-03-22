.class Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;
.super Ljava/util/TimerTask;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHeartBeatTask"
.end annotation


# instance fields
.field private mDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

.field final synthetic this$1:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;Lcom/ss/mediakit/medialoader/AVMDLDataLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;->this$1:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;->mDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;->mDataLoader:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3f3

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getStringValue(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x46

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->onLogInfo(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method
