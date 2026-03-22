.class public final Lcom/inmobi/media/te;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/te;

.field public static b:Lcom/inmobi/media/V0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/te;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/te;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/te;->a:Lcom/inmobi/media/te;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e()V
    .locals 6

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "te"

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    new-instance v3, Lcom/inmobi/media/V0;

    .line 12
    .line 13
    invoke-direct {v3}, Lcom/inmobi/media/V0;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    const-class v4, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 17
    .line 18
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v4, "getAdvertisingIdInfo(...)"

    .line 30
    .line 31
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Lcom/inmobi/media/V0;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v3, v2}, Lcom/inmobi/media/V0;->a(Z)V

    .line 46
    .line 47
    .line 48
    sput-object v3, Lcom/inmobi/media/te;->b:Lcom/inmobi/media/V0;

    .line 49
    .line 50
    sget-object v2, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    sget-object v4, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    const-string v4, "user_info_store"

    .line 69
    .line 70
    invoke-static {v2, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v4, "user_age_restricted"

    .line 75
    .line 76
    const-string v5, "key"

    .line 77
    .line 78
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 82
    .line 83
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    sput-object v2, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 92
    .line 93
    :cond_1
    sget-object v2, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    :goto_0
    move v3, v2

    .line 102
    :cond_2
    if-eqz v3, :cond_4

    .line 103
    .line 104
    sget-object v2, Lcom/inmobi/media/te;->b:Lcom/inmobi/media/V0;

    .line 105
    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/4 v3, 0x0

    .line 110
    invoke-virtual {v2, v3}, Lcom/inmobi/media/V0;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    :try_start_3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :catch_2
    :cond_4
    :goto_1
    return-void
.end method

.method public static final f()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/inmobi/media/te;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/te;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/te;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    const-string v0, "te"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 4
    sget-object v0, Lcom/inmobi/media/te;->b:Lcom/inmobi/media/V0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcom/inmobi/media/V0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/V0;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lub/r6;

    invoke-direct {p1}, Lub/r6;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()Lcom/inmobi/media/V0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/media/te;->b:Lcom/inmobi/media/V0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/media/te;->b:Lcom/inmobi/media/V0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/V0;->c()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "te"

    .line 4
    .line 5
    const-string v2, "Publisher device Id is "

    .line 6
    .line 7
    :try_start_0
    sget-object v3, Lcom/inmobi/media/te;->b:Lcom/inmobi/media/V0;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/inmobi/media/V0;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-static {v3, v1, v2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method
