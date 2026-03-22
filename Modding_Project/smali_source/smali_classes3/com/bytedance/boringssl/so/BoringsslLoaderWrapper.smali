.class public Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;
.super Ljava/lang/Object;
.source "BoringsslLoaderWrapper.java"


# static fields
.field private static volatile DEFAULT_BORINGSSL_NAME:Ljava/lang/String; = "ttboringssl"

.field private static volatile DEFAULT_CRYPTO_NAME:Ljava/lang/String; = "ttcrypto"

.field private static final TAG:Ljava/lang/String; = "BoringsslLoaderWrapper"

.field private static volatile hasLoadBoringssl:Z = false

.field private static volatile hasLoadCrypto:Z = false

.field private static volatile iBoringsslLoader:Lcom/bytedance/boringssl/so/IBoringsslLoader;

.field private static lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->lock:Ljava/util/concurrent/locks/Lock;

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

.method public static loadBoringssl()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->lock:Ljava/util/concurrent/locks/Lock;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->iBoringsslLoader:Lcom/bytedance/boringssl/so/IBoringsslLoader;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->iBoringsslLoader:Lcom/bytedance/boringssl/so/IBoringsslLoader;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/bytedance/boringssl/so/IBoringsslLoader;->loadBoringssl()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    sget-object v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->lock:Ljava/util/concurrent/locks/Lock;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_4

    .line 25
    :catch_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->hasLoadCrypto:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    sget-object v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->DEFAULT_CRYPTO_NAME:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-boolean v0, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->hasLoadCrypto:Z

    .line 37
    .line 38
    :cond_1
    sget-boolean v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->hasLoadBoringssl:Z

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    sget-object v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->DEFAULT_BORINGSSL_NAME:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-boolean v0, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->hasLoadBoringssl:Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    :cond_2
    :goto_0
    sget-object v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->lock:Ljava/util/concurrent/locks/Lock;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    :try_start_2
    const-string v2, "BoringsslLoaderWrapper"

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "load boringssl:"

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sget-boolean v4, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->hasLoadBoringssl:Z

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, " load crypto:"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    sget-boolean v4, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->hasLoadCrypto:Z

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, "  err:"

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :goto_2
    sget-boolean v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->hasLoadBoringssl:Z

    .line 103
    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    sget-boolean v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->hasLoadCrypto:Z

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    const/4 v0, 0x0

    .line 112
    :goto_3
    return v0

    .line 113
    :goto_4
    sget-object v1, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->lock:Ljava/util/concurrent/locks/Lock;

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 116
    .line 117
    .line 118
    throw v0
.end method

.method public static setBoringsslLoader(Lcom/bytedance/boringssl/so/IBoringsslLoader;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->iBoringsslLoader:Lcom/bytedance/boringssl/so/IBoringsslLoader;

    .line 2
    .line 3
    return-void
.end method

.method public static setDefaultBoringsslName(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->DEFAULT_BORINGSSL_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setDefaultCryptoName(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->DEFAULT_CRYPTO_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
