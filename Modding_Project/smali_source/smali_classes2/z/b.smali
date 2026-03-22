.class public final Lz/b;
.super Ly/a;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ly/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "V2MMKVCache_So_Loader"

    .line 5
    .line 6
    iput-object v0, p0, Lz/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final f(Landroid/content/Context;Lz/b;Ldd/d;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, ",err="

    .line 4
    .line 5
    const-string v2, "SoLoader.init failed -> libName="

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x2e

    .line 9
    .line 10
    :try_start_0
    invoke-static {p0, v3}, Lcom/facebook/soloader/SoLoader;->l(Landroid/content/Context;Z)V

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/facebook/soloader/SoLoader;->s(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    const-string p0, "V2MMKVCache_So_Loader"

    .line 17
    .line 18
    iput-object p0, p1, Lz/b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_5

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :goto_0
    if-eqz p2, :cond_2

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move-object v0, p0

    .line 46
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p2, p0}, Ldd/d;->onError(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :goto_2
    if-eqz p2, :cond_2

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_1
    move-object v0, p0

    .line 81
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p2, p0}, Ldd/d;->onError(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_4
    invoke-static {p3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p0, "V2MMKVCache_System_Loader"

    .line 98
    .line 99
    iput-object p0, p1, Lz/b;->b:Ljava/lang/String;

    .line 100
    .line 101
    :goto_5
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;ZLdd/d;)Z
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x2e

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Ly/a;->a:Lcom/tencent/mmkv/MMKV;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    new-instance v2, Lz/a;

    .line 15
    .line 16
    invoke-direct {v2, p1, p0, p3}, Lz/a;-><init>(Landroid/content/Context;Lz/b;Ldd/d;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v2}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    sget-object p1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelDebug:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :catch_1
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    sget-object p1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelNone:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 32
    .line 33
    :goto_0
    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->setLogLevel(Lcom/tencent/mmkv/MMKVLogLevel;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Ly/a;->a:Lcom/tencent/mmkv/MMKV;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    goto :goto_6

    .line 44
    :goto_1
    if-eqz p3, :cond_4

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "init MMKVCache fail -> Exception message="

    .line 49
    .line 50
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move-object v0, p1

    .line 61
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p3, p1}, Ldd/d;->onError(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_5

    .line 75
    :goto_3
    if-eqz p3, :cond_4

    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "init MMKVCache fail -> UnsatisfiedLinkError message="

    .line 80
    .line 81
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_3
    move-object v0, p1

    .line 92
    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p3, p1}, Ldd/d;->onError(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_5
    const/4 p1, 0x0

    .line 106
    :goto_6
    return p1
.end method

.method public final tag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
