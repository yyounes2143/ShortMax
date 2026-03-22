.class public Lcom/bytedance/vcloud/cacheModule/utils/CmLog;
.super Ljava/lang/Object;
.source "CmLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback;,
        Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;
    }
.end annotation


# static fields
.field private static final FORMAT:Ljava/lang/String; = "<%s>%s"

.field private static final PROP_KEY:Ljava/lang/String; = "debug.cacheModule.log.enable"

.field private static final TAG:Ljava/lang/String; = "PlaylistCacheModule"

.field private static final VERSION_FORMAT:Ljava/lang/String; = "[%s]<%s>%s"

.field private static sAlogCallback:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback; = null

.field private static final sLogLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPropLogOpened:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sLogLevelMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->initDefaultLogLevel()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->initLogLevelFromProp()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sAlogCallback:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback;

    .line 19
    .line 20
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

.method private static native _log(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native _setAlogJavaFunc(Z)V
.end method

.method private static native _setAlogWriteFunc(J)V
.end method

.method private static native _turnLogLevel(IZ)V
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sPropLogOpened:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sPropLogOpened:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->openAllLogLevel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static convertLevel(I)Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->V:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->D:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne p0, v2, :cond_1

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->I:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne p0, v2, :cond_2

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_2
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->W:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne p0, v2, :cond_3

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_3
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->E:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ne p0, v2, :cond_4

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_4
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sLogLevelMap:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->D:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "<%s>%s"

    .line 18
    .line 19
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "PlaylistCacheModule"

    .line 28
    .line 29
    invoke-static {v0, p1, p0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static defaultSystemLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->E:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->W:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne p0, v0, :cond_1

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->I:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne p0, v0, :cond_2

    .line 32
    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->D:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne p0, v0, :cond_3

    .line 44
    .line 45
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->V:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ne p0, v0, :cond_4

    .line 56
    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sLogLevelMap:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->E:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "1.16.4-jzdrm"

    .line 18
    .line 19
    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "[%s]<%s>%s"

    .line 24
    .line 25
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "PlaylistCacheModule"

    .line 30
    .line 31
    invoke-static {v0, p1, p0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sLogLevelMap:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->I:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "1.16.4-jzdrm"

    .line 18
    .line 19
    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "[%s]<%s>%s"

    .line 24
    .line 25
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "PlaylistCacheModule"

    .line 30
    .line 31
    invoke-static {v0, p1, p0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private static declared-synchronized initDefaultLogLevel()V
    .locals 3

    .line 1
    const-class v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->W:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->turnLogLevelInner(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v1
.end method

.method private static initLogLevelFromProp()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$1;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->_log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->defaultSystemLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :goto_0
    return-void
.end method

.method private static nOnLogCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/bytedance/vcloud/cacheModule/CalledByNative;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sAlogCallback:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->convertLevel(I)Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback;->onLogCallback(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static declared-synchronized openAllLogLevel()V
    .locals 3

    .line 1
    const-class v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->V:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->turnLogLevelInner(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v1
.end method

.method public static setAlogCallback(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback;)V
    .locals 2

    .line 1
    sput-object p0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sAlogCallback:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback;

    .line 2
    .line 3
    sget-boolean p0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sAlogCallback:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->_setAlogJavaFunc(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "api-native not match: "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "PlaylistCacheModule"

    .line 41
    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    return-void
.end method

.method public static setAlogWriteFunc(J)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->_setAlogWriteFunc(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "api-native not match: "

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "PlaylistCacheModule"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public static turnLogLevel(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sPropLogOpened:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->turnLogLevelInner(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static turnLogLevelInner(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;Z)V
    .locals 6

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sLogLevelMap:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->V:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-gt v4, v5, :cond_0

    .line 18
    .line 19
    move v4, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v4, v2

    .line 22
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->D:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-gt v4, v5, :cond_1

    .line 42
    .line 43
    move v4, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v4, v2

    .line 46
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->I:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-gt v4, v5, :cond_2

    .line 66
    .line 67
    move v4, v3

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v4, v2

    .line 70
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->W:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-gt v4, v5, :cond_3

    .line 90
    .line 91
    move v4, v3

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    move v4, v2

    .line 94
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->E:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-gt v4, v5, :cond_4

    .line 114
    .line 115
    move v2, v3

    .line 116
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-static {p0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->_turnLogLevel(IZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catch_0
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v0, "api-native not match: "

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    const-string p1, "PlaylistCacheModule"

    .line 158
    .line 159
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_4
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sLogLevelMap:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->V:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "<%s>%s"

    .line 18
    .line 19
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "PlaylistCacheModule"

    .line 28
    .line 29
    invoke-static {v0, p1, p0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->sLogLevelMap:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;->W:Lcom/bytedance/vcloud/cacheModule/utils/CmLog$LogLevel;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "1.16.4-jzdrm"

    .line 18
    .line 19
    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "[%s]<%s>%s"

    .line 24
    .line 25
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "PlaylistCacheModule"

    .line 30
    .line 31
    invoke-static {v0, p1, p0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
