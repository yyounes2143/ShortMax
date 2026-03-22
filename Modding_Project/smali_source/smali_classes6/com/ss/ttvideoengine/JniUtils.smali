.class public Lcom/ss/ttvideoengine/JniUtils;
.super Ljava/lang/Object;
.source "JniUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JniUtils"

.field public static volatile exception:Ljava/lang/String; = ""

.field public static volatile isLibraryLoaded:Z = false

.field public static volatile mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getLazyLoadVideodec()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const-string v0, "JniUtils"

    .line 13
    .line 14
    const-string v1, "JniUtils.loadLibrary in static block"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/ss/ttvideoengine/JniUtils;->loadLibrary()V

    .line 20
    .line 21
    .line 22
    :cond_0
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

.method private static encryptAesCbc128([B[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/ttvideodecode/Native;->encryptAesCbc128([B[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static encryptTimestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/JniUtils;->isLibraryLoaded:Z

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string p1, "library not load exception:"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/ss/ttvideoengine/JniUtils;->exception:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "JniUtils"

    .line 27
    .line 28
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/JniUtils;->encryptAesCbc128([B[B)[B

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    array-length p1, p0

    .line 58
    if-gtz p1, :cond_2

    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance p1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getDecodeMethod()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/JniUtils;->isLibraryLoaded:Z

    .line 2
    .line 3
    const-string v1, "exception is null"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Exception;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "library not load suc exception:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    sget-object v3, Lcom/ss/ttvideoengine/JniUtils;->exception:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lcom/ss/ttvideoengine/JniUtils;->exception:Ljava/lang/String;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/JniUtils;->getSupportedMethod()I

    .line 38
    .line 39
    .line 40
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return v0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    new-instance v2, Ljava/lang/Exception;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "getDecodedStr exception:"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v2
.end method

.method public static getDecodedStr([B[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/ttvideodecode/Native;->getDecodedStr([B[B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getDecodedStrWithKey([B[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/JniUtils;->isLibraryLoaded:Z

    .line 2
    .line 3
    const-string v1, "exception is null"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance p0, Ljava/lang/Exception;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "library not load suc exception:"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/ss/ttvideoengine/JniUtils;->exception:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lcom/ss/ttvideoengine/JniUtils;->exception:Ljava/lang/String;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/JniUtils;->getDecodedStr([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/Exception;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "getDecodedStr exception:"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public static getSettingSignature(Ljava/lang/String;)[B
    .locals 4

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/JniUtils;->isLibraryLoaded:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "JniUtils"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "library not load exception:"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/ss/ttvideoengine/JniUtils;->exception:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v2, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    if-nez p0, :cond_1

    .line 32
    .line 33
    const-string p0, "getSettingSignature content is null"

    .line 34
    .line 35
    invoke-static {v2, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/JniUtils;->getSignature(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "getSettingSignature throwable:"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v1
.end method

.method public static getSignature(Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttm/ttvideodecode/Native;->getSignature(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getSupportedMethod()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttm/ttvideodecode/Native;->getSupportedMethod()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static declared-synchronized loadLibrary()V
    .locals 3

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/JniUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/ttvideoengine/JniUtils;->isLibraryLoaded:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-string v1, "JniUtils"

    .line 9
    .line 10
    const-string v2, "JniUtils.loadLibrary"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/ss/ttvideoengine/JniUtils;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lcom/ss/ttvideoengine/JniUtils;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 20
    .line 21
    const-string/jumbo v2, "videodec"

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/LibraryLoaderProxy;->loadLibrary(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string/jumbo v1, "videodec"

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x1

    .line 37
    sput-boolean v1, Lcom/ss/ttvideoengine/JniUtils;->isLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    :try_start_1
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sput-object v1, Lcom/ss/ttvideoengine/JniUtils;->exception:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    :cond_1
    :goto_2
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_1
    move-exception v1

    .line 52
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    throw v1
.end method

.method public static setLoadProxy(Lcom/ss/ttvideoengine/LibraryLoaderProxy;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/ss/ttvideoengine/JniUtils;->mProxy:Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 4
    .line 5
    :cond_0
    return-void
.end method
