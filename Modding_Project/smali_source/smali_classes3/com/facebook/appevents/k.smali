.class public final Lcom/facebook/appevents/k;
.super Ljava/lang/Object;
.source "AppEventQueue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:I

.field private static volatile d:Lcom/facebook/appevents/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private static f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final g:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/appevents/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/appevents/k;->a:Lcom/facebook/appevents/k;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/appevents/k;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/appevents/k;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0x64

    .line 17
    .line 18
    sput v0, Lcom/facebook/appevents/k;->c:I

    .line 19
    .line 20
    new-instance v0, Lcom/facebook/appevents/c;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/facebook/appevents/c;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/facebook/appevents/k;->d:Lcom/facebook/appevents/c;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/facebook/appevents/k;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    .line 33
    new-instance v0, Lcom/facebook/appevents/e;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/facebook/appevents/e;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/facebook/appevents/k;->g:Ljava/lang/Runnable;

    .line 39
    .line 40
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

.method public static synthetic a(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/j0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/appevents/k;->r(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/j0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/facebook/appevents/FlushReason;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/k;->m(Lcom/facebook/appevents/FlushReason;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/facebook/appevents/k;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/appevents/k;->h(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/j0;Lcom/facebook/appevents/g0;Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/k;->j(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/j0;Lcom/facebook/appevents/g0;Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/facebook/appevents/k;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final g(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 3
    .param p0    # Lcom/facebook/appevents/AccessTokenAppIdPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/appevents/AppEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "accessTokenAppId"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "appEvent"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/facebook/appevents/k;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    new-instance v2, Lcom/facebook/appevents/f;

    .line 23
    .line 24
    invoke-direct {v2, p0, p1}, Lcom/facebook/appevents/f;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static final h(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 4

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "$accessTokenAppId"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "$appEvent"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/facebook/appevents/k;->d:Lcom/facebook/appevents/c;

    .line 21
    .line 22
    invoke-virtual {v1, p0, p1}, Lcom/facebook/appevents/c;->a(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->b:Lcom/facebook/appevents/AppEventsLogger$a;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger$a;->c()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object p1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 32
    .line 33
    if-eq p0, p1, :cond_1

    .line 34
    .line 35
    sget-object p0, Lcom/facebook/appevents/k;->d:Lcom/facebook/appevents/c;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/facebook/appevents/c;->d()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    sget p1, Lcom/facebook/appevents/k;->c:I

    .line 42
    .line 43
    if-le p0, p1, :cond_1

    .line 44
    .line 45
    sget-object p0, Lcom/facebook/appevents/FlushReason;->EVENT_THRESHOLD:Lcom/facebook/appevents/FlushReason;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/facebook/appevents/k;->n(Lcom/facebook/appevents/FlushReason;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    sget-object p0, Lcom/facebook/appevents/k;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 54
    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    sget-object p0, Lcom/facebook/appevents/k;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    .line 59
    sget-object p1, Lcom/facebook/appevents/k;->g:Ljava/lang/Runnable;

    .line 60
    .line 61
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    .line 63
    const-wide/16 v2, 0xf

    .line 64
    .line 65
    invoke-interface {p0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sput-object p0, Lcom/facebook/appevents/k;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void

    .line 72
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static final i(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/j0;ZLcom/facebook/appevents/g0;)Lcom/facebook/GraphRequest;
    .locals 8
    .param p0    # Lcom/facebook/appevents/AccessTokenAppIdPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/appevents/j0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/appevents/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

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
    const-string v1, "accessTokenAppId"

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
    const-string v1, "flushState"

    .line 22
    .line 23
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->d()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v1, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->u(Ljava/lang/String;Z)Lcom/facebook/internal/p;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object v5, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 36
    .line 37
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 38
    .line 39
    const-string v6, "%s/activities"

    .line 40
    .line 41
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v7, 0x1

    .line 46
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v6, "format(format, *args)"

    .line 55
    .line 56
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v2, v1, v2, v2}, Lcom/facebook/GraphRequest$c;->A(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v7}, Lcom/facebook/GraphRequest;->E(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->u()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-nez v5, :cond_1

    .line 71
    .line 72
    new-instance v5, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    const-string v6, "access_token"

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->b()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v6, Lcom/facebook/appevents/h0;->b:Lcom/facebook/appevents/h0$a;

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/facebook/appevents/h0$a;->e()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    if-eqz v6, :cond_2

    .line 96
    .line 97
    const-string v7, "device_token"

    .line 98
    .line 99
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    sget-object v6, Lcom/facebook/appevents/o;->c:Lcom/facebook/appevents/o$a;

    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/facebook/appevents/o$a;->l()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-eqz v6, :cond_3

    .line 109
    .line 110
    const-string v7, "install_referrer"

    .line 111
    .line 112
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {v1, v5}, Lcom/facebook/GraphRequest;->H(Landroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/facebook/internal/p;->z()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    :cond_4
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {p1, v1, v4, v3, p2}, Lcom/facebook/appevents/j0;->e(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-nez p2, :cond_5

    .line 133
    .line 134
    return-object v2

    .line 135
    :cond_5
    invoke-virtual {p3}, Lcom/facebook/appevents/g0;->a()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    add-int/2addr v3, p2

    .line 140
    invoke-virtual {p3, v3}, Lcom/facebook/appevents/g0;->c(I)V

    .line 141
    .line 142
    .line 143
    new-instance p2, Lcom/facebook/appevents/h;

    .line 144
    .line 145
    invoke-direct {p2, p0, v1, p1, p3}, Lcom/facebook/appevents/h;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/j0;Lcom/facebook/appevents/g0;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p2}, Lcom/facebook/GraphRequest;->D(Lcom/facebook/GraphRequest$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    return-object v2
.end method

.method private static final j(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/j0;Lcom/facebook/appevents/g0;Lcom/facebook/b0;)V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "$accessTokenAppId"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "$postRequest"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "$appEvents"

    .line 21
    .line 22
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "$flushState"

    .line 26
    .line 27
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "response"

    .line 31
    .line 32
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1, p4, p2, p3}, Lcom/facebook/appevents/k;->q(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/b0;Lcom/facebook/appevents/j0;Lcom/facebook/appevents/g0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final k(Lcom/facebook/appevents/c;Lcom/facebook/appevents/g0;)Ljava/util/List;
    .locals 7
    .param p0    # Lcom/facebook/appevents/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/appevents/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/c;",
            "Lcom/facebook/appevents/g0;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

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
    const-string v1, "appEventCollection"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "flushResults"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/facebook/v;->A(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/facebook/appevents/c;->f()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 53
    .line 54
    invoke-virtual {p0, v5}, Lcom/facebook/appevents/c;->c(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/j0;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    invoke-static {v5, v6, v1, p1}, Lcom/facebook/appevents/k;->i(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/j0;ZLcom/facebook/appevents/g0;)Lcom/facebook/GraphRequest;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    sget-object v6, Lr1/b;->a:Lr1/b;

    .line 70
    .line 71
    invoke-virtual {v6}, Lr1/b;->f()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_1

    .line 76
    .line 77
    invoke-static {v5}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->l(Lcom/facebook/GraphRequest;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const-string p0, "Required value was null."

    .line 84
    .line 85
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_3
    return-object v3

    .line 92
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-object v2
.end method

.method public static final l(Lcom/facebook/appevents/FlushReason;)V
    .locals 3
    .param p0    # Lcom/facebook/appevents/FlushReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "reason"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/facebook/appevents/k;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    new-instance v2, Lcom/facebook/appevents/g;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/facebook/appevents/g;-><init>(Lcom/facebook/appevents/FlushReason;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static final m(Lcom/facebook/appevents/FlushReason;)V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "$reason"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/facebook/appevents/k;->n(Lcom/facebook/appevents/FlushReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final n(Lcom/facebook/appevents/FlushReason;)V
    .locals 4
    .param p0    # Lcom/facebook/appevents/FlushReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "reason"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/facebook/appevents/d;->a()Lcom/facebook/appevents/PersistedEvents;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/facebook/appevents/k;->d:Lcom/facebook/appevents/c;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/facebook/appevents/c;->b(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/k;->d:Lcom/facebook/appevents/c;

    .line 25
    .line 26
    invoke-static {p0, v1}, Lcom/facebook/appevents/k;->u(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/c;)Lcom/facebook/appevents/g0;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/facebook/appevents/g0;->a()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/facebook/appevents/g0;->b()Lcom/facebook/appevents/FlushResult;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception p0

    .line 73
    sget-object v1, Lcom/facebook/appevents/k;->b:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "Caught unexpected exception while flushing app events: "

    .line 76
    .line 77
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private static final o()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :try_start_0
    sput-object v1, Lcom/facebook/appevents/k;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->b:Lcom/facebook/appevents/AppEventsLogger$a;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEventsLogger$a;->c()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/facebook/appevents/FlushReason;->TIMER:Lcom/facebook/appevents/FlushReason;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/facebook/appevents/k;->n(Lcom/facebook/appevents/FlushReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    return-void

    .line 32
    :goto_1
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static final p()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

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
    sget-object v1, Lcom/facebook/appevents/k;->d:Lcom/facebook/appevents/c;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/facebook/appevents/c;->f()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method

.method public static final q(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/b0;Lcom/facebook/appevents/j0;Lcom/facebook/appevents/g0;)V
    .locals 8
    .param p0    # Lcom/facebook/appevents/AccessTokenAppIdPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/appevents/j0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/appevents/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "accessTokenAppId"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "request"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "response"

    .line 21
    .line 22
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "appEvents"

    .line 26
    .line 27
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "flushState"

    .line 31
    .line 32
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "Success"

    .line 40
    .line 41
    sget-object v3, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->b()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, -0x1

    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    .line 53
    const-string v2, "Failed: No Connectivity"

    .line 54
    .line 55
    sget-object v3, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_1
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 62
    .line 63
    const-string v2, "Failed:\n  Response: %s\n  Error %s"

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/facebook/b0;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    filled-new-array {p2, v3}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string p2, "format(format, *args)"

    .line 86
    .line 87
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object v3, Lcom/facebook/appevents/FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/FlushResult;

    .line 91
    .line 92
    :cond_2
    :goto_0
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 93
    .line 94
    invoke-static {p2}, Lcom/facebook/v;->I(Lcom/facebook/LoggingBehavior;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->w()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    .line 107
    .line 108
    invoke-direct {v5, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    const-string v4, "{\n            val jsonAr\u2026y.toString(2)\n          }"

    .line 116
    .line 117
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_0
    :try_start_2
    const-string p2, "<Can\'t encode events for debug logging>"

    .line 122
    .line 123
    :goto_1
    sget-object v4, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 124
    .line 125
    sget-object v5, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 126
    .line 127
    sget-object v6, Lcom/facebook/appevents/k;->b:Ljava/lang/String;

    .line 128
    .line 129
    const-string v7, "TAG"

    .line 130
    .line 131
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v7, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->q()Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    filled-new-array {p1, v2, p2}, [Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    if-eqz v1, :cond_4

    .line 152
    .line 153
    const/4 p1, 0x1

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const/4 p1, 0x0

    .line 156
    :goto_2
    invoke-virtual {p3, p1}, Lcom/facebook/appevents/j0;->b(Z)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    .line 160
    .line 161
    if-ne v3, p1, :cond_5

    .line 162
    .line 163
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    new-instance v1, Lcom/facebook/appevents/j;

    .line 168
    .line 169
    invoke-direct {v1, p0, p3}, Lcom/facebook/appevents/j;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/j0;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 173
    .line 174
    .line 175
    :cond_5
    sget-object p0, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    .line 176
    .line 177
    if-eq v3, p0, :cond_6

    .line 178
    .line 179
    invoke-virtual {p4}, Lcom/facebook/appevents/g0;->b()Lcom/facebook/appevents/FlushResult;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    if-eq p0, p1, :cond_6

    .line 184
    .line 185
    invoke-virtual {p4, v3}, Lcom/facebook/appevents/g0;->d(Lcom/facebook/appevents/FlushResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    .line 187
    .line 188
    :cond_6
    return-void

    .line 189
    :goto_3
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method private static final r(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/j0;)V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "$accessTokenAppId"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "$appEvents"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/facebook/appevents/l;->a(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/j0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static final s()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/k;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    new-instance v2, Lcom/facebook/appevents/i;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/facebook/appevents/i;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final t()V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/k;->d:Lcom/facebook/appevents/c;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/facebook/appevents/l;->b(Lcom/facebook/appevents/c;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/facebook/appevents/c;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/facebook/appevents/c;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/facebook/appevents/k;->d:Lcom/facebook/appevents/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final u(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/c;)Lcom/facebook/appevents/g0;
    .locals 8
    .param p0    # Lcom/facebook/appevents/FlushReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/appevents/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/k;

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
    const-string v1, "reason"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "appEventCollection"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/facebook/appevents/g0;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/facebook/appevents/g0;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/facebook/appevents/k;->k(Lcom/facebook/appevents/c;Lcom/facebook/appevents/g0;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move-object v3, p1

    .line 31
    check-cast v3, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    sget-object v3, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 40
    .line 41
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 42
    .line 43
    sget-object v5, Lcom/facebook/appevents/k;->b:Ljava/lang/String;

    .line 44
    .line 45
    const-string v6, "TAG"

    .line 46
    .line 47
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v6, "Flushing %d events due to %s."

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/facebook/appevents/g0;->a()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    filled-new-array {v7, p0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/facebook/GraphRequest;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->k()Lcom/facebook/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    return-object v1

    .line 94
    :cond_2
    return-object v2

    .line 95
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object v2
.end method
