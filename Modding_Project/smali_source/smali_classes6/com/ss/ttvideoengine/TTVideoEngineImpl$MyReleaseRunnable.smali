.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyReleaseRunnable"
.end annotation


# instance fields
.field private mABRModule:Lcom/bytedance/vcloud/abrmodule/IABRModule;

.field private mEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/ss/ttm/player/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttm/player/MediaPlayer;Lcom/bytedance/vcloud/abrmodule/IABRModule;)V
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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mABRModule:Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "MyReleaseRunnable release"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->release()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mABRModule:Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->release()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mABRModule:Lcom/bytedance/vcloud/abrmodule/IABRModule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyReleaseRunnable;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    return-void
.end method
