.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyHLSChooseStreamInterface;
.super Lcom/ss/ttm/player/HLSChooseStreamInterface;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHLSChooseStreamInterface"
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
.method constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/HLSChooseStreamInterface;-><init>()V

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyHLSChooseStreamInterface;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public chooseRenditionInfoId(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyHLSChooseStreamInterface;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;->chooseRenditionInfoId(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 28
    return p1
.end method

.method public chooseVariantBandWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyHLSChooseStreamInterface;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;->chooseVariantBandWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 28
    return v0
.end method

.method public streamInfos([Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;->convert([Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;)Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyHLSChooseStreamInterface;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;->streamInfos(Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
