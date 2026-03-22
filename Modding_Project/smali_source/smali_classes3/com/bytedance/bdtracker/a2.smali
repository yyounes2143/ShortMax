.class public Lcom/bytedance/bdtracker/a2;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/bdtracker/d;

.field public final g:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/bytedance/bdtracker/k1;-><init>(ZZ)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/bytedance/bdtracker/a2;->f:Lcom/bytedance/bdtracker/d;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bytedance/bdtracker/a2;->e:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Package"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 7

    const-string v0, "app_version"

    iget-object v1, p0, Lcom/bytedance/bdtracker/a2;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getZiJieCloudPkg()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "package"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/a2;->f:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 5
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "has zijie pkg"

    invoke-interface {v2, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 6
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getZiJieCloudPkg()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "real_package_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/a2;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 8
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 10
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/a2;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/bdtracker/u4;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "app_version_minor"

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_2
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_2
    const-string v0, ""

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 16
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getVersionCode()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "version_code"

    if-eqz v0, :cond_3

    .line 17
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 18
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getVersionCode()I

    move-result v0

    .line 19
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_4
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 20
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getUpdateVersionCode()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "update_version_code"

    if-eqz v0, :cond_4

    .line 21
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 22
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getUpdateVersionCode()I

    move-result v0

    .line 23
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    :cond_4
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_5
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 24
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getManifestVersionCode()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "manifest_version_code"

    if-eqz v0, :cond_5

    .line 25
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 26
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getManifestVersionCode()I

    move-result v0

    .line 27
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6

    :cond_5
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_6
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 28
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_6

    const-string v0, "app_name"

    :try_start_5
    iget-object v2, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 30
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 32
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getTweakedChannel()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_7

    const-string v0, "tweaked_channel"

    :try_start_6
    iget-object v2, p0, Lcom/bytedance/bdtracker/a2;->g:Lcom/bytedance/bdtracker/p1;

    .line 34
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getTweakedChannel()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->e:Landroid/content/Context;

    .line 36
    invoke-static {v0, v1, v4}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 37
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_8

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v0, :cond_8

    const-string v1, "display_name"

    :try_start_7
    iget-object v2, p0, Lcom/bytedance/bdtracker/a2;->e:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    :cond_8
    const/4 p1, 0x1

    return p1

    :goto_7
    iget-object v0, p0, Lcom/bytedance/bdtracker/a2;->f:Lcom/bytedance/bdtracker/d;

    .line 38
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 39
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Load package info failed."

    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v4
.end method
