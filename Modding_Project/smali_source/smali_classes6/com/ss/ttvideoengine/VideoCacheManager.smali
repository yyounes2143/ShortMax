.class public Lcom/ss/ttvideoengine/VideoCacheManager;
.super Ljava/lang/Object;
.source "VideoCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;,
        Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;,
        Lcom/ss/ttvideoengine/VideoCacheManager$VideoCacheManagerSingletonHolder;
    }
.end annotation


# static fields
.field public static final CLEAN_IFNECESSARY:I = 0x2

.field public static final CLEAR_CACHE:I = 0x1

.field public static final INIT_CACHE:I = 0x0

.field public static final KEY_NUMBER:I = 0x4

.field public static final KEY_NUMBER_ENCRYPTED:I = 0x5

.field private static TAG:Ljava/lang/String; = "VideoCacheManager"

.field private static volatile dir:Ljava/io/File;


# instance fields
.field private final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cleanFactor:F

.field private clearTask:Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;

.field private volatile isInited:Z

.field private final keyCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/model/VideoCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile maxSize:J

.field private final protectKeyManager:Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;

.field private final readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->cache:Ljava/util/LinkedHashMap;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->keyCache:Ljava/util/LinkedHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    const-wide/32 v2, 0xc800000

    .line 8
    iput-wide v2, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->maxSize:J

    const v0, 0x3e99999a    # 0.3f

    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->cleanFactor:F

    .line 10
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->isInited:Z

    .line 11
    new-instance v0, Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;-><init>(Lcom/ss/ttvideoengine/VideoCacheManager$1;)V

    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->protectKeyManager:Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;

    .line 12
    new-instance v0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->clearTask:Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/VideoCacheManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/VideoCacheManager;-><init>()V

    return-void
.end method

.method public static checkCacheFileIntegrity(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p0, :cond_b

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long p0, v2, p2

    .line 26
    .line 27
    if-gez p0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/16 p0, 0x2800

    .line 31
    .line 32
    int-to-long v2, p0

    .line 33
    cmp-long v2, p2, v2

    .line 34
    .line 35
    if-gez v2, :cond_2

    .line 36
    .line 37
    long-to-int p0, p2

    .line 38
    :cond_2
    const/4 v2, 0x0

    .line 39
    :try_start_0
    const-string v3, "MD5"

    .line 40
    .line 41
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Ljava/io/FileInputStream;

    .line 46
    .line 47
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 48
    .line 49
    .line 50
    :try_start_1
    new-array v0, p0, [B

    .line 51
    .line 52
    move v2, v1

    .line 53
    :goto_0
    if-nez v2, :cond_5

    .line 54
    .line 55
    int-to-long v5, p0

    .line 56
    cmp-long v5, p2, v5

    .line 57
    .line 58
    if-gez v5, :cond_3

    .line 59
    .line 60
    long-to-int v5, p2

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v5, p0

    .line 63
    :goto_1
    invoke-virtual {v4, v0, v1, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v3, v0, v1, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 68
    .line 69
    .line 70
    int-to-long v5, v5

    .line 71
    cmp-long v7, p2, v5

    .line 72
    .line 73
    if-gtz v7, :cond_4

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    sub-long/2addr p2, v5

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    move-object v2, v4

    .line 81
    goto :goto_6

    .line 82
    :catch_0
    move-exception p0

    .line 83
    move-object v2, v4

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p3, ""

    .line 92
    .line 93
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    array-length p3, p0

    .line 97
    move v0, v1

    .line 98
    :goto_2
    if-ge v0, p3, :cond_7

    .line 99
    .line 100
    aget-byte v2, p0, v0

    .line 101
    .line 102
    and-int/lit16 v2, v2, 0xff

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const/4 v5, 0x2

    .line 113
    if-ge v3, v5, :cond_6

    .line 114
    .line 115
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catchall_1
    move-exception p2

    .line 133
    invoke-static {p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :goto_3
    if-eqz p0, :cond_8

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    return p0

    .line 143
    :cond_8
    return v1

    .line 144
    :catchall_2
    move-exception p0

    .line 145
    goto :goto_6

    .line 146
    :catch_1
    move-exception p0

    .line 147
    :goto_4
    :try_start_3
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    .line 149
    .line 150
    if-eqz v2, :cond_9

    .line 151
    .line 152
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :catchall_3
    move-exception p0

    .line 157
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_5
    return v1

    .line 161
    :goto_6
    if-eqz v2, :cond_a

    .line 162
    .line 163
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 164
    .line 165
    .line 166
    goto :goto_7

    .line 167
    :catchall_4
    move-exception p1

    .line 168
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :cond_a
    :goto_7
    throw p0

    .line 172
    :cond_b
    :goto_8
    return v1
.end method

.method private extractKeys(Ljava/io/File;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/VideoCacheManager;->extractKeys(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extractKeys(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p1, p1, v0

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/VideoCacheManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/VideoCacheManager$VideoCacheManagerSingletonHolder;->access$200()Lcom/ss/ttvideoengine/VideoCacheManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private getKey(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public static setDir(Ljava/io/File;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/ss/ttvideoengine/VideoCacheManager;->dir:Ljava/io/File;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method private trimSize(J)V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v2, "start trim"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->cache:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/io/File;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    add-long/2addr v2, v4

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_0
    sget-object v1, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v5, "current file size: "

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, ", maxsize: "

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v1, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    cmp-long v1, v2, p1

    .line 89
    .line 90
    if-gtz v1, :cond_1

    .line 91
    .line 92
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    long-to-float p1, p1

    .line 99
    :try_start_1
    iget p2, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->cleanFactor:F

    .line 100
    .line 101
    mul-float/2addr p1, p2

    .line 102
    float-to-long p1, p1

    .line 103
    new-instance v1, Ljava/util/HashSet;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v4, Ljava/util/HashSet;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v5, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->cache:Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_5

    .line 128
    .line 129
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Ljava/util/Map$Entry;

    .line 134
    .line 135
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    check-cast v7, Ljava/io/File;

    .line 140
    .line 141
    if-eqz v7, :cond_3

    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_3

    .line 148
    .line 149
    iget-object v8, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->protectKeyManager:Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;

    .line 150
    .line 151
    invoke-direct {p0, v7}, Lcom/ss/ttvideoengine/VideoCacheManager;->getKey(Ljava/io/File;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-virtual {v8, v9}, Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;->containsKey(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-nez v8, :cond_4

    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 162
    .line 163
    .line 164
    move-result-wide v8

    .line 165
    new-instance v10, Ljava/io/File;

    .line 166
    .line 167
    new-instance v11, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v12, "-tmp"

    .line 180
    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_4

    .line 196
    .line 197
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    sub-long/2addr v2, v8

    .line 201
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, v7}, Lcom/ss/ttvideoengine/VideoCacheManager;->extractKeys(Ljava/io/File;)[Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {p0, v6}, Lcom/ss/ttvideoengine/VideoCacheManager;->isValidKeys([Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_4

    .line 217
    .line 218
    const-string v7, "%s_%s"

    .line 219
    .line 220
    const/4 v8, 0x0

    .line 221
    aget-object v8, v6, v8

    .line 222
    .line 223
    const/4 v9, 0x1

    .line 224
    aget-object v6, v6, v9

    .line 225
    .line 226
    filled-new-array {v8, v6}, [Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :cond_4
    :goto_1
    cmp-long v6, v2, p1

    .line 246
    .line 247
    if-gtz v6, :cond_2

    .line 248
    .line 249
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    if-eqz p2, :cond_6

    .line 258
    .line 259
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    check-cast p2, Ljava/lang/String;

    .line 264
    .line 265
    iget-object v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->cache:Ljava/util/LinkedHashMap;

    .line 266
    .line 267
    invoke-virtual {v1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_6
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result p2

    .line 279
    if-eqz p2, :cond_7

    .line 280
    .line 281
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    check-cast p2, Ljava/lang/String;

    .line 286
    .line 287
    iget-object v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->keyCache:Ljava/util/LinkedHashMap;

    .line 288
    .line 289
    invoke-virtual {v1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :goto_5
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :goto_6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-eqz p2, :cond_8

    .line 312
    .line 313
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    check-cast p2, Ljava/io/File;

    .line 318
    .line 319
    :try_start_3
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 320
    .line 321
    const-string v1, "delete file name:%s"

    .line 322
    .line 323
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    .line 340
    .line 341
    goto :goto_7

    .line 342
    :catchall_1
    move-exception p2

    .line 343
    invoke-static {p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 344
    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_8
    sget-object p1, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 348
    .line 349
    const-string p2, "end trim"

    .line 350
    .line 351
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :catchall_2
    move-exception p1

    .line 356
    iget-object p2, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 357
    .line 358
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 359
    .line 360
    .line 361
    throw p1
.end method


# virtual methods
.method public addCacheInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/VideoCacheManager;->extractKeys(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/VideoCacheManager;->isValidKeys([Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "%s_%s"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aget-object v2, p1, v1

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    aget-object v4, p1, v3

    .line 26
    .line 27
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "%s_%s_%s_%s"

    .line 36
    .line 37
    aget-object v1, p1, v1

    .line 38
    .line 39
    aget-object v3, p1, v3

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    aget-object v4, p1, v4

    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    aget-object v5, p1, v5

    .line 46
    .line 47
    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    array-length v2, p1

    .line 56
    const/4 v3, 0x5

    .line 57
    if-ne v2, v3, :cond_0

    .line 58
    .line 59
    const/4 v2, 0x4

    .line 60
    aget-object p1, p1, v2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    const/4 p1, 0x0

    .line 66
    :goto_0
    new-instance v2, Lcom/ss/ttvideoengine/model/VideoCacheInfo;

    .line 67
    .line 68
    invoke-direct {v2, p2, v1, v1, p1}, Lcom/ss/ttvideoengine/model/VideoCacheInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->keyCache:Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->keyCache:Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    invoke-virtual {p1, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :goto_2
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    iget-object p2, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_2
    :goto_3
    return-void
.end method

.method public addProtectKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v1, "start add protect key:%s"

    .line 10
    .line 11
    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->protectKeyManager:Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;->addProtectKey(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "end add protect key:%s"

    .line 31
    .line 32
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method checkMD5(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    if-eqz p2, :cond_7

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    cmp-long v3, p3, v1

    .line 9
    .line 10
    if-gtz v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_6

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    cmp-long v4, v4, p3

    .line 30
    .line 31
    if-gez v4, :cond_1

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    const/16 v4, 0x4000

    .line 36
    .line 37
    new-array v4, v4, [B

    .line 38
    .line 39
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 40
    .line 41
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    const-string v3, "MD5"

    .line 45
    .line 46
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :goto_0
    sub-long v6, p3, v1

    .line 51
    .line 52
    const-wide/16 v8, 0x4000

    .line 53
    .line 54
    cmp-long v10, v6, v8

    .line 55
    .line 56
    if-lez v10, :cond_2

    .line 57
    .line 58
    move-wide v6, v8

    .line 59
    :cond_2
    long-to-int v6, v6

    .line 60
    if-nez v6, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v5, v4, v0, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-gez v6, :cond_5

    .line 68
    .line 69
    sget-object p3, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    const-string p4, "read data err:%s"

    .line 72
    .line 73
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .line 86
    .line 87
    new-instance p1, Ljava/math/BigInteger;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    const/4 p4, 0x1

    .line 94
    invoke-direct {p1, p4, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 95
    .line 96
    .line 97
    const-string p3, "%032x"

    .line 98
    .line 99
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    sget-object v1, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    const/16 v2, 0x10

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v2, "cache md5:%s compute md5:%s"

    .line 120
    .line 121
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    sget-object p1, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    const-string p2, "md5 match right"

    .line 137
    .line 138
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return p4

    .line 142
    :cond_4
    return v0

    .line 143
    :catch_0
    move-exception p1

    .line 144
    goto :goto_4

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    int-to-long v7, v6

    .line 148
    add-long/2addr v1, v7

    .line 149
    :try_start_3
    invoke-virtual {v3, v4, v0, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :goto_2
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :catchall_1
    move-exception p2

    .line 155
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_2
    move-exception p3

    .line 160
    :try_start_6
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :goto_3
    throw p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 164
    :goto_4
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    return v0

    .line 168
    :cond_6
    :goto_5
    sget-object p2, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 171
    .line 172
    .line 173
    move-result-wide v1

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    filled-new-array {p1, v1, p3}, [Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string p3, "file not exist or filesize not engough:%s length:%d filesize:%d"

    .line 187
    .line 188
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_7
    :goto_6
    return v0
.end method

.method cleanIfNecessary()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "start clean file maxSize: "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->maxSize:J

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->maxSize:J

    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Lcom/ss/ttvideoengine/VideoCacheManager;->trimSize(J)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "end clean file maxSize: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-wide v2, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->maxSize:J

    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method clear()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "start clear all cache"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/ss/ttvideoengine/VideoCacheManager;->trimSize(J)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "end clear all cache"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/VideoCacheInfo;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->keyCache:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/ss/ttvideoengine/model/VideoCacheInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    :try_start_1
    iget-object v2, v1, Lcom/ss/ttvideoengine/model/VideoCacheInfo;->spadeaKey:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/TTHelper;->customBase64Decode(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, v1, Lcom/ss/ttvideoengine/model/VideoCacheInfo;->spadeaKey:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/ss/ttvideoengine/model/VideoCacheInfo;->fileName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/VideoCacheManager;->extractKeys(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/VideoCacheManager;->isValidKeys([Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v3, v1, Lcom/ss/ttvideoengine/model/VideoCacheInfo;->filePath:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    aget-object v4, v2, v4

    .line 47
    .line 48
    const/4 v5, 0x3

    .line 49
    aget-object v2, v2, v5

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/ss/ttvideoengine/VideoCacheManager;->checkMD5(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    move-object v0, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_0
    sget-object v2, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string v3, "get info err"

    .line 68
    .line 69
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-object v0, v1

    .line 82
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_2
    move-exception p1

    .line 94
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_3
    :goto_3
    return-object v0
.end method

.method init()V
    .locals 11

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "start init videocachemanager"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->isInited:Z

    .line 15
    .line 16
    if-nez v0, :cond_6

    .line 17
    .line 18
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->dir:Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/VideoCacheManager;->isValidDir(Ljava/io/File;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->dir:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    array-length v2, v0

    .line 36
    if-lez v2, :cond_5

    .line 37
    .line 38
    new-instance v2, Ljava/util/HashMap;

    .line 39
    .line 40
    array-length v3, v0

    .line 41
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    array-length v4, v0

    .line 47
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    array-length v4, v0

    .line 51
    const/4 v5, 0x0

    .line 52
    move v6, v5

    .line 53
    :goto_0
    if-ge v6, v4, :cond_1

    .line 54
    .line 55
    aget-object v7, v0, v6

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcom/ss/ttvideoengine/VideoCacheManager$1;

    .line 85
    .line 86
    invoke-direct {v0, p0, v2}, Lcom/ss/ttvideoengine/VideoCacheManager$1;-><init>(Lcom/ss/ttvideoengine/VideoCacheManager;Ljava/util/HashMap;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Ljava/io/File;

    .line 107
    .line 108
    sget-object v3, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 109
    .line 110
    const-string v4, "add file:%s"

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->cache:Ljava/util/LinkedHashMap;

    .line 128
    .line 129
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/VideoCacheManager;->getKey(Ljava/io/File;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v3, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/VideoCacheManager;->extractKeys(Ljava/io/File;)[Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/VideoCacheManager;->isValidKeys([Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    const-string v4, "%s_%s"

    .line 147
    .line 148
    aget-object v6, v3, v5

    .line 149
    .line 150
    aget-object v7, v3, v1

    .line 151
    .line 152
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string v6, "%s_%s_%s_%s"

    .line 161
    .line 162
    aget-object v7, v3, v5

    .line 163
    .line 164
    aget-object v8, v3, v1

    .line 165
    .line 166
    const/4 v9, 0x2

    .line 167
    aget-object v9, v3, v9

    .line 168
    .line 169
    const/4 v10, 0x3

    .line 170
    aget-object v10, v3, v10

    .line 171
    .line 172
    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    array-length v7, v3

    .line 181
    const/4 v8, 0x5

    .line 182
    if-ne v7, v8, :cond_3

    .line 183
    .line 184
    const/4 v7, 0x4

    .line 185
    aget-object v3, v3, v7

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_3
    const/4 v3, 0x0

    .line 189
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    if-eqz v3, :cond_4

    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-lez v8, :cond_4

    .line 200
    .line 201
    invoke-static {v3}, Lcom/ss/ttvideoengine/utils/TTHelper;->customBase64Encode(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    if-eqz v8, :cond_4

    .line 206
    .line 207
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-nez v9, :cond_4

    .line 212
    .line 213
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    new-instance v3, Ljava/io/File;

    .line 218
    .line 219
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 223
    .line 224
    .line 225
    move-object v3, v8

    .line 226
    :cond_4
    new-instance v2, Lcom/ss/ttvideoengine/model/VideoCacheInfo;

    .line 227
    .line 228
    invoke-direct {v2, v7, v6, v6, v3}, Lcom/ss/ttvideoengine/model/VideoCacheInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v3, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->keyCache:Ljava/util/LinkedHashMap;

    .line 232
    .line 233
    invoke-virtual {v3, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    goto/16 :goto_2

    .line 237
    .line 238
    :cond_5
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .line 240
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :goto_5
    :try_start_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :goto_6
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 251
    .line 252
    const-string v1, "end init videocachemanager"

    .line 253
    .line 254
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :catchall_1
    move-exception v0

    .line 259
    iget-object v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 262
    .line 263
    .line 264
    throw v0
.end method

.method public isCacheInfoExist(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->keyCache:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_1
    return v1
.end method

.method isValidDir(Ljava/io/File;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method isValidKeys([Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x4

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    const/4 v2, 0x5

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    array-length v1, p1

    .line 14
    move v2, v0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_3
    :goto_1
    return v0
.end method

.method public removeProtectKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v1, "start remove protect key:%s"

    .line 10
    .line 11
    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->protectKeyManager:Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/VideoCacheManager$ProtectKeyManager;->removeProtectKey(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "end remove protect key:%s"

    .line 31
    .line 32
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public setMaxSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->maxSize:J

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager;->clearTask:Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->postMessage(Lcom/ss/ttvideoengine/VideoCacheManager;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
