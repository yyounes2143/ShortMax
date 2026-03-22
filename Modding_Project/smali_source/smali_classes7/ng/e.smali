.class public final Lng/e;
.super Ljava/lang/Object;
.source "AppConfigManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lng/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile c:Z

.field private static final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lng/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lng/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lng/e;->a:Lng/e;

    .line 7
    .line 8
    new-instance v0, Lng/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lng/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lng/e;->b:Lms/i;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lng/e;->c:Z

    .line 21
    .line 22
    new-instance v0, Lng/c;

    .line 23
    .line 24
    invoke-direct {v0}, Lng/c;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lng/e;->d:Lms/i;

    .line 32
    .line 33
    new-instance v0, Lng/d;

    .line 34
    .line 35
    invoke-direct {v0}, Lng/d;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lng/e;->e:Lms/i;

    .line 43
    .line 44
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

.method public static synthetic a()Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;
    .locals 1

    .line 1
    invoke-static {}, Lng/e;->m()Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lng/e;->n()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lng/e;->j()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final d()Lcom/tencent/mmkv/MMKV;
    .locals 3

    .line 1
    invoke-direct {p0}, Lng/e;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sput-boolean v2, Lng/e;->c:Z

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->getRootDir()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 19
    .line 20
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :cond_1
    const-string v0, "app_remote_config"

    .line 28
    .line 29
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    sput-boolean v2, Lng/e;->c:Z

    .line 35
    .line 36
    :goto_0
    return-object v1
.end method

.method private final f()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    sget-object v0, Lng/e;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/gson/Gson;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g()Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;
    .locals 1

    .line 1
    sget-object v0, Lng/e;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lng/e;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final j()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    sget-object v0, Llk/b;->a:Llk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Llk/b;->e()Lcom/google/gson/Gson;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final l()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "mmkv"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :catch_0
    :catchall_0
    return v0
.end method

.method private static final m()Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lqg/a;

    .line 3
    .line 4
    sget-object v2, Lng/e;->a:Lng/e;

    .line 5
    .line 6
    invoke-direct {v2}, Lng/e;->f()Lcom/google/gson/Gson;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-direct {v2}, Lng/e;->h()Lcom/tencent/mmkv/MMKV;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v0, v3, v2}, Lqg/a;-><init>(ZLcom/google/gson/Gson;Lcom/tencent/mmkv/MMKV;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;-><init>(Lqg/a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    sput-boolean v0, Lng/e;->c:Z

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    return-object v2
.end method

.method private static final n()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lng/e;->a:Lng/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lng/e;->d()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 1

    .line 1
    sget-boolean v0, Lng/e;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lng/e;->g()Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :catchall_0
    :cond_1
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "default"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lng/e;->c:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p2

    .line 16
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lng/e;->g()Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object p2, p1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    const/4 p1, 0x0

    .line 32
    sput-boolean p1, Lng/e;->c:Z

    .line 33
    .line 34
    :cond_2
    :goto_0
    return-object p2
.end method

.method public final k()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lng/e;->g()Lcom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lng/e;->c:Z

    .line 7
    .line 8
    :goto_0
    return-void
.end method
