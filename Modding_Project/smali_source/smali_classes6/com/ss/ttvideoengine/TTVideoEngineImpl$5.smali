.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;
.super Lcom/ss/ttm/player/SubInfo;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setSubInfoListener(Lcom/ss/ttvideoengine/SubInfoListener;)V
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/ttm/player/SubInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected onSubInfoCallback(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoListener:Lcom/ss/ttvideoengine/SubInfoListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoListener:Lcom/ss/ttvideoengine/SubInfoListener;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/SubInfoListener;->onSubInfoCallback(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "subtitle: listener: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "mSubInfoListener is null"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method protected onSubInfoCallback2(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoListener:Lcom/ss/ttvideoengine/SubInfoListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    const-string p2, "info"

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v1, "pts"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoListener:Lcom/ss/ttvideoengine/SubInfoListener;

    .line 33
    .line 34
    invoke-interface {v1, p1, v0, p2}, Lcom/ss/ttvideoengine/SubInfoListener;->onSubInfoCallback(IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "construct json failed"

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$5;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "mSubInfoListener is null"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method protected onSubLoadFinished(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onSubLoadFinished2(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onSubSwitchCompleted(II)V
    .locals 0

    .line 1
    return-void
.end method
