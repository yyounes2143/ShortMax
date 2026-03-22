.class public Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;
.super Ljava/lang/Object;
.source "ABRJniLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/abrmodule/ABRJniLoader$DefaultLoader;
    }
.end annotation


# static fields
.field public static volatile exception:Ljava/lang/String; = ""

.field public static volatile isLibraryLoaded:Z = false

.field private static mLibraryLoader:Lcom/bytedance/vcloud/abrmodule/LibraryLoaderProxy;


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

.method public static declared-synchronized loadLibrary()Z
    .locals 3

    .line 1
    const-class v0, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->isLibraryLoaded:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->mLibraryLoader:Lcom/bytedance/vcloud/abrmodule/LibraryLoaderProxy;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader$DefaultLoader;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v2}, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader$DefaultLoader;-><init>(Lcom/bytedance/vcloud/abrmodule/ABRJniLoader$1;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    const-string v2, "abrmodule"

    .line 22
    .line 23
    invoke-interface {v1, v2}, Lcom/bytedance/vcloud/abrmodule/LibraryLoaderProxy;->loadLibrary(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sput-boolean v1, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->isLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->exception:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    sput-boolean v1, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->isLibraryLoaded:Z

    .line 38
    .line 39
    :cond_1
    :goto_2
    sget-boolean v1, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->isLibraryLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return v1

    .line 43
    :catchall_1
    move-exception v1

    .line 44
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    throw v1
.end method

.method public static setLoadProxy(Lcom/bytedance/vcloud/abrmodule/LibraryLoaderProxy;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->mLibraryLoader:Lcom/bytedance/vcloud/abrmodule/LibraryLoaderProxy;

    .line 2
    .line 3
    return-void
.end method
