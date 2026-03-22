.class public Lcom/bytedance/applog/game/UnityPlugin;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/app/Activity;


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
.method public flush()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->flush()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAbConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/bytedance/applog/AppLog;->getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    return-object p1
.end method

.method public getAbSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAllAbTestConfigs()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAllAbTestConfigs()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getIid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSsid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getUserUniqueID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p3}, Lcom/bytedance/applog/InitConfig;->setAbEnable(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {p4}, Lcom/bytedance/applog/AppLog;->setEncryptAndCompress(Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p5, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/bytedance/applog/game/UnityPlugin$a;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/bytedance/applog/game/UnityPlugin$a;-><init>(Lcom/bytedance/applog/game/UnityPlugin;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setLogger(Lcom/bytedance/applog/ILogger;)Lcom/bytedance/applog/InitConfig;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-static {p6, p1}, Lcom/bytedance/applog/UriConfig;->createByDomain(Ljava/lang/String;[Ljava/lang/String;)Lcom/bytedance/applog/UriConfig;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setUriConfig(Lcom/bytedance/applog/UriConfig;)Lcom/bytedance/applog/InitConfig;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/bytedance/applog/game/UnityPlugin;->a:Landroid/app/Activity;

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    const-string p1, "com.unity3d.player.UnityPlayer"

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "currentActivity"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/app/Activity;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/bytedance/applog/game/UnityPlugin;->a:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/bytedance/applog/game/UnityPlugin;->a:Landroid/app/Activity;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/bytedance/applog/AppLog;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onEventV3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "UnityPlugin"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v2, "JSON handle failed"

    .line 25
    .line 26
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public profileAppend(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->profileAppend(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "UnityPlugin"

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "JSON handle failed"

    .line 25
    .line 26
    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public profileIncrement(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->profileIncrement(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "UnityPlugin"

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "JSON handle failed"

    .line 25
    .line 26
    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public profileSet(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->profileSet(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "UnityPlugin"

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "JSON handle failed"

    .line 25
    .line 26
    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public profileSetOnce(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->profileSetOnce(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "UnityPlugin"

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "JSON handle failed"

    .line 25
    .line 26
    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public profileUnset(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->profileUnset(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public removeCustomHeaderInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->removeHeaderInfo(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCustomHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/bytedance/applog/AppLog;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setExternalAbVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->setExternalAbVersion(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->setUserUniqueID(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
