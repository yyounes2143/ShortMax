.class public final Lcom/bytedance/bdtracker/q4$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/q4;->a(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/q4$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/q4$a;->b:Lcom/bytedance/bdtracker/p1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/q4$a;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6

    .line 2
    sget-object v0, Lcom/bytedance/bdtracker/q4;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Lcom/bytedance/bdtracker/q4;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/bdtracker/q4;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Lcom/bytedance/bdtracker/q4;->a:Ljava/lang/String;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/q4$a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_2
    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/NoClassDefFoundError;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "Query Gaid failed"

    const/4 v5, 0x0

    :try_start_3
    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/bytedance/bdtracker/q4$a;->b:Lcom/bytedance/bdtracker/p1;

    .line 8
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    const-string v3, "google_aid"

    .line 9
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/bytedance/bdtracker/q4$a;->b:Lcom/bytedance/bdtracker/p1;

    .line 10
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    const-string v4, "google_aid"

    .line 11
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/bdtracker/q4$a;->b:Lcom/bytedance/bdtracker/p1;

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "google_aid"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    :cond_5
    :goto_2
    sput-object v2, Lcom/bytedance/bdtracker/q4;->a:Ljava/lang/String;

    .line 16
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 17
    :cond_6
    :goto_4
    sget-object v0, Lcom/bytedance/bdtracker/q4;->a:Ljava/lang/String;

    return-object v0
.end method
