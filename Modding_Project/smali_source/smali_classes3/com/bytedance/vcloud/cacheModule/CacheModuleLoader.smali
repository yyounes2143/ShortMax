.class public Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;
.super Ljava/lang/Object;
.source "CacheModuleLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$DefaultLibraryLoaderProxy;,
        Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$LibraryLoaderProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheModuleLoader"

.field public static volatile inited:Z = false

.field private static sLibraryLoaderProxy:Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$LibraryLoaderProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static declared-synchronized loadLibrary()Z
    .locals 5

    .line 1
    const-class v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ss/vcbkit/VCBaseKitLoader;->loadLibrary()Z

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->sLibraryLoaderProxy:Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$LibraryLoaderProxy;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$DefaultLibraryLoaderProxy;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v2}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$DefaultLibraryLoaderProxy;-><init>(Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$1;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->sLibraryLoaderProxy:Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$LibraryLoaderProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_0
    :try_start_2
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->sLibraryLoaderProxy:Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$LibraryLoaderProxy;

    .line 30
    .line 31
    const-string v2, "cachemodule"

    .line 32
    .line 33
    invoke-interface {v1, v2}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$LibraryLoaderProxy;->loadLibrary(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sput-boolean v1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    :try_start_3
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "load cacheModule fail : "

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_1
    sget-boolean v1, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return v1

    .line 71
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    throw v1
.end method

.method public static setLoadProxy(Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$LibraryLoaderProxy;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->sLibraryLoaderProxy:Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader$LibraryLoaderProxy;

    .line 2
    .line 3
    return-void
.end method
