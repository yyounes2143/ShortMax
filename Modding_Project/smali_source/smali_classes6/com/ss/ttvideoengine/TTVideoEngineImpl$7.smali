.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setBufferProcessCallback(Lcom/ss/ttm/player/BufferProcessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

.field final synthetic val$callback:Lcom/ss/ttm/player/BufferProcessCallback;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttm/player/BufferProcessCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->val$callback:Lcom/ss/ttm/player/BufferProcessCallback;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->val$callback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4402(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttm/player/BufferProcessCallback;)Lcom/ss/ttm/player/BufferProcessCallback;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttm/player/BufferProcessCallback;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttm/player/BufferProcessCallback;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/ss/ttm/player/BufferProcessCallback;->setProtoName(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttm/player/BufferProcessCallback;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-interface {v0, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->setTraitObject(ILcom/ss/ttm/player/TraitObject;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$7;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 57
    .line 58
    new-instance v3, Lcom/ss/ttm/player/BufferProcessProto;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttm/player/BufferProcessCallback;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v3, v0}, Lcom/ss/ttm/player/BufferProcessProto;-><init>(Lcom/ss/ttm/player/BufferProcessCallback;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v1, v3}, Lcom/ss/ttm/player/MediaPlayer;->setTraitObject(ILcom/ss/ttm/player/TraitObject;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method
