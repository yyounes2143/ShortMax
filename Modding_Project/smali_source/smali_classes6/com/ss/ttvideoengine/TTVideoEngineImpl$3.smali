.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$3;
.super Lcom/ss/ttm/player/MaskInfo;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setMaskInfoListener(Lcom/ss/ttvideoengine/MaskInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$3;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/ttm/player/MaskInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected onMaskInfoCallback(IILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$3;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mMaskInfoListener:Lcom/ss/ttvideoengine/MaskInfoListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x1f3

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$3;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mMaskInfoListener:Lcom/ss/ttvideoengine/MaskInfoListener;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/MaskInfoListener;->onMaskInfoCallback(IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
