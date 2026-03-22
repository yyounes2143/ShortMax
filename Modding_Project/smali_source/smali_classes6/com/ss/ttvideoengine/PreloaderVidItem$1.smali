.class Lcom/ss/ttvideoengine/PreloaderVidItem$1;
.super Ljava/lang/Object;
.source "PreloaderVidItem.java"

# interfaces
.implements Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PreloadSourceSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/PreloaderVidItem;-><init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/PreloaderVidItem;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/PreloaderVidItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setVideoID(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PreloadSourceSetter;->setVideoID(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 5
    .line 6
    iput-object p1, v0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/ss/ttvideoengine/PreloaderVidItem;->setAuthorization(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p5, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 14
    .line 15
    iget-object p2, p5, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p2, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz p4, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 23
    .line 24
    iput-object p4, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    iput-object p2, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    if-eqz p3, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 35
    .line 36
    iput-object p3, p1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 37
    .line 38
    :cond_2
    return-void
.end method
