.class public final Lcom/inmobi/media/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/cd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/cd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/cd;->a:Lcom/inmobi/media/cd;

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


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "cd"

    .line 3
    .line 4
    const-string v1, "TAG"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "signals"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v1, v0, v2}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/inmobi/media/Zc;->a:Lcom/inmobi/media/Zc;

    .line 22
    .line 23
    const-string v1, "signals"

    .line 24
    .line 25
    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 26
    .line 27
    invoke-static {v1, v3, v2}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isSessionEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sput-boolean v1, Lcom/inmobi/media/Zc;->e:Z

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    sput-object v2, Lcom/inmobi/media/Zc;->d:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    invoke-static {}, Lcom/inmobi/media/Zc;->c()V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/inmobi/media/Uc;->h()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const-string v1, "signals"

    .line 65
    .line 66
    invoke-static {v1, v0, v2}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isLocationEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    :cond_1
    sget-object v0, Lcom/inmobi/media/X6;->a:Lcom/inmobi/media/X6;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/inmobi/media/X6;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    :cond_2
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw v0
.end method
