.class public final Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;
.super Ljava/lang/Object;
.source "RemoteServiceWrapper.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;,
        Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$a;,
        Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->a:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->b:Ljava/lang/String;

    .line 15
    .line 16
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

.method private final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8

    .line 1
    const-string v0, "com.facebook.wakizashi"

    .line 2
    .line 3
    const-string v1, "com.facebook.katana"

    .line 4
    .line 5
    const-string v2, "ReceiverService"

    .line 6
    .line 7
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    new-instance v5, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    invoke-static {p1, v1}, Lcom/facebook/internal/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    return-object v5

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/facebook/internal/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_2
    return-object v4

    .line 67
    :goto_0
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object v4
.end method

.method public static final b()Z
    .locals 4

    .line 1
    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->c:Ljava/lang/Boolean;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v3, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->a:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 20
    .line 21
    invoke-direct {v3, v1}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->c:Ljava/lang/Boolean;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->c:Ljava/lang/Boolean;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_3
    return v2

    .line 48
    :goto_2
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return v2
.end method

.method public static final c(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)",
            "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "applicationId"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "appEvents"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->a:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 22
    .line 23
    sget-object v3, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;

    .line 24
    .line 25
    invoke-direct {v1, v3, p0, p1}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->d(Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v2
.end method

.method private final d(Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)",
            "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;"
        }
    .end annotation

    .line 1
    const-string v0, "Unbound from the remote service"

    .line 2
    .line 3
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;->SERVICE_NOT_AVAILABLE:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;

    .line 12
    .line 13
    invoke-static {}, La2/h;->b()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {p0, v3}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_4

    .line 25
    .line 26
    new-instance v5, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$a;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$a;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 33
    .line 34
    .line 35
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v5}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$a;->a()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-static {v4}, Lu4/a$a;->i(Landroid/os/IBinder;)Lu4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/ondeviceprocessing/b;->a(Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {v1, p1}, Lu4/a;->g(Landroid/os/Bundle;)I

    .line 55
    .line 56
    .line 57
    sget-object p2, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->b:Ljava/lang/String;

    .line 58
    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "Successfully sent events to the remote service: "

    .line 65
    .line 66
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p2, p1}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_4

    .line 82
    :catch_0
    move-exception p1

    .line 83
    goto :goto_1

    .line 84
    :catch_1
    move-exception p1

    .line 85
    goto :goto_3

    .line 86
    :cond_1
    :goto_0
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;->OPERATION_SUCCESS:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    :cond_2
    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    goto :goto_6

    .line 99
    :goto_1
    :try_start_3
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;->SERVICE_ERROR:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;

    .line 100
    .line 101
    sget-object p2, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p2, p1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    .line 106
    :try_start_4
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-static {p2, v0}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :goto_3
    :try_start_5
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;->SERVICE_ERROR:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;

    .line 114
    .line 115
    sget-object p2, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->b:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p2, p1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    .line 119
    .line 120
    :try_start_6
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :goto_4
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 125
    .line 126
    .line 127
    sget-object p2, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->b:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p2, v0}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_3
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;->SERVICE_ERROR:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 134
    .line 135
    :cond_4
    :goto_5
    return-object v1

    .line 136
    :goto_6
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object v2
.end method

.method public static final e(Ljava/lang/String;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "applicationId"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->a:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    .line 17
    .line 18
    sget-object v3, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;->MOBILE_APP_INSTALL:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;

    .line 19
    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-direct {v1, v3, p0, v4}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->d(Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v2
.end method
