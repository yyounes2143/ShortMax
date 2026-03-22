.class Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;
.super Ljava/lang/Object;
.source "LicenseLoader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/LicenseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLoadTask"
.end annotation


# instance fields
.field private volatile canceled:Z

.field private final context:Landroid/content/Context;

.field private final diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

.field private httpWriter:Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;

.field private final request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

.field private result:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;


# direct methods
.method public constructor <init>(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->context:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->result:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadWithRetryPolicy(Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->uri:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :cond_0
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    new-instance v3, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;

    .line 9
    .line 10
    new-instance v4, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask$1;

    .line 11
    .line 12
    invoke-direct {v4, p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask$1;-><init>(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v0, v4}, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;-><init>(Ljava/lang/String;Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;)V

    .line 16
    .line 17
    .line 18
    iput-object v3, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->httpWriter:Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;

    .line 19
    .line 20
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v4, v3}, Lcom/pandora/ttlicense2/loader/DiskCache;->put(Ljava/lang/String;Lcom/pandora/ttlicense2/loader/DiskCache$Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->isCanceled()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_5

    .line 41
    .line 42
    iget-object v3, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 43
    .line 44
    iget-object v4, v3, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->retryPolicy:Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    iget v5, v4, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;->mainRetryCount:I

    .line 49
    .line 50
    if-ge v1, v5, :cond_1

    .line 51
    .line 52
    iget-object v0, v3, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->uri:Ljava/lang/String;

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    iget-object v3, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->context:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v3}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->isNetAvailable(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    iget-wide v3, v4, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;->mainRetryWaitTime:J

    .line 65
    .line 66
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget v5, v4, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;->backupRetryCount:I

    .line 71
    .line 72
    if-ge v2, v5, :cond_3

    .line 73
    .line 74
    iget-object v3, v3, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->backupUri:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->context:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->isNetAvailable(Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    iget-wide v4, v4, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;->backupRetryWaitTime:J

    .line 89
    .line 90
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 91
    .line 92
    .line 93
    :cond_2
    move-object v0, v3

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    throw v0

    .line 96
    :cond_4
    throw v0

    .line 97
    :cond_5
    throw v0
.end method


# virtual methods
.method public cancel(ZZLjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->canceled:Z

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->httpWriter:Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;

    .line 6
    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->cancel()V

    .line 11
    .line 12
    .line 13
    monitor-enter p0

    .line 14
    const/4 p1, 0x0

    .line 15
    :try_start_1
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->httpWriter:Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :catchall_1
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    throw p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->canceled:Z

    .line 2
    .line 3
    return v0
.end method

.method public load(Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->ignoreCache:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/pandora/ttlicense2/loader/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-interface {p1, v1}, Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;->notifyProgressChanged(F)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {p1, v0, v1, v2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;-><init>(Ljava/lang/String;Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Z)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->result:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->loadWithRetryPolicy(Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/pandora/ttlicense2/loader/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-direct {v0, p1, v1, v2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;-><init>(Ljava/lang/String;Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Z)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->result:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 79
    .line 80
    :goto_1
    return-void

    .line 81
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "cacheKey = "

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method
