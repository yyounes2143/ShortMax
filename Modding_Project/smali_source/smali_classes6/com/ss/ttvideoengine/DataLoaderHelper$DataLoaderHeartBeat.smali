.class Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderHeartBeat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;
    }
.end annotation


# instance fields
.field private mHbTask:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;

.field private mHbTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->mHbTimer:Ljava/util/Timer;

    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->mHbTask:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/ss/mediakit/medialoader/AVMDLDataLoader;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->mHbTask:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->mHbTimer:Ljava/util/Timer;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    if-gtz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;Lcom/ss/mediakit/medialoader/AVMDLDataLoader;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->mHbTask:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;

    .line 18
    .line 19
    new-instance v1, Ljava/util/Timer;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->mHbTimer:Ljava/util/Timer;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->mHbTask:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat$MyHeartBeatTask;

    .line 27
    .line 28
    int-to-long v5, p2

    .line 29
    move-wide v3, v5

    .line 30
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderHeartBeat;->mHbTimer:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
