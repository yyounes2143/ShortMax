.class public Lcom/pandora/ttlicense2/loader/LicenseLoader;
.super Ljava/lang/Object;
.source "LicenseLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;,
        Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;,
        Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;,
        Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;,
        Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

.field private final handler:Landroid/os/Handler;

.field private final loader:Lcom/pandora/ttlicense2/loader/Loader;

.field private final taskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 9
    .line 10
    new-instance p2, Lcom/pandora/ttlicense2/loader/Loader;

    .line 11
    .line 12
    invoke-direct {p2, v0, p1}, Lcom/pandora/ttlicense2/loader/Loader;-><init>(Landroid/os/Looper;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->loader:Lcom/pandora/ttlicense2/loader/Loader;

    .line 16
    .line 17
    new-instance p1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->taskMap:Ljava/util/Map;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->context:Landroid/content/Context;

    .line 32
    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/pandora/ttlicense2/loader/LicenseLoader;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->taskMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cancel(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 2
    iget-object p1, p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1, v1, v0}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->cancel(ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->taskMap:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->taskMap:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-virtual {v1, v3, v3, v2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->cancel(ZZLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    return-void
.end method

.method public isFree()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->loader:Lcom/pandora/ttlicense2/loader/Loader;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/pandora/ttlicense2/loader/Loader;->isFree()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->loader:Lcom/pandora/ttlicense2/loader/Loader;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v1, v2}, Lcom/pandora/ttlicense2/loader/Loader;->cancel(ZZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public startLoad(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->ignoreCache:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/pandora/ttlicense2/loader/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {p2, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;->onLoadStart(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v0, p1, v2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;-><init>(Ljava/lang/String;Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Z)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p1, v1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;->onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->context:Landroid/content/Context;

    .line 52
    .line 53
    invoke-direct {v0, p1, v1, v2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;-><init>(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->taskMap:Ljava/util/Map;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader;->loader:Lcom/pandora/ttlicense2/loader/Loader;

    .line 64
    .line 65
    new-instance v1, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;

    .line 66
    .line 67
    invoke-direct {v1, p0, p2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;-><init>(Lcom/pandora/ttlicense2/loader/LicenseLoader;Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/pandora/ttlicense2/loader/Loader;->startLoad(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Lcom/pandora/ttlicense2/loader/Loader$Callback;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
