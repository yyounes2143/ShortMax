.class public Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;
.super Ljava/lang/Object;
.source "SmartServiceWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCStrategy"

.field private static final SERVER_NAME:Ljava/lang/String; = "vod_smart_speed"


# instance fields
.field private mSmartServiceInstance:Lcom/ss/ugc/clientai/core/api/SmartService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public configServer(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/ugc/clientai/core/api/SmartServiceManager;->instance()Lcom/ss/ugc/clientai/core/api/SmartServiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "vod_smart_speed"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ugc/clientai/core/api/SmartServiceManager;->getCommonService(Ljava/lang/String;)Lcom/ss/ugc/clientai/core/api/SmartService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->mSmartServiceInstance:Lcom/ss/ugc/clientai/core/api/SmartService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/ss/ugc/clientai/core/api/SmartServiceConfig;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/ss/ugc/clientai/core/api/SmartServiceConfig;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/ss/ugc/clientai/core/api/SmartServiceConfig;->configMap()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "engineType"

    .line 25
    .line 26
    const-string v3, "mlsdk"

    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v2, "outputType"

    .line 32
    .line 33
    const-string v3, "regression"

    .line 34
    .line 35
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v2, "packageUrl"

    .line 39
    .line 40
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->mSmartServiceInstance:Lcom/ss/ugc/clientai/core/api/SmartService;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/ss/ugc/clientai/core/api/SmartService;->configService(Lcom/ss/ugc/clientai/core/api/SmartServiceConfig;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    return-object p1
.end method

.method public getIntelligentInput(Lorg/json/JSONObject;Lcom/ss/ugc/clientai/core/api/SmartInputData;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/ss/ugc/clientai/core/api/SmartInputData;->inputMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    instance-of v3, v2, Lorg/json/JSONArray;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    move-object v3, v2

    .line 30
    check-cast v3, Lorg/json/JSONArray;

    .line 31
    .line 32
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-lez v3, :cond_0

    .line 37
    .line 38
    check-cast v2, Lorg/json/JSONArray;

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->jsonArray2FloatArray(Lorg/json/JSONArray;)[F

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    return p1

    .line 54
    :catch_0
    const/4 p1, -0x1

    .line 55
    return p1
.end method

.method public getLastResult()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->mSmartServiceInstance:Lcom/ss/ugc/clientai/core/api/SmartService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ugc/clientai/core/api/SmartService;->isEnvReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->mSmartServiceInstance:Lcom/ss/ugc/clientai/core/api/SmartService;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/ugc/clientai/core/api/SmartService;->lastResult()Lcom/ss/ugc/clientai/core/api/SmartOutputData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/ss/ugc/clientai/core/api/SmartOutputData;->success()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/ss/ugc/clientai/core/api/SmartOutputData;->getValue()Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/ss/ugc/clientai/core/api/SmartOutputData;->getValue()Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 41
    .line 42
    :goto_0
    return v0
.end method

.method public jsonArray2FloatArray(Lorg/json/JSONArray;)[F
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    double-to-float v2, v2

    .line 21
    aput v2, v0, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object v0
.end method

.method public parseIntelligentInputFromJson(Lorg/json/JSONObject;Ljava/lang/String;)F
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    double-to-float p1, p1

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public predictSmartSlice(Lorg/json/JSONObject;)F
    .locals 4

    .line 1
    new-instance v0, Lcom/ss/ugc/clientai/core/api/SmartInputData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ugc/clientai/core/api/SmartInputData;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->getIntelligentInput(Lorg/json/JSONObject;Lcom/ss/ugc/clientai/core/api/SmartInputData;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v2, "VCStrategy"

    .line 12
    .line 13
    const/high16 v3, -0x40800000    # -1.0f

    .line 14
    .line 15
    if-ne v1, p1, :cond_0

    .line 16
    .line 17
    const-string p1, "getIntelligentInput failed"

    .line 18
    .line 19
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->mSmartServiceInstance:Lcom/ss/ugc/clientai/core/api/SmartService;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/ss/ugc/clientai/core/api/SmartService;->runSync(Lcom/ss/ugc/clientai/core/api/SmartInputData;)Lcom/ss/ugc/clientai/core/api/SmartOutputData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/ss/ugc/clientai/core/api/SmartOutputData;->success()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/ss/ugc/clientai/core/api/SmartOutputData;->getValue()Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/ss/ugc/clientai/core/api/SmartOutputData;->getValue()Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-nez p1, :cond_2

    .line 55
    .line 56
    const-string p1, "mSmartServiceInstance is null"

    .line 57
    .line 58
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string p1, "mSmartServiceInstance is not ready"

    .line 63
    .line 64
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return v3
.end method

.method public preloadEnv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->mSmartServiceInstance:Lcom/ss/ugc/clientai/core/api/SmartService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ugc/clientai/core/api/SmartService;->preloadEnv()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
