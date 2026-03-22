.class public final Lcom/pandora/ttlicense2/LicenseManager;
.super Ljava/lang/Object;
.source "LicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/LicenseManager$Callback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/pandora/ttlicense2/LicenseManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDiskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

.field private final mLoader:Lcom/pandora/ttlicense2/loader/LicenseLoader;

.field private final mReader:Lcom/pandora/ttlicense2/loader/LicenseReader;

.field private final mRetryDetector:Lcom/pandora/ttlicense2/LicenseRetryTrigger;

.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandora/ttlicense2/LicenseSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseLogger;->init(Landroid/content/Context;)Lcom/pandora/ttlicense2/LicenseLogger;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/pandora/ttlicense2/LicenseManager$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/pandora/ttlicense2/LicenseManager$1;-><init>(Lcom/pandora/ttlicense2/LicenseManager;)V

    .line 17
    .line 18
    .line 19
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    .line 21
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    const-wide/16 v4, 0x1

    .line 31
    .line 32
    move-object v1, v9

    .line 33
    move-object v6, v10

    .line 34
    move-object v8, v0

    .line 35
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 36
    .line 37
    .line 38
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    .line 40
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 43
    .line 44
    .line 45
    move-object v1, v11

    .line 46
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/io/File;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string/jumbo v2, "ttsdk/licenses"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 68
    .line 69
    .line 70
    :cond_0
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseManager;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    new-instance v1, Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Lcom/pandora/ttlicense2/loader/DiskCache;-><init>(Ljava/io/File;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager;->mDiskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 78
    .line 79
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseLoader;

    .line 80
    .line 81
    invoke-direct {v0, v9, v1, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mLoader:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    .line 85
    .line 86
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseReader;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {v0, v11, v1, v2}, Lcom/pandora/ttlicense2/loader/LicenseReader;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/res/AssetManager;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mReader:Lcom/pandora/ttlicense2/loader/LicenseReader;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/pandora/ttlicense2/LicenseManagerNative;->init(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseManagerNative;->setAuthParams()V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/pandora/ttlicense2/LicenseRetryTrigger;

    .line 108
    .line 109
    new-instance v1, Lcom/pandora/ttlicense2/LicenseManager$2;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/pandora/ttlicense2/LicenseManager$2;-><init>(Lcom/pandora/ttlicense2/LicenseManager;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/pandora/ttlicense2/LicenseRetryTrigger;-><init>(Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mRetryDetector:Lcom/pandora/ttlicense2/LicenseRetryTrigger;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Lcom/pandora/ttlicense2/LicenseRetryTrigger;->init(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/pandora/ttlicense2/LicenseManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseManager;->scheduleRetry()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private create(Ljava/lang/String;Lcom/pandora/ttlicense2/LicenseManager$Callback;)Lcom/pandora/ttlicense2/LicenseSession;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/LicenseManager$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "mSessions lock not hold!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/pandora/ttlicense2/LicenseSession;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/Scheme;->ofUri(Ljava/lang/String;)Lcom/pandora/ttlicense2/utils/Scheme;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget-object v5, p0, Lcom/pandora/ttlicense2/LicenseManager;->mLoader:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/pandora/ttlicense2/LicenseManager;->mReader:Lcom/pandora/ttlicense2/loader/LicenseReader;

    .line 21
    .line 22
    new-instance v7, Lcom/pandora/ttlicense2/LicenseManager$3;

    .line 23
    .line 24
    invoke-direct {v7, p0, p1, p2}, Lcom/pandora/ttlicense2/LicenseManager$3;-><init>(Lcom/pandora/ttlicense2/LicenseManager;Ljava/lang/String;Lcom/pandora/ttlicense2/LicenseManager$Callback;)V

    .line 25
    .line 26
    .line 27
    move-object v2, v0

    .line 28
    move-object v3, p1

    .line 29
    invoke-direct/range {v2 .. v7}, Lcom/pandora/ttlicense2/LicenseSession;-><init>(Ljava/lang/String;Lcom/pandora/ttlicense2/utils/Scheme;Lcom/pandora/ttlicense2/loader/LicenseLoader;Lcom/pandora/ttlicense2/loader/LicenseReader;Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method private find(Ljava/lang/String;)Lcom/pandora/ttlicense2/LicenseSession;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "mSessions lock not hold!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/pandora/ttlicense2/LicenseSession;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/pandora/ttlicense2/LicenseManager;
    .locals 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/pandora/ttlicense2/LicenseManager;->sInstance:Lcom/pandora/ttlicense2/LicenseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    .line 11
    .line 12
    const-string v2, "Call init first!"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/pandora/ttlicense2/LicenseManager;->sInstance:Lcom/pandora/ttlicense2/LicenseManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/pandora/ttlicense2/LicenseManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Lcom/pandora/ttlicense2/LicenseManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/pandora/ttlicense2/LicenseManager;->sInstance:Lcom/pandora/ttlicense2/LicenseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method

.method private scheduleRetry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->isNetAvailableOptANR(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/pandora/ttlicense2/LicenseSession;

    .line 48
    .line 49
    const-string v2, "scheduleRetry"

    .line 50
    .line 51
    invoke-static {v1}, Lcom/pandora/ttlicense2/utils/L;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {p0, v2, v3}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/pandora/ttlicense2/LicenseSession;->retry()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw v1
.end method

.method public static turnOnLogcat(Z)V
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    sput-boolean p0, Lcom/pandora/ttlicense2/utils/L;->ENABLE_LOG:Z

    .line 2
    .line 3
    invoke-static {p0}, Lcom/pandora/ttlicense2/LicenseManagerNative;->openLog(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addLicense(Ljava/lang/String;Lcom/pandora/ttlicense2/LicenseManager$Callback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/LicenseManager$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    const-string v0, "addLicense"

    .line 2
    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p0, v0, v1}, Lcom/pandora/ttlicense2/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/Scheme;->ofUri(Ljava/lang/String;)Lcom/pandora/ttlicense2/utils/Scheme;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/pandora/ttlicense2/utils/Scheme;->UNKNOWN:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/LicenseManager;->find(Ljava/lang/String;)Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string v1, "addLicense"

    .line 31
    .line 32
    const-string v2, "already added!"

    .line 33
    .line 34
    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pandora/ttlicense2/LicenseManager;->create(Ljava/lang/String;Lcom/pandora/ttlicense2/LicenseManager$Callback;)Lcom/pandora/ttlicense2/LicenseSession;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/LicenseSession;->start()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p1

    .line 61
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "Unsupported uri type! "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p2
.end method

.method public checkFeatureAuth(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/pandora/ttlicense2/LicenseManagerNative;->checkFeatureAuth(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public checkSDKAuth(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->checkSDKAuth(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getLicense(Ljava/lang/String;)Lcom/pandora/ttlicense2/License;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->getLicense(Ljava/lang/String;)Lcom/pandora/ttlicense2/License;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getLoadedLicenseIds()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/pandora/ttlicense2/LicenseManager;->mSessions:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/pandora/ttlicense2/LicenseSession;

    .line 26
    .line 27
    iget v4, v3, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-ne v4, v5, :cond_0

    .line 31
    .line 32
    iget-object v3, v3, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v3, v3, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/pandora/ttlicense2/LicenseFile;->getId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw v0
.end method

.method public getSDKEdition(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->getSDKEdition(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
