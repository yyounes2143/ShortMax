.class public Lcom/bytedance/bdtracker/r1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final l:[Ljava/lang/String;


# instance fields
.field public volatile a:Z

.field public final b:Landroid/content/Context;

.field public final c:Lcom/bytedance/bdtracker/p1;

.field public volatile d:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Z

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/bdtracker/k1;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/content/SharedPreferences;

.field public final h:Lcom/bytedance/bdtracker/r4;

.field public final i:Lcom/bytedance/bdtracker/d;

.field public j:I

.field public k:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "package"

    .line 2
    .line 3
    const-string v1, "app_version"

    .line 4
    .line 5
    const-string v2, "channel"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/bytedance/bdtracker/r1;->l:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/bytedance/bdtracker/r1;->j:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->k:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 23
    .line 24
    iget-object v1, p3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    new-instance v2, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 34
    .line 35
    iget-object v2, p1, Lcom/bytedance/bdtracker/d;->d:Lcom/bytedance/bdtracker/u1;

    .line 36
    .line 37
    invoke-virtual {v2, p1, p2, p3}, Lcom/bytedance/bdtracker/u1;->a(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)Lcom/bytedance/bdtracker/r4;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;

    .line 42
    .line 43
    const-string p1, "forbid_report_phone_detail_info"

    .line 44
    .line 45
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput-boolean p1, p0, Lcom/bytedance/bdtracker/r1;->k:Z

    .line 50
    .line 51
    iget-object p1, p3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    const/4 p2, 0x1

    .line 54
    const-string v1, "is_first_app_launch"

    .line 55
    .line 56
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object p2, p3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getUserUniqueId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iget-object v2, p3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getUserUniqueIdType()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {p2}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_0

    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Lcom/bytedance/bdtracker/r1;->h(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_1

    .line 88
    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lcom/bytedance/bdtracker/r1;->i(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 97
    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 11
    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public final a(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v1, "ab_sdk_version"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v1, "DeviceManager"

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addExposedVid ready added: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/r1;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/bdtracker/d1;->onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/r1;->d()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 45
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "DeviceManager"

    .line 46
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Set custom header failed"

    invoke-interface {v1, v2, v4, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/r1;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 41
    iget-object v1, v0, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 42
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "ConfigManager"

    .line 43
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "setAbConfig:{}"

    invoke-interface {v1, v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    const-string v3, "ab_configure"

    invoke-static {v2, v3, v1}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bytedance/bdtracker/p1;->g:Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/bdtracker/q1;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/bdtracker/q1;-><init>(Lcom/bytedance/bdtracker/p1;Lorg/json/JSONObject;)V

    const-string v0, "set_abconfig"

    invoke-static {v0, v1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/r1;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v1}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    iput-object v2, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/bdtracker/s1;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/bdtracker/s1;-><init>(Lcom/bytedance/bdtracker/r1;Lorg/json/JSONObject;)V

    const-string v2, "set_header"

    invoke-static {v2, v1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 50
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 51
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v3, "DeviceManager"

    .line 52
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "Update header:{} to value:{} failed"

    :try_start_2
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 53
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "DeviceManager"

    .line 54
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Update header:{} from old:{} to new value:{}"

    invoke-interface {v1, v2, p2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v5, p6

    monitor-enter p0

    :try_start_0
    iget-object v4, v1, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v6, "DeviceManager"

    .line 18
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveRegisterInfo -> uuid:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", did:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", iid:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", ssid:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", did:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", cd:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", response:{}"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v6, v8, v11}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/r1;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 19
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 20
    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "saveRegisterInfo interrupted for uuid is changed"

    invoke-interface {v0, v11, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v11

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    :try_start_1
    const-string v2, "new_user"

    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v11

    goto :goto_0

    :cond_1
    move v2, v12

    :goto_0
    iput-boolean v2, v1, Lcom/bytedance/bdtracker/r1;->e:Z

    const-string v2, "device_token"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v13

    invoke-static/range {p4 .. p4}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v14

    invoke-static/range {p6 .. p6}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v15

    invoke-static/range {p7 .. p7}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static/range {p5 .. p5}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v4

    iget-object v6, v1, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    const-string v8, "version_code"

    invoke-interface {v6, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 21
    iget-object v8, v1, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v11, "version_code"

    .line 22
    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v11, v1, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    if-eq v6, v8, :cond_2

    const-string v6, "version_code"

    invoke-interface {v11, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 p7, v10

    goto/16 :goto_6

    :cond_2
    :goto_1
    iget-object v6, v1, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    const-string v8, "channel"

    const-string v12, ""

    invoke-interface {v6, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 23
    iget-object v8, v1, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v12, "channel"

    const-string v9, ""

    .line 24
    invoke-virtual {v8, v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "channel"

    invoke-interface {v11, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const-string v6, "device_token"

    invoke-interface {v11, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v13, :cond_4

    if-eqz v15, :cond_5

    if-eqz v10, :cond_5

    :cond_4
    if-eqz v14, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v0, "register_time"

    invoke-interface {v11, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "register_time"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-nez v13, :cond_7

    if-eqz v15, :cond_6

    if-nez v10, :cond_7

    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "response"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v6, "tt_fetch_did_error"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    .line 25
    :try_start_6
    invoke-virtual {v0, v6, v2, v8}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 26
    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 27
    :try_start_7
    check-cast v0, Lcom/bytedance/bdtracker/n4;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/n4;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    const-string v6, "bd_did"

    const/4 v8, 0x0

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 28
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v8, "DeviceManager"

    .line 29
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device: od="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " nd="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ck="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move/from16 p7, v10

    const/4 v12, 0x0

    :try_start_9
    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v2, v8, v9, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_9

    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v8, "device_id"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v8, v2}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v2, "device_id"

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iput-object v8, v1, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    new-instance v2, Lcom/bytedance/bdtracker/s1;

    invoke-direct {v2, v1, v8}, Lcom/bytedance/bdtracker/s1;-><init>(Lcom/bytedance/bdtracker/r1;Lorg/json/JSONObject;)V

    const-string v8, "set_header"

    invoke-static {v8, v2}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 31
    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 32
    :try_start_a
    check-cast v2, Lcom/bytedance/bdtracker/n4;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/n4;->b(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v8, 0x1

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    :cond_a
    :goto_4
    if-eqz v15, :cond_b

    const-string v0, "bd_did"

    invoke-virtual {v1, v0, v5}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "bd_did"

    invoke-interface {v11, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v8, 0x1

    .line 33
    :cond_b
    iget-object v0, v1, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v2, "install_id"

    const-string v3, ""

    .line 34
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v14, :cond_c

    const-string v2, "install_id"

    invoke-virtual {v1, v2, v7}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "install_id"

    invoke-interface {v11, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v8, 0x1

    .line 35
    :cond_c
    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v3, "ssid"

    const-string v9, ""

    .line 36
    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_d

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Lcom/bytedance/bdtracker/r1;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    move-object/from16 v10, p5

    :cond_e
    move v3, v8

    :goto_5
    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 37
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    if-eqz v2, :cond_f

    move-object v4, v6

    move-object/from16 v5, p6

    move-object v6, v0

    move-object/from16 v7, p4

    move-object v8, v9

    move-object/from16 v9, p5

    .line 38
    invoke-virtual/range {v2 .. v9}, Lcom/bytedance/bdtracker/d1;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v4, 0x0

    goto :goto_7

    :goto_6
    :try_start_c
    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 39
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v3, "DeviceManager"

    .line 40
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "JSON handle failed"

    invoke-interface {v2, v3, v6, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_7
    if-nez v13, :cond_10

    if-eqz v15, :cond_11

    if-eqz p7, :cond_11

    :cond_10
    if-eqz v14, :cond_11

    const/4 v11, 0x1

    goto :goto_8

    :cond_11
    move v11, v4

    :goto_8
    monitor-exit p0

    return v11

    :goto_9
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;

    instance-of v1, v0, Lcom/bytedance/bdtracker/n4;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/bytedance/bdtracker/n4;

    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 1
    iget-object v2, v0, Lcom/bytedance/bdtracker/n4;->e:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 3
    iget-object v3, v0, Lcom/bytedance/bdtracker/n4;->g:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceParamsProvider#clearDidAndIid clearKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sDeviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear_key_prefix"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/bdtracker/n4;->f:Lcom/bytedance/bdtracker/p1;

    .line 4
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 5
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "device_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v4, "install_id"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/bytedance/bdtracker/n4;->b:Lcom/bytedance/bdtracker/v3;

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/v3;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/bytedance/bdtracker/n4;->e:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/n4;->g:Ljava/util/List;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "clearKey:{} installId and deviceId finish"

    invoke-interface {v1, v0, v2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/bytedance/bdtracker/n4;->e:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/n4;->g:Ljava/util/List;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "clearKey:{} is already cleared"

    invoke-interface {v1, v0, v2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 11
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 12
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "device_token"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "custom"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 16
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v1, "header_custom_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "user_unique_id"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 14
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    invoke-virtual {p0, p2}, Lcom/bytedance/bdtracker/r1;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v1, "bd_did"

    const-string v2, ""

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final declared-synchronized c(Lorg/json/JSONObject;)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 5
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "null abconfig"

    invoke-interface {v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 6
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v2, "ab_sdk_version"

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "vid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    iget-object v6, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v7, "DeviceManager"

    .line 9
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "JSON handle failed"

    invoke-interface {v6, v7, v9, v5, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/p1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v2}, Lcom/bytedance/bdtracker/r1;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/r1;->e(Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v1, "custom"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    const-string v3, "header_custom_info"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/r1;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/bytedance/bdtracker/r1;->b(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ab_sdk_version"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 2
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, p1}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v1, "install_id"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v2, "ab_sdk_version"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 5
    iget-object v2, v0, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v3, "ConfigManager"

    .line 7
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setExternalAbVersion:{}"

    invoke-interface {v2, v3, v5, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    const-string v3, "external_ab_version"

    invoke-static {v2, v3, p1}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/bytedance/bdtracker/p1;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/r1;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v1, "openudid"

    const-string v2, ""

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "ssid"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/p1;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 2
    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v3, "install_id"

    .line 4
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v4, "bd_did"

    .line 6
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    const-string v1, "version_code"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const/4 v3, -0x1

    .line 8
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_2
    return v3
.end method

.method public h(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "user_unique_id"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 9
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    const-string v2, "ssid"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    const-string v0, "user_unique_id_type"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 5
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, p1}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v1, "udid"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 8
    .line 9
    const-string v2, "user_unique_id"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->f()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    :goto_0
    return-object v1
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "user_unique_id_type"

    .line 9
    .line 10
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public m()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 2
    .line 3
    const-string v1, "version_code"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    :goto_1
    const/4 v4, 0x3

    .line 23
    if-ge v3, v4, :cond_2

    .line 24
    .line 25
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 2
    .line 3
    const-string v1, "app_version"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/bdtracker/u4;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    const/4 v3, 0x3

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bytedance/bdtracker/u4;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "bd_did"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v3, "install_id"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public q()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/bdtracker/l1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Lcom/bytedance/bdtracker/l1;-><init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/p1;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/bdtracker/o1;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 24
    .line 25
    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/bdtracker/o1;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 32
    .line 33
    new-instance v1, Lcom/bytedance/bdtracker/v1;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v1, v2, v3}, Lcom/bytedance/bdtracker/v1;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 46
    .line 47
    new-instance v1, Lcom/bytedance/bdtracker/x1;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/bytedance/bdtracker/x1;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 58
    .line 59
    new-instance v1, Lcom/bytedance/bdtracker/c2;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getSensitiveInfoProvider()Lcom/bytedance/applog/ISensitiveInfoProvider;

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-direct {v1}, Lcom/bytedance/bdtracker/c2;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 85
    .line 86
    new-instance v1, Lcom/bytedance/bdtracker/y1;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 89
    .line 90
    invoke-direct {v1, v2}, Lcom/bytedance/bdtracker/y1;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 97
    .line 98
    new-instance v1, Lcom/bytedance/bdtracker/a2;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 103
    .line 104
    iget-object v4, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 105
    .line 106
    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/bdtracker/a2;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 113
    .line 114
    new-instance v1, Lcom/bytedance/bdtracker/b2;

    .line 115
    .line 116
    invoke-direct {v1}, Lcom/bytedance/bdtracker/b2;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 123
    .line 124
    new-instance v1, Lcom/bytedance/bdtracker/d2;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 127
    .line 128
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 129
    .line 130
    invoke-direct {v1, v2, v3, p0}, Lcom/bytedance/bdtracker/d2;-><init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;Lcom/bytedance/bdtracker/r1;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 137
    .line 138
    new-instance v1, Lcom/bytedance/bdtracker/e2;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 143
    .line 144
    invoke-direct {v1, v2, v3}, Lcom/bytedance/bdtracker/e2;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 151
    .line 152
    new-instance v1, Lcom/bytedance/bdtracker/f2;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 155
    .line 156
    invoke-direct {v1, v2}, Lcom/bytedance/bdtracker/f2;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 163
    .line 164
    new-instance v1, Lcom/bytedance/bdtracker/t1;

    .line 165
    .line 166
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 167
    .line 168
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 169
    .line 170
    invoke-direct {v1, v2, v3, p0}, Lcom/bytedance/bdtracker/t1;-><init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;Lcom/bytedance/bdtracker/r1;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 177
    .line 178
    new-instance v1, Lcom/bytedance/bdtracker/z1;

    .line 179
    .line 180
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 181
    .line 182
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 183
    .line 184
    invoke-direct {v1, v2, v3}, Lcom/bytedance/bdtracker/z1;-><init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 191
    .line 192
    new-instance v1, Lcom/bytedance/bdtracker/n1;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 195
    .line 196
    invoke-direct {v1, v2}, Lcom/bytedance/bdtracker/n1;-><init>(Lcom/bytedance/bdtracker/p1;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 203
    .line 204
    new-instance v1, Lcom/bytedance/bdtracker/i1;

    .line 205
    .line 206
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 207
    .line 208
    invoke-direct {v1, v2}, Lcom/bytedance/bdtracker/i1;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 215
    .line 216
    new-instance v1, Lcom/bytedance/bdtracker/m1;

    .line 217
    .line 218
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 219
    .line 220
    invoke-direct {v1, v2}, Lcom/bytedance/bdtracker/m1;-><init>(Lcom/bytedance/bdtracker/d;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 227
    .line 228
    new-instance v1, Lcom/bytedance/bdtracker/w1;

    .line 229
    .line 230
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 231
    .line 232
    iget-object v3, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 233
    .line 234
    invoke-direct {v1, v2, v3}, Lcom/bytedance/bdtracker/w1;-><init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 241
    .line 242
    new-instance v1, Lorg/json/JSONObject;

    .line 243
    .line 244
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {v1, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Ljava/util/Set;

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const/4 v2, 0x0

    .line 257
    const/4 v3, 0x1

    .line 258
    move v5, v2

    .line 259
    move v6, v5

    .line 260
    move v4, v3

    .line 261
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    const/16 v8, 0xa

    .line 266
    .line 267
    if-eqz v7, :cond_7

    .line 268
    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    check-cast v7, Lcom/bytedance/bdtracker/k1;

    .line 274
    .line 275
    iget-object v9, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 276
    .line 277
    iget-object v9, v9, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 278
    .line 279
    invoke-virtual {v9}, Lcom/bytedance/applog/InitConfig;->getLoaderFilters()Ljava/util/Set;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/k1;->a()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_1

    .line 292
    .line 293
    iget-object v8, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 294
    .line 295
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 296
    .line 297
    const-string v9, "Filter "

    .line 298
    .line 299
    invoke-static {v9}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/k1;->a()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v7, " Loader"

    .line 311
    .line 312
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    new-array v9, v2, [Ljava/lang/Object;

    .line 320
    .line 321
    invoke-interface {v8, v7, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    goto :goto_0

    .line 325
    :cond_1
    iget-boolean v9, v7, Lcom/bytedance/bdtracker/k1;->a:Z

    .line 326
    .line 327
    if-eqz v9, :cond_2

    .line 328
    .line 329
    iget-boolean v9, v7, Lcom/bytedance/bdtracker/k1;->c:Z

    .line 330
    .line 331
    if-nez v9, :cond_2

    .line 332
    .line 333
    iget-object v9, p0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 334
    .line 335
    invoke-virtual {v9}, Lcom/bytedance/bdtracker/p1;->h()Z

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    if-nez v9, :cond_4

    .line 340
    .line 341
    iget-boolean v9, v7, Lcom/bytedance/bdtracker/k1;->d:Z

    .line 342
    .line 343
    if-eqz v9, :cond_4

    .line 344
    .line 345
    :cond_2
    :try_start_0
    invoke-virtual {v7, v1}, Lcom/bytedance/bdtracker/k1;->a(Lorg/json/JSONObject;)Z

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    iput-boolean v9, v7, Lcom/bytedance/bdtracker/k1;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .line 351
    goto :goto_3

    .line 352
    :catch_0
    move-exception v9

    .line 353
    goto :goto_1

    .line 354
    :catch_1
    move-exception v8

    .line 355
    goto :goto_2

    .line 356
    :goto_1
    iget-boolean v10, v7, Lcom/bytedance/bdtracker/k1;->b:Z

    .line 357
    .line 358
    if-nez v10, :cond_3

    .line 359
    .line 360
    add-int/lit8 v5, v5, 0x1

    .line 361
    .line 362
    iget-object v10, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 363
    .line 364
    iget-object v10, v10, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 365
    .line 366
    const-string v11, "DeviceManager"

    .line 367
    .line 368
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v11

    .line 372
    const-string v12, "loadHeader mCountPermission: "

    .line 373
    .line 374
    invoke-static {v12}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    iget v13, p0, Lcom/bytedance/bdtracker/r1;->j:I

    .line 379
    .line 380
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    invoke-interface {v10, v11, v12, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    iget-boolean v9, v7, Lcom/bytedance/bdtracker/k1;->a:Z

    .line 395
    .line 396
    if-nez v9, :cond_3

    .line 397
    .line 398
    iget v9, p0, Lcom/bytedance/bdtracker/r1;->j:I

    .line 399
    .line 400
    if-le v9, v8, :cond_3

    .line 401
    .line 402
    iput-boolean v3, v7, Lcom/bytedance/bdtracker/k1;->a:Z

    .line 403
    .line 404
    goto :goto_3

    .line 405
    :goto_2
    iget-object v9, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 406
    .line 407
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 408
    .line 409
    new-array v10, v2, [Ljava/lang/Object;

    .line 410
    .line 411
    const-string v11, "loader load error"

    .line 412
    .line 413
    invoke-interface {v9, v11, v8, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_3
    :goto_3
    iget-boolean v8, v7, Lcom/bytedance/bdtracker/k1;->a:Z

    .line 417
    .line 418
    if-nez v8, :cond_4

    .line 419
    .line 420
    iget-boolean v8, v7, Lcom/bytedance/bdtracker/k1;->b:Z

    .line 421
    .line 422
    if-nez v8, :cond_4

    .line 423
    .line 424
    add-int/lit8 v6, v6, 0x1

    .line 425
    .line 426
    :cond_4
    iget-object v8, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 427
    .line 428
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 429
    .line 430
    const-string v9, "DeviceManager"

    .line 431
    .line 432
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/k1;->a()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v10

    .line 440
    iget-boolean v11, v7, Lcom/bytedance/bdtracker/k1;->a:Z

    .line 441
    .line 442
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 443
    .line 444
    .line 445
    move-result-object v11

    .line 446
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v10

    .line 450
    const-string v11, "Loader:{} is ready:{}"

    .line 451
    .line 452
    invoke-interface {v8, v9, v11, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    iget-boolean v8, v7, Lcom/bytedance/bdtracker/k1;->a:Z

    .line 456
    .line 457
    if-nez v8, :cond_6

    .line 458
    .line 459
    iget-boolean v7, v7, Lcom/bytedance/bdtracker/k1;->b:Z

    .line 460
    .line 461
    if-eqz v7, :cond_5

    .line 462
    .line 463
    goto :goto_4

    .line 464
    :cond_5
    move v7, v2

    .line 465
    goto :goto_5

    .line 466
    :cond_6
    :goto_4
    move v7, v3

    .line 467
    :goto_5
    and-int/2addr v4, v7

    .line 468
    goto/16 :goto_0

    .line 469
    .line 470
    :cond_7
    if-eqz v4, :cond_9

    .line 471
    .line 472
    sget-object v0, Lcom/bytedance/bdtracker/r1;->l:[Ljava/lang/String;

    .line 473
    .line 474
    array-length v7, v0

    .line 475
    move v9, v2

    .line 476
    :goto_6
    if-ge v9, v7, :cond_9

    .line 477
    .line 478
    aget-object v10, v0, v9

    .line 479
    .line 480
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 485
    .line 486
    .line 487
    move-result v11

    .line 488
    xor-int/lit8 v12, v11, 0x1

    .line 489
    .line 490
    and-int/2addr v4, v12

    .line 491
    if-eqz v11, :cond_8

    .line 492
    .line 493
    iget-object v11, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 494
    .line 495
    iget-object v11, v11, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 496
    .line 497
    const-string v12, "DeviceManager"

    .line 498
    .line 499
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 500
    .line 501
    .line 502
    move-result-object v12

    .line 503
    new-instance v13, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string v14, "Key "

    .line 509
    .line 510
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v10, " is empty!"

    .line 517
    .line 518
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v10

    .line 525
    new-array v13, v2, [Ljava/lang/Object;

    .line 526
    .line 527
    invoke-interface {v11, v12, v10, v13}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 531
    .line 532
    goto :goto_6

    .line 533
    :cond_9
    monitor-enter p0

    .line 534
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 535
    .line 536
    iput-object v1, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 537
    .line 538
    new-instance v2, Lcom/bytedance/bdtracker/s1;

    .line 539
    .line 540
    invoke-direct {v2, p0, v1}, Lcom/bytedance/bdtracker/s1;-><init>(Lcom/bytedance/bdtracker/r1;Lorg/json/JSONObject;)V

    .line 541
    .line 542
    .line 543
    const-string v1, "set_header"

    .line 544
    .line 545
    invoke-static {v1, v2}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_a

    .line 557
    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    check-cast v2, Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    invoke-virtual {p0, v2, v7}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    goto :goto_7

    .line 572
    :catchall_0
    move-exception v0

    .line 573
    goto :goto_8

    .line 574
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    iput-boolean v4, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 576
    .line 577
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 578
    .line 579
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 580
    .line 581
    const-string v1, "DeviceManager"

    .line 582
    .line 583
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    iget-boolean v2, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 588
    .line 589
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    iget v4, p0, Lcom/bytedance/bdtracker/r1;->j:I

    .line 594
    .line 595
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    iget-object v7, p0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 600
    .line 601
    filled-new-array {v2, v4, v7}, [Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    const-string v4, "Loader header ready:{}, permission count:{}, header:{}"

    .line 606
    .line 607
    invoke-interface {v0, v1, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    if-lez v5, :cond_b

    .line 611
    .line 612
    if-ne v5, v6, :cond_b

    .line 613
    .line 614
    iget v0, p0, Lcom/bytedance/bdtracker/r1;->j:I

    .line 615
    .line 616
    add-int/2addr v0, v3

    .line 617
    iput v0, p0, Lcom/bytedance/bdtracker/r1;->j:I

    .line 618
    .line 619
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_b

    .line 624
    .line 625
    iget v0, p0, Lcom/bytedance/bdtracker/r1;->j:I

    .line 626
    .line 627
    add-int/2addr v0, v8

    .line 628
    iput v0, p0, Lcom/bytedance/bdtracker/r1;->j:I

    .line 629
    .line 630
    :cond_b
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 631
    .line 632
    if-eqz v0, :cond_c

    .line 633
    .line 634
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 635
    .line 636
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    .line 637
    .line 638
    if-eqz v0, :cond_c

    .line 639
    .line 640
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/r1;->c()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/r1;->f()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/r1;->i()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/bdtracker/d1;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/r1;->i()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-eqz v0, :cond_d

    .line 664
    .line 665
    new-instance v0, Lcom/bytedance/bdtracker/r1$a;

    .line 666
    .line 667
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/r1$a;-><init>(Lcom/bytedance/bdtracker/r1;)V

    .line 668
    .line 669
    .line 670
    const-string v1, "local_did_load"

    .line 671
    .line 672
    invoke-static {v1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 673
    .line 674
    .line 675
    :cond_d
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->a:Z

    .line 676
    .line 677
    return v0

    .line 678
    :goto_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    throw v0
.end method

.method public r()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/r1;->k:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method
