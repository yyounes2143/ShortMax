.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyABRStrategy;
.super Lcom/ss/ttm/player/ABRStrategy;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyABRStrategy"
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
    invoke-direct {p0}, Lcom/ss/ttm/player/ABRStrategy;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyABRStrategy;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyABRStrategy;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V

    return-void
.end method


# virtual methods
.method public probeBitrate(I)I
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyABRStrategy;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/bytedance/vcloud/abrmodule/IABRModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/bytedance/vcloud/abrmodule/IABRModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getPredict()Lcom/bytedance/vcloud/abrmodule/ABRResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/vcloud/abrmodule/ABRResult;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/abrmodule/ABRResult;->get(I)Lcom/bytedance/vcloud/abrmodule/ABRResultElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->getBitrate()J

    move-result-wide v0

    long-to-int v0, v0

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ABR] predict next segment bitrate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "bps, this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public probeBitrate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyABRStrategy;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/bytedance/vcloud/abrmodule/IABRModule;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/bytedance/vcloud/abrmodule/IABRModule;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getPredictByJsonParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ABR] predict next segment result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
