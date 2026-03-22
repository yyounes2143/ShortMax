.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;
.super Lcom/ss/ttm/player/SubInfo;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setSubInfoCallBack(Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;)V
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

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
    new-instance v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    const-string v1, "info"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v1, "pts"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "subtitle: callback: "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-static {p2, p3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object p3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 60
    .line 61
    iget-object p3, p3, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

    .line 62
    .line 63
    invoke-virtual {p3, p1, p2}, Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;->onSubInfoCallback(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "put content field failed"

    .line 74
    .line 75
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p2, "mSubInfoCallBack is null"

    .line 86
    .line 87
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method

.method protected onSubInfoCallback2(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;->onSubInfoCallback(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "subtitle: callback2: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "mSubInfoCallBack is null or mEnableSub == 0"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method protected onSubLoadFinished(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "subtitle call back: finished old did call back"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-ltz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;->onSubLoadFinished(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "mSubInfoCallBack is null or mEnableSub == 0"

    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method protected onSubLoadFinished2(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "subtitle: call back: finished did call back"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ltz p1, :cond_0

    .line 28
    .line 29
    move v2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v2, v0

    .line 32
    :goto_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "code"

    .line 38
    .line 39
    if-ne v2, v1, :cond_1

    .line 40
    .line 41
    move p1, v0

    .line 42
    :cond_1
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

    .line 52
    .line 53
    invoke-virtual {p1, v2, p2}, Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;->onSubLoadFinished2(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "mSubInfoCallBack is null or mEnableSub == 0"

    .line 64
    .line 65
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method protected onSubSwitchCompleted(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;->onSubSwitchCompleted(II)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$6;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "mSubInfoCallBack is null"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
