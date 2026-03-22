.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$2;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setupTextureRender()V
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNoRenderEnd(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->AVNoRenderEnd(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onNoRenderStart(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->unifyReason(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-interface {v0, v1, p1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->AVNoRenderStart(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
