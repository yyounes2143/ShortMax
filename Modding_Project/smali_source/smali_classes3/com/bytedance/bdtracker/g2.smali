.class public final Lcom/bytedance/bdtracker/g2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile e:Lcom/bytedance/bdtracker/g2;


# instance fields
.field public final a:Landroid/content/pm/PackageManager;

.field public final b:Landroid/content/ComponentName;

.field public final c:Z

.field public final d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "bdtracker_dr_migrate_detector"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/bytedance/bdtracker/g2;->d:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/bytedance/bdtracker/g2;->a:Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    new-instance v3, Landroid/content/ComponentName;

    .line 24
    .line 25
    const-class v4, Lcom/bytedance/applog/migrate/MigrateDetectorActivity;

    .line 26
    .line 27
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/bytedance/bdtracker/g2;->b:Landroid/content/ComponentName;

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 33
    .line 34
    .line 35
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const-string v0, "component_state"

    .line 37
    .line 38
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v3, "MigrateDetector#isMigrateInternal cs="

    .line 47
    .line 48
    invoke-static {v3}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {p1}, Lcom/bytedance/bdtracker/g2;->a(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, " ss="

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/bytedance/bdtracker/g2;->a(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-array v4, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-interface {v1, v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    if-nez p1, :cond_0

    .line 81
    .line 82
    const/4 p1, 0x2

    .line 83
    if-ne v0, p1, :cond_0

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    :cond_0
    move p1, v2

    .line 88
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/bdtracker/g2;->c:Z

    .line 89
    .line 90
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "MigrateDetector#constructor migrate="

    .line 95
    .line 96
    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-array v1, v2, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-interface {v0, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/bdtracker/g2;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/g2;->e:Lcom/bytedance/bdtracker/g2;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/bdtracker/g2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/bdtracker/g2;->e:Lcom/bytedance/bdtracker/g2;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/bdtracker/g2;

    invoke-direct {v1, p0}, Lcom/bytedance/bdtracker/g2;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/bdtracker/g2;->e:Lcom/bytedance/bdtracker/g2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/bdtracker/g2;->e:Lcom/bytedance/bdtracker/g2;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 2
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "STATE_DISABLED"

    return-object p0

    :cond_1
    const-string p0, "STATE_ENABLED"

    return-object p0

    :cond_2
    const-string p0, "STATE_DEFAULT"

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 3
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MigrateDetector#disableComponent"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/g2;->a:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/bytedance/bdtracker/g2;->b:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/g2;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "component_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
