.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$4;
.super Lcom/ss/ttm/player/MaskInfo;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setAIBarrageInfoListener(Lcom/ss/ttvideoengine/AIBarrageSimpleCallback;)V
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$4;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$4;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mAIBarrageInfoListener:Lcom/ss/ttvideoengine/AIBarrageSimpleCallback;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x200

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$4;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mAIBarrageInfoListener:Lcom/ss/ttvideoengine/AIBarrageSimpleCallback;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/AIBarrageSimpleCallback;->onBarrageInfoCallBack(IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$4;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "AIBarrage listener is null or switcher is off"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
