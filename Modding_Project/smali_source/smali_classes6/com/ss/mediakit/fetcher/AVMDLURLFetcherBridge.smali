.class public Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;
.super Ljava/lang/Object;
.source "AVMDLURLFetcherBridge.java"

# interfaces
.implements Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AVMDLURLFetcherBridge"

.field private static fetcherMaker:Lcom/ss/mediakit/fetcher/AVMDLFetcherMakerInterface; = null

.field private static newFetcherMaker:Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface; = null

.field private static sJniVersion:I = 0x2


# instance fields
.field public engineId:Ljava/lang/String;

.field private fetcherInstance:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;

.field public fileKey:Ljava/lang/String;

.field private handle:J

.field isFinish:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field newURL:Ljava/lang/String;

.field public oldURL:Ljava/lang/String;

.field public rawKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->rawKey:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->fileKey:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->oldURL:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->engineId:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->isFinish:Z

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 28
    .line 29
    return-void
.end method

.method private static native _notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native _notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static setFetcherMaker(Lcom/ss/mediakit/fetcher/AVMDLFetcherMakerInterface;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->fetcherMaker:Lcom/ss/mediakit/fetcher/AVMDLFetcherMakerInterface;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public static setNewFetcherMaker(Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newFetcherMaker:Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface;

    .line 4
    .line 5
    :cond_0
    return-void
.end method


# virtual methods
.method getNewUrl(Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    .line 1
    iput-object p2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->rawKey:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->fileKey:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->oldURL:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p1, p2, p3, p4, p0}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;)I

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    const/4 v0, 0x0

    .line 12
    if-lez p4, :cond_4

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;->getURLs()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "AVMDLURLFetcherBridge"

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    array-length v2, p1

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-wide v2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    cmp-long p4, v2, v4

    .line 31
    .line 32
    if-eqz p4, :cond_4

    .line 33
    .line 34
    aget-object p4, p1, v0

    .line 35
    .line 36
    iput-object p4, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    .line 37
    .line 38
    const-string/jumbo p4, "start notify result"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget p4, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->sJniVersion:I

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    const/4 v3, 0x1

    .line 48
    const/4 v10, 0x1

    .line 49
    if-ne p4, v2, :cond_1

    .line 50
    .line 51
    :try_start_0
    iget-wide v4, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 52
    .line 53
    aget-object v8, p1, v0

    .line 54
    .line 55
    move-object v6, p2

    .line 56
    move-object v7, p3

    .line 57
    move v9, v10

    .line 58
    invoke-static/range {v4 .. v9}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->_notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    sput v3, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->sJniVersion:I

    .line 63
    .line 64
    :cond_1
    :goto_0
    sget p4, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->sJniVersion:I

    .line 65
    .line 66
    if-ne p4, v3, :cond_2

    .line 67
    .line 68
    iget-wide v2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 69
    .line 70
    aget-object p1, p1, v0

    .line 71
    .line 72
    invoke-static {v2, v3, p2, p3, p1}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->_notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    const-string p1, "end notify result"

    .line 76
    .line 77
    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move v0, v10

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    :goto_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 83
    .line 84
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const-string p3, "****end fail start ret:%d, but getURLs null"

    .line 93
    .line 94
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, -0x2

    .line 102
    return p1

    .line 103
    :cond_4
    :goto_2
    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "****get result:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "AVMDLURLFetcherBridge"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method isFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->isFinish:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->isFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const-string v1, "AVMDLURLFetcherBridge"

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    :try_start_1
    array-length v0, p4

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aget-object p4, p4, v0

    .line 19
    .line 20
    iput-object p4, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :goto_0
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    const-string v0, "receive completion code:%d result:%s"

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    .line 34
    .line 35
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {p4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    invoke-static {v1, p4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p4, 0x1

    .line 47
    iput-boolean p4, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->isFinish:Z

    .line 48
    .line 49
    iget-wide v2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    cmp-long v0, v2, v4

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    const-string/jumbo v0, "start notify result"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget v0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->sJniVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    if-ne v0, v2, :cond_1

    .line 67
    .line 68
    :try_start_2
    iget-wide v3, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 69
    .line 70
    iget-object v7, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    .line 71
    .line 72
    move-object v5, p2

    .line 73
    move-object v6, p3

    .line 74
    move v8, p1

    .line 75
    invoke-static/range {v3 .. v8}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->_notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    :try_start_3
    sput p4, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->sJniVersion:I

    .line 80
    .line 81
    :cond_1
    :goto_1
    sget p1, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->sJniVersion:I

    .line 82
    .line 83
    if-ne p1, p4, :cond_2

    .line 84
    .line 85
    iget-wide v2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 86
    .line 87
    iget-object p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v2, v3, p2, p3, p1}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->_notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    const-string p1, "end notify result"

    .line 93
    .line 94
    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    .line 100
    const-string p3, "has fetch finished not need cur completion code:%d result:%s"

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p4, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    .line 107
    .line 108
    filled-new-array {p1, p4}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p2, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public release()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "----start release fetcher:%s"

    .line 4
    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "AVMDLURLFetcherBridge"

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    :try_start_0
    iput-wide v3, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->rawKey:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->fileKey:Ljava/lang/String;

    .line 35
    .line 36
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, "remove fetcher rawkey:%s, fileKey:%s"

    .line 41
    .line 42
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "****end call release:%s"

    .line 50
    .line 51
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public start(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "----old api fallback retry Jni"

    const-string v1, "AVMDLURLFetcherBridge"

    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----start fetch rawkey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->fetcherMaker:Lcom/ss/mediakit/fetcher/AVMDLFetcherMakerInterface;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    const-string v0, "----old api fallback retry engine"

    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 7
    iput-wide p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 8
    :try_start_0
    sget-object p1, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->fetcherMaker:Lcom/ss/mediakit/fetcher/AVMDLFetcherMakerInterface;

    invoke-interface {p1, p3, p4, p5}, Lcom/ss/mediakit/fetcher/AVMDLFetcherMakerInterface;->getFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->fetcherInstance:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;

    if-nez p1, :cond_1

    .line 9
    const-string p1, "****fail, get fetcher is null"

    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->getNewUrl(Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object p2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 13
    :goto_0
    :try_start_2
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "****call start failed, get exception: %s"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    iget-object p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/16 p1, -0x3e7

    .line 15
    :goto_1
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "****call start end, result:%d"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 16
    :goto_2
    iget-object p2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 17
    :cond_2
    :goto_3
    const-string p1, "****end fetch fail,fetcherMaker is null or rawky or filekey or originurl is null"

    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public start(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 18
    const-string v0, "----new api fallback retry Jni"

    const-string v1, "AVMDLURLFetcherBridge"

    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----start fetch rawkey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----start fetch engineID is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newFetcherMaker:Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface;

    if-eqz v0, :cond_3

    .line 22
    const-string v0, "----new api fallback retry engine"

    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 25
    iput-wide p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    .line 26
    :try_start_0
    iput-object p6, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->engineId:Ljava/lang/String;

    .line 27
    sget-object p1, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->newFetcherMaker:Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface;

    invoke-interface {p1, p3, p4, p5, p6}, Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface;->getFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->fetcherInstance:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;

    if-nez p1, :cond_1

    .line 28
    const-string p1, "****fail, get fetcher is null"

    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    .line 30
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->getNewUrl(Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    iget-object p2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 32
    :goto_0
    :try_start_2
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "****call start failed, get exception: %s"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    iget-object p1, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/16 p1, -0x3e7

    .line 34
    :goto_1
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "****call start end, result:%d"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 35
    :goto_2
    iget-object p2, p0, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 36
    :cond_2
    :goto_3
    const-string p1, "****end fetch fail,fetcherMaker is null or rawky or filekey or originurl or engineId is null"

    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 37
    :cond_3
    const-string p6, "----old api fallback retry engine"

    invoke-static {v1, p6}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p0 .. p5}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->start(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_4
    return p1
.end method
