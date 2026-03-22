.class public final Luf/a;
.super Ljava/lang/Object;
.source "BadgeUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Luf/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Luf/a;

    .line 2
    .line 3
    invoke-direct {v0}, Luf/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Luf/a;->a:Luf/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "/.ui.activity.RoutingActivity"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_1
    return-object v1
.end method

.method private final e(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Luf/a;->g(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Luf/a;->f(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final f(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "launcher.action.CHANGE_APPLICATION_NOTIFICATION_NUM"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 12
    .line 13
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "packageName"

    .line 22
    .line 23
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    sget-object v2, Luf/a;->a:Luf/a;

    .line 27
    .line 28
    invoke-direct {v2}, Luf/a;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "className"

    .line 33
    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v2, "notificationNum"

    .line 38
    .line 39
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final g(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 7
    .line 8
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "package"

    .line 17
    .line 18
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Luf/a;->a:Luf/a;

    .line 22
    .line 23
    invoke-direct {v2}, Luf/a;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "class"

    .line 28
    .line 29
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "badgenumber"

    .line 33
    .line 34
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const-string p1, "content://com.vivo.abe.provider.launcher.notification.num"

    .line 38
    .line 39
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v2, 0x0

    .line 44
    :try_start_0
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 53
    .line 54
    .line 55
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    :try_start_1
    const-string v1, "change_badge"

    .line 59
    .line 60
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    const-string v1, "result"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object v2, p1

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-object v2, p1

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    :goto_1
    if-eqz v2, :cond_1

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 87
    .line 88
    .line 89
    :cond_1
    throw v0

    .line 90
    :catch_1
    :goto_2
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lfk/a0;->a:Lfk/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/a0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Luf/a;->g(I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Luf/a;->f(I)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lud/b;->a:Lud/b;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lud/b;->L2(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lfk/a0;->a:Lfk/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/a0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lud/b;->a:Lud/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lud/b;->B()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    invoke-direct {p0, v1}, Luf/a;->e(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lud/b;->L2(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-object v0, Lfk/a0;->a:Lfk/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/a0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lud/b;->a:Lud/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lud/b;->B()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    if-ltz v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v1}, Luf/a;->e(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lud/b;->L2(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
