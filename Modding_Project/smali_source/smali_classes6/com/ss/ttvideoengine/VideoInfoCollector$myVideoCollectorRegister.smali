.class Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorRegister;
.super Ljava/lang/Object;
.source "VideoInfoCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/VideoInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "myVideoCollectorRegister"
.end annotation


# instance fields
.field mSerial:J

.field private final mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngine;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorRegister;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorRegister;->mSerial:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorRegister;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/ss/ttvideoengine/VideoInfoCollector;->getInstance()Lcom/ss/ttvideoengine/VideoInfoCollector;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorRegister;->mSerial:J

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v0}, Lcom/ss/ttvideoengine/VideoInfoCollector;->registEngine(JLcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
