.class public Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;
.super Ljava/lang/Object;
.source "PlayTaskKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager$PlayTaskKeyManagerInner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
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

.method private native _removePlayTask(Ljava/lang/String;)V
.end method

.method private native _savePlayNodeInfo(Ljava/lang/String;)V
.end method

.method public static getInstance()Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager$PlayTaskKeyManagerInner;->access$000()Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public onPlayTaskOpen(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->_savePlayNodeInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public removePlayTask(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->_removePlayTask(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method
