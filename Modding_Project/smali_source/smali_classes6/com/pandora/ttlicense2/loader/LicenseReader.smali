.class public Lcom/pandora/ttlicense2/loader/LicenseReader;
.super Ljava/lang/Object;
.source "LicenseReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;,
        Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;,
        Lcom/pandora/ttlicense2/loader/LicenseReader$Result;,
        Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

.field private final handler:Landroid/os/Handler;

.field private final loader:Lcom/pandora/ttlicense2/loader/Loader;

.field private final taskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    new-instance v1, Lcom/pandora/ttlicense2/loader/Loader;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1}, Lcom/pandora/ttlicense2/loader/Loader;-><init>(Landroid/os/Looper;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->loader:Lcom/pandora/ttlicense2/loader/Loader;

    .line 14
    .line 15
    new-instance p1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->handler:Landroid/os/Handler;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->assetManager:Landroid/content/res/AssetManager;

    .line 25
    .line 26
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->taskMap:Ljava/util/Map;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader;->lambda$startReadSync$1(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/pandora/ttlicense2/loader/LicenseReader;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->taskMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader;->lambda$startReadSync$2(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader;->lambda$startReadSync$0(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$startReadSync$0(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V
    .locals 0
    .param p0    # Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadStart(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$startReadSync$1(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)V
    .locals 0
    .param p0    # Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadComplete(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Result;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$startReadSync$2(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V
    .locals 0
    .param p0    # Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadError(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private run(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 2
    iget-object p1, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1, v1, v0}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->cancel(ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->handler:Landroid/os/Handler;

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
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->taskMap:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->taskMap:Ljava/util/Map;

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
    check-cast v1, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-virtual {v1, v3, v3, v2}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->cancel(ZZLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->handler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->loader:Lcom/pandora/ttlicense2/loader/Loader;

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

.method public startReadAsync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->handler:Landroid/os/Handler;

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
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->assetManager:Landroid/content/res/AssetManager;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1, v2, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;-><init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/res/AssetManager;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->taskMap:Ljava/util/Map;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->loader:Lcom/pandora/ttlicense2/loader/Loader;

    .line 27
    .line 28
    new-instance v1, Lcom/pandora/ttlicense2/loader/LicenseReader$1;

    .line 29
    .line 30
    invoke-direct {v1, p0, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$1;-><init>(Lcom/pandora/ttlicense2/loader/LicenseReader;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/pandora/ttlicense2/loader/Loader;->startLoad(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Lcom/pandora/ttlicense2/loader/Loader$Callback;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public startReadSync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/LicenseReader;->assetManager:Landroid/content/res/AssetManager;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;-><init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/res/AssetManager;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/pandora/ttlicense2/loader/a;

    .line 13
    .line 14
    invoke-direct {v1, p2, p1}, Lcom/pandora/ttlicense2/loader/a;-><init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/pandora/ttlicense2/loader/LicenseReader;->run(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->load(Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/pandora/ttlicense2/loader/b;

    .line 37
    .line 38
    invoke-direct {v1, p2, p1, v0}, Lcom/pandora/ttlicense2/loader/b;-><init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/pandora/ttlicense2/loader/LicenseReader;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    if-eqz p2, :cond_1

    .line 46
    .line 47
    new-instance v1, Lcom/pandora/ttlicense2/loader/c;

    .line 48
    .line 49
    invoke-direct {v1, p2, p1, v0}, Lcom/pandora/ttlicense2/loader/c;-><init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcom/pandora/ttlicense2/loader/LicenseReader;->run(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_2
    return-void
.end method
