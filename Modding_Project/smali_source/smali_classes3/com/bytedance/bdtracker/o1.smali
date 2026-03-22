.class public Lcom/bytedance/bdtracker/o1;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Lcom/bytedance/bdtracker/d;

.field public final f:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2, p2}, Lcom/bytedance/bdtracker/k1;-><init>(ZZ)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/bytedance/bdtracker/o1;->e:Lcom/bytedance/bdtracker/d;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Config"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    const-string v0, "sdk_version"

    const v1, 0x5dd95a

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sdk_version_code"

    const v1, 0xf66e49

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sdk_version_name"

    const-string v1, "6.15.4"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getNotReuqestSender()Z

    move-result v0

    const-string v1, "not_request_sender"

    .line 3
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aid"

    .line 5
    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getReleaseBuild()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release_build"

    .line 7
    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    const-string v1, "user_agent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v3, "ab_sdk_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p1, v3, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "app_language"

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_0
    invoke-static {p1, v3, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 16
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "app_region"

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 18
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_1
    invoke-static {p1, v3, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 20
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    const-string v1, "app_track"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/o1;->e:Lcom/bytedance/bdtracker/d;

    .line 22
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 23
    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "JSON handle appTrack failed"

    invoke-interface {v1, v5, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    .line 24
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    const-string v1, "header_custom_info"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "_debug_flag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "custom"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/o1;->e:Lcom/bytedance/bdtracker/d;

    .line 26
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 27
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    invoke-interface {v1, v3, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/o1;->f:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "user_unique_id"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
