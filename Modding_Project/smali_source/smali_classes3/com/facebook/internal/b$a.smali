.class public final Lcom/facebook/internal/b$a;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/internal/b$a;-><init>()V

    return-void
.end method

.method private final a(Lcom/facebook/internal/b;)Lcom/facebook/internal/b;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, v0, v1}, Lcom/facebook/internal/b;->f(Lcom/facebook/internal/b;J)V

    .line 6
    .line 7
    .line 8
    sput-object p1, Lcom/facebook/internal/b;->h:Lcom/facebook/internal/b;

    .line 9
    .line 10
    return-object p1
.end method

.method private final b(Landroid/content/Context;)Lcom/facebook/internal/b;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/internal/b$a;->c(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/facebook/internal/b$a;->d(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/facebook/internal/b;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/facebook/internal/b;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method private final c(Landroid/content/Context;)Lcom/facebook/internal/b;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/internal/b$a;->g(Landroid/content/Context;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 10
    .line 11
    const-string v2, "getAdvertisingIdInfo"

    .line 12
    .line 13
    const-class v3, Landroid/content/Context;

    .line 14
    .line 15
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/u0;->M(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/u0;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "getId"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    new-array v4, v3, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-static {v1, v2, v4}, Lcom/facebook/internal/u0;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v4, "isLimitAdTrackingEnabled"

    .line 55
    .line 56
    new-array v5, v3, [Ljava/lang/Class;

    .line 57
    .line 58
    invoke-static {v2, v4, v5}, Lcom/facebook/internal/u0;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance v4, Lcom/facebook/internal/b;

    .line 68
    .line 69
    invoke-direct {v4}, Lcom/facebook/internal/b;-><init>()V

    .line 70
    .line 71
    .line 72
    new-array v5, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {p1, v1, v5}, Lcom/facebook/internal/u0;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v4, v1}, Lcom/facebook/internal/b;->c(Lcom/facebook/internal/b;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-array v1, v3, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {p1, v2, v1}, Lcom/facebook/internal/u0;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Ljava/lang/Boolean;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :goto_0
    invoke-static {v4, v3}, Lcom/facebook/internal/b;->g(Lcom/facebook/internal/b;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    return-object v4

    .line 104
    :cond_5
    :goto_1
    return-object v0

    .line 105
    :goto_2
    const-string v1, "android_id"

    .line 106
    .line 107
    invoke-static {v1, p1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    return-object v0
.end method

.method private final d(Landroid/content/Context;)Lcom/facebook/internal/b;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/internal/b$a;->g(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Lcom/facebook/internal/b$c;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/internal/b$c;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "com.google.android.gms"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 28
    .line 29
    .line 30
    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    :try_start_1
    new-instance v2, Lcom/facebook/internal/b$b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/facebook/internal/b$c;->a()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-direct {v2, v3}, Lcom/facebook/internal/b$b;-><init>(Landroid/os/IBinder;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/facebook/internal/b;

    .line 43
    .line 44
    invoke-direct {v3}, Lcom/facebook/internal/b;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/facebook/internal/b$b;->i()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/facebook/internal/b;->c(Lcom/facebook/internal/b;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/facebook/internal/b$b;->j()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v3, v2}, Lcom/facebook/internal/b;->g(Lcom/facebook/internal/b;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 62
    .line 63
    .line 64
    return-object v3

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    :try_start_2
    const-string v3, "android_id"

    .line 69
    .line 70
    invoke-static {v3, v2}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :catch_1
    :cond_1
    :goto_1
    return-object v1
.end method

.method private final f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method private final g(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.google.android.gms.common.GooglePlayServicesUtil"

    .line 8
    .line 9
    const-string v2, "isGooglePlayServicesAvailable"

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Lcom/facebook/internal/u0;->M(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v2, v0, p1}, Lcom/facebook/internal/u0;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    instance-of v0, p1, Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_1
    return v1
.end method


# virtual methods
.method public final e(Landroid/content/Context;)Lcom/facebook/internal/b;
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "limit_tracking"

    .line 2
    .line 3
    const-string v1, "androidid"

    .line 4
    .line 5
    const-string v2, "aid"

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/internal/b$a;->b(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_9

    .line 30
    .line 31
    sget-object v5, Lcom/facebook/internal/b;->h:Lcom/facebook/internal/b;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    invoke-static {v5}, Lcom/facebook/internal/b;->a(Lcom/facebook/internal/b;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    sub-long/2addr v6, v8

    .line 44
    const-wide/32 v8, 0x36ee80

    .line 45
    .line 46
    .line 47
    cmp-long v6, v6, v8

    .line 48
    .line 49
    if-gez v6, :cond_0

    .line 50
    .line 51
    return-object v5

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :catch_0
    move-exception p1

    .line 56
    move-object v0, v4

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "com.facebook.katana.provider.AttributionIdProvider"

    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const-string v9, "com.facebook.wakizashi.provider.AttributionIdProvider"

    .line 79
    .line 80
    invoke-virtual {v6, v9, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    const-string v8, "contentProviderInfo.packageName"

    .line 89
    .line 90
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v5}, Lcom/facebook/internal/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_1

    .line 98
    .line 99
    const-string v5, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 100
    .line 101
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    :goto_0
    move-object v6, v5

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    if-eqz v6, :cond_2

    .line 108
    .line 109
    iget-object v5, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 110
    .line 111
    const-string v6, "wakizashiProviderInfo.packageName"

    .line 112
    .line 113
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v5}, Lcom/facebook/internal/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_2

    .line 121
    .line 122
    const-string v5, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    .line 123
    .line 124
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    move-object v6, v4

    .line 130
    :goto_1
    invoke-direct {p0, p1}, Lcom/facebook/internal/b$a;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    if-eqz v5, :cond_3

    .line 135
    .line 136
    invoke-static {v3, v5}, Lcom/facebook/internal/b;->d(Lcom/facebook/internal/b;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    if-nez v6, :cond_4

    .line 140
    .line 141
    invoke-direct {p0, v3}, Lcom/facebook/internal/b$a;->a(Lcom/facebook/internal/b;)Lcom/facebook/internal/b;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    return-object p1

    .line 146
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const/4 v9, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    const/4 v8, 0x0

    .line 153
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 154
    .line 155
    .line 156
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-nez v5, :cond_5

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {v3, v2}, Lcom/facebook/internal/b;->e(Lcom/facebook/internal/b;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    if-lez v1, :cond_6

    .line 186
    .line 187
    if-lez v0, :cond_6

    .line 188
    .line 189
    invoke-virtual {v3}, Lcom/facebook/internal/b;->h()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-nez v2, :cond_6

    .line 194
    .line 195
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {v3, v1}, Lcom/facebook/internal/b;->c(Lcom/facebook/internal/b;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-static {v3, v0}, Lcom/facebook/internal/b;->g(Lcom/facebook/internal/b;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    move-object v4, p1

    .line 216
    move-object p1, v0

    .line 217
    goto :goto_5

    .line 218
    :catch_1
    move-exception v0

    .line 219
    move-object v11, v0

    .line 220
    move-object v0, p1

    .line 221
    move-object p1, v11

    .line 222
    goto :goto_4

    .line 223
    :cond_6
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, v3}, Lcom/facebook/internal/b$a;->a(Lcom/facebook/internal/b;)Lcom/facebook/internal/b;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    return-object p1

    .line 231
    :cond_7
    :goto_3
    :try_start_2
    invoke-direct {p0, v3}, Lcom/facebook/internal/b$a;->a(Lcom/facebook/internal/b;)Lcom/facebook/internal/b;

    .line 232
    .line 233
    .line 234
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    if-eqz p1, :cond_8

    .line 236
    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 238
    .line 239
    .line 240
    :cond_8
    return-object v0

    .line 241
    :cond_9
    :try_start_3
    new-instance p1, Lcom/facebook/FacebookException;

    .line 242
    .line 243
    const-string v0, "getAttributionIdentifiers cannot be called on the main thread."

    .line 244
    .line 245
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/facebook/internal/b;->b()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v3, "Caught unexpected exception in getAttributionId(): "

    .line 259
    .line 260
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {v1, p1}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 271
    .line 272
    .line 273
    if-eqz v0, :cond_a

    .line 274
    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 276
    .line 277
    .line 278
    :cond_a
    return-object v4

    .line 279
    :catchall_2
    move-exception p1

    .line 280
    move-object v4, v0

    .line 281
    :goto_5
    if-eqz v4, :cond_b

    .line 282
    .line 283
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 284
    .line 285
    .line 286
    :cond_b
    throw p1
.end method

.method public final h(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/facebook/internal/b$a;->e(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/facebook/internal/b;->l()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method
