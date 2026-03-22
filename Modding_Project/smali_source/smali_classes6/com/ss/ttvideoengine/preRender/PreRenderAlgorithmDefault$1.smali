.class Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault$1;
.super Ljava/lang/Object;
.source "PreRenderAlgorithmDefault.java"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->checkPlayBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault$1;->this$0:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPausePreRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault$1;->this$0:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->access$200(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTriggerPreRender()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault$1;->this$0:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->access$000(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " start preRender playBuffer allowed"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "PreRender_AlgorithmDef"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault$1;->this$0:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->access$100(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
