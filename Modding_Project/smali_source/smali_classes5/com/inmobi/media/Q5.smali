.class public abstract Lcom/inmobi/media/Q5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static c:Z

.field public static d:Z

.field public static e:Lorg/json/JSONObject;

.field public static f:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/Q5;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/inmobi/media/Q5;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public static final a()Lorg/json/JSONObject;
    .locals 5

    .line 11
    sget-object v0, Lcom/inmobi/media/Q5;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-boolean v1, Lcom/inmobi/media/Q5;->d:Z

    if-eqz v1, :cond_0

    .line 13
    sget-object v1, Lcom/inmobi/media/Q5;->f:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    sget-object v1, Lcom/inmobi/media/Q5;->f:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 15
    :try_start_1
    sput-boolean v1, Lcom/inmobi/media/Q5;->d:Z

    .line 16
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 17
    sget-object v3, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "unified_id_info_store"

    invoke-static {v1, v3}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v1

    .line 18
    const-string v3, "publisher_provided_unified_id"

    .line 19
    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v1, v1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/inmobi/media/Q5;->f:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :catch_0
    :try_start_3
    sget-object v1, Lcom/inmobi/media/Q5;->f:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    sget-object v1, Lcom/inmobi/media/Q5;->f:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public static final a(Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/inmobi/media/Q5;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/inmobi/media/Q5;->f:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    sput-object p0, Lcom/inmobi/media/Q5;->f:Lorg/json/JSONObject;

    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/inmobi/media/Q5;->d:Z

    .line 5
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "unified_id_info_store"

    invoke-static {p0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v2

    .line 7
    sget-object p0, Lcom/inmobi/media/Q5;->f:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    .line 8
    const-string p0, "publisher_provided_unified_id"

    invoke-virtual {v2, p0}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    const-string v3, "publisher_provided_unified_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final b()Lorg/json/JSONObject;
    .locals 5

    .line 1
    sget-object v0, Lcom/inmobi/media/Q5;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/inmobi/media/Q5;->c:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/Q5;->e:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    :try_start_1
    sput-boolean v1, Lcom/inmobi/media/Q5;->c:Z

    .line 5
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    sget-object v3, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "unified_id_info_store"

    invoke-static {v1, v3}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v1

    const-string v3, "ufids"

    .line 7
    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/inmobi/media/Q5;->e:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :catch_0
    :try_start_3
    sget-object v1, Lcom/inmobi/media/Q5;->e:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    .line 11
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    .line 12
    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static final b(Lorg/json/JSONObject;)V
    .locals 8

    .line 13
    sget-object v0, Lcom/inmobi/media/Q5;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    sput-object p0, Lcom/inmobi/media/Q5;->e:Lorg/json/JSONObject;

    const/4 p0, 0x1

    .line 15
    sput-boolean p0, Lcom/inmobi/media/Q5;->c:Z

    .line 16
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 17
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "unified_id_info_store"

    invoke-static {p0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v2

    .line 18
    sget-object v1, Lcom/inmobi/media/Q5;->e:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 19
    const-string v1, "ufids"

    invoke-virtual {v2, v1}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 20
    :cond_0
    const-string v3, "ufids"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 22
    sget-object v1, Lcom/inmobi/media/Q5;->e:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 23
    const-string v1, "InMobi_unifiedId"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 24
    :cond_1
    const-string v2, "InMobi_unifiedId"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
