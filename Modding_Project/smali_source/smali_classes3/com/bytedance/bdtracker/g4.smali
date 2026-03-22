.class public Lcom/bytedance/bdtracker/g4;
.super Lcom/bytedance/bdtracker/v3;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/g4$a;
    }
.end annotation


# static fields
.field public static f:Lcom/bytedance/bdtracker/g4;


# instance fields
.field public final c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/bdtracker/v3;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/g4;->e:Z

    invoke-static {p1, p2, v0}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/bdtracker/g4;->c:Landroid/content/SharedPreferences;

    invoke-static {p1, p3, v0}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/g4;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/bytedance/bdtracker/v3;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/g4;->e:Z

    invoke-static {p1, p2, v0}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/g4;->c:Landroid/content/SharedPreferences;

    iput-boolean p3, p0, Lcom/bytedance/bdtracker/g4;->e:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 7

    .line 1
    const-string v0, "SharedPreferenceCacheHelper"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p0, p1}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "Failed to migrate shared preferences."

    :try_start_2
    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p0, v2

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    :goto_1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Create protected storage context failed"

    invoke-interface {v3, v0, v4, p0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/bytedance/bdtracker/g4;
    .locals 4

    .line 2
    const-class v0, Lcom/bytedance/bdtracker/g4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/bdtracker/g4;->f:Lcom/bytedance/bdtracker/g4;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/bdtracker/g4;

    const-string v2, "_global_cache"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/bdtracker/g4;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v1, Lcom/bytedance/bdtracker/g4;->f:Lcom/bytedance/bdtracker/g4;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/bytedance/bdtracker/g4;->f:Lcom/bytedance/bdtracker/g4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/bytedance/bdtracker/g4$a;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/g4;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/g4;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    :try_start_1
    check-cast p2, Lcom/bytedance/applog/util/HardwareUtils$a;

    invoke-virtual {p2}, Lcom/bytedance/applog/util/HardwareUtils$a;->a()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/bdtracker/g4;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/g4;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/g4;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/bdtracker/v3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/g4;->e:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/g4;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/bdtracker/g4;->e:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/g4;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public c(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    const-string v0, "device_id"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/bdtracker/g4;->d:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/g4;->c:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    :goto_0
    return-object p1
.end method
