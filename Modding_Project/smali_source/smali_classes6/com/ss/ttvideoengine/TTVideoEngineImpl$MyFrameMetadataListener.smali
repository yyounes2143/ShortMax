.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFrameMetadataListener;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/ttm/player/FrameMetadataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyFrameMetadataListener"
.end annotation


# instance fields
.field private final mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFrameMetadataListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFrameMetadataListener;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V

    return-void
.end method


# virtual methods
.method public frameDTSNotify(IJJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFrameAboutToBeRendered(IJJLjava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFrameMetadataListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/texturerender/VideoSurface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/texturerender/VideoSurface;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    move-wide v4, p2

    .line 23
    move-wide/from16 v6, p4

    .line 24
    .line 25
    move-object/from16 v8, p6

    .line 26
    .line 27
    invoke-virtual/range {v3 .. v8}, Lcom/ss/texturerender/VideoSurface;->frameMetaCallback(JJLjava/util/Map;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->checkSendMainLooper()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    new-instance v2, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string/jumbo v4, "type"

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "pts"

    .line 60
    .line 61
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string/jumbo v4, "wallClockTime"

    .line 69
    .line 70
    .line 71
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v3, "frameData"

    .line 75
    .line 76
    move-object/from16 v11, p6

    .line 77
    .line 78
    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/16 v3, 0x1a5

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    invoke-virtual {v1, v3, v4, v4, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postMainLooperMessage(IIILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object/from16 v11, p6

    .line 93
    .line 94
    iget-object v4, v1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    move v6, p1

    .line 101
    move-wide v7, p2

    .line 102
    move-wide/from16 v9, p4

    .line 103
    .line 104
    invoke-virtual/range {v4 .. v11}, Lcom/ss/ttvideoengine/ListenerCompact;->onFrameAboutToBeRendered(Lcom/ss/ttvideoengine/TTVideoEngine;IJJLjava/util/Map;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method public receiveBinarySei(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateFrameTerminatedDTS(IJJ)V
    .locals 0

    .line 1
    return-void
.end method
