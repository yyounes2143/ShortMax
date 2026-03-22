.class public abstract Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$ZYk;,
        Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;
    }
.end annotation


# instance fields
.field private final Pfn:Ljava/lang/Object;

.field private final ba:Ljava/util/concurrent/CountDownLatch;

.field private final cFZ:Ljava/lang/String;

.field private final ex:Ljava/lang/Object;

.field private volatile jFA:Z

.field private kkU:Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;

.field private so:Ljava/util/Properties;

.field private final tB:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->tB:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ex:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->Pfn:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ba:Ljava/util/concurrent/CountDownLatch;

    .line 32
    .line 33
    new-instance v0, Ljava/util/Properties;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->jFA:Z

    .line 42
    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->cFZ:Ljava/lang/String;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->kkU:Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;

    .line 46
    .line 47
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$1;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "SetL_"

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private Pfn()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->jFA:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ba()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x8

    .line 17
    .line 18
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ba:Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    int-to-long v2, v0

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "SdkSettings.Prop"

    .line 29
    .line 30
    const-string v2, "awaitLoadedLocked: "

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    return-object p1
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->tB:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private ba()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->cFZ:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;)Ljava/util/Properties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;Ljava/util/Properties;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/util/Properties;)V

    return-void
.end method

.method private oJ(Ljava/util/Properties;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->Pfn:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ba()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 71
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    :try_start_2
    invoke-virtual {p1, v3, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :try_start_3
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/PiB;->oJ(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 75
    :goto_0
    :try_start_4
    const-string v1, "SdkSettings.Prop"

    const-string v3, "saveToLocal: "

    invoke-static {v1, v3, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_0

    .line 76
    :try_start_5
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/PiB;->oJ(Ljava/io/Closeable;)V

    .line 77
    :cond_0
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->hwh()V

    return-void

    :goto_2
    if-eqz v2, :cond_1

    .line 79
    :try_start_6
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/PiB;->oJ(Ljava/io/Closeable;)V

    :cond_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 80
    :goto_3
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public ZYk()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->jFA:Z

    return v0
.end method

.method protected ex()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->kkU:Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;->ZYk()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/String;F)F
    .locals 2

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->Pfn()V

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 17
    const-string v0, "SdkSettings.Prop"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return p2
.end method

.method public oJ(Ljava/lang/String;I)I
    .locals 2

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->Pfn()V

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9
    const-string v0, "SdkSettings.Prop"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return p2
.end method

.method public oJ(Ljava/lang/String;J)J
    .locals 2

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->Pfn()V

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 13
    const-string v0, "SdkSettings.Prop"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;
    .locals 1

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$ZYk;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;)V

    return-object v0
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->tB:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->Pfn()V

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p2

    :cond_2
    if-eqz p3, :cond_3

    .line 67
    invoke-interface {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;->ZYk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 68
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->tB:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_3
    :goto_0
    return-object p2
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->Pfn()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public oJ(Z)V
    .locals 8

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ex:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->jFA:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ba()Ljava/io/File;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 27
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 28
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 30
    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "items from "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->tB:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v4

    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    :try_start_3
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/PiB;->oJ(Ljava/io/Closeable;)V

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ex:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    :catch_0
    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 36
    :goto_2
    :try_start_4
    const-string v1, "SdkSettings.Prop"

    const-string v4, "reload: "

    invoke-static {v1, v4, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_2

    .line 37
    :try_start_5
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/PiB;->oJ(Ljava/io/Closeable;)V

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ex:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_3
    move-exception p1

    goto :goto_5

    .line 39
    :catch_1
    :goto_3
    :try_start_6
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/cFZ;->tB(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    .line 40
    :try_start_7
    const-string v1, "SdkSettings.Prop"

    const-string v4, "delete: "

    invoke-static {v1, v4, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_4
    if-eqz v3, :cond_3

    .line 41
    :try_start_8
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/PiB;->oJ(Ljava/io/Closeable;)V

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ex:Ljava/lang/Object;

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_4

    .line 43
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/PiB;->oJ(Ljava/io/Closeable;)V

    .line 44
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw p1

    .line 45
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/oq;->oJ(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 46
    const-string p1, "tt_sdk_settings.prop"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->cFZ:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_9

    .line 47
    :try_start_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p1

    const-string v1, "tt_sdk_settings"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    move-result-object v1

    .line 50
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 52
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v6, :cond_6

    .line 53
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v5, :cond_6

    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    move v3, v2

    goto :goto_6

    :cond_7
    if-eqz v3, :cond_8

    .line 55
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ()V

    .line 56
    :cond_8
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 57
    :catch_2
    :cond_9
    :goto_7
    :try_start_a
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->jFA:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->kkU:Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;

    if-eqz p1, :cond_a

    .line 58
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;->oJ()V

    .line 59
    :cond_a
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->jFA:Z

    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ba:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 61
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :goto_8
    monitor-exit v0

    throw p1
.end method

.method public oJ(Ljava/lang/String;Z)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->Pfn()V

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->so:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 21
    const-string v0, "SdkSettings.Prop"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return p2
.end method

.method public tB()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ba()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
