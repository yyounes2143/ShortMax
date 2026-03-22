.class public Lcom/ss/ttvideoengine/preload/PreloadScene;
.super Ljava/lang/Object;
.source "PreloadScene.java"


# instance fields
.field private configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAlgorithmName:Ljava/lang/String;

.field public mAutoPlay:I

.field public mBriefSceneId:Ljava/lang/String;

.field private mConfigString:Ljava/lang/String;

.field public mMaxVisibleCardCnt:I

.field public mMute:I

.field public mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mBriefSceneId:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mAutoPlay:I

    .line 9
    .line 10
    iput v1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mMute:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mMaxVisibleCardCnt:I

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mConfigString:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mAlgorithmName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->configs:Ljava/util/List;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mSceneId:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public setAlgorithmName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mAlgorithmName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConfigJsonString(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mConfigString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "preload_strategy"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "name"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mAlgorithmName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    const-string v0, "Scene"

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public setConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->configs:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "scene_id"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mSceneId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "brief_scene_id"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mBriefSceneId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mAutoPlay:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "auto_play"

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mMute:I

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "mute"

    .line 38
    .line 39
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mMaxVisibleCardCnt:I

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "card_cnt"

    .line 49
    .line 50
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v1, "json"

    .line 54
    .line 55
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadScene;->mConfigString:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
