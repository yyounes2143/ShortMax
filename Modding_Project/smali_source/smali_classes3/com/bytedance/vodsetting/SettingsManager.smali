.class public Lcom/bytedance/vodsetting/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;,
        Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;
    }
.end annotation


# static fields
.field private static final LOCAL_CACHE_EXPIRE:Ljava/lang/String; = "local_cache_expire"

.field private static final TAG:Ljava/lang/String; = "Manager"

.field private static instance:Lcom/bytedance/vodsetting/SettingsManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final cModuleItems:[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

.field private mAppBackGround:Z

.field private mContext:Landroid/content/Context;

.field private mExpire:J

.field private mFetchInterval:I

.field private mFetcher:Lcom/bytedance/vodsetting/Fetcher;

.field private final mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vodsetting/SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalCacheExpire:J

.field private mMaxFetchTimes:I

.field private mSchedule:Ljava/util/Timer;

.field private final mStorages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vodsetting/Storage;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Ljava/util/TimerTask;

.field private mUseCache:Z

.field private mVersion:J


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mUseCache:Z

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mExpire:J

    .line 29
    .line 30
    const/16 v3, 0x258

    .line 31
    .line 32
    iput v3, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetchInterval:I

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mVersion:J

    .line 35
    .line 36
    const/16 v3, 0x64

    .line 37
    .line 38
    iput v3, p0, Lcom/bytedance/vodsetting/SettingsManager;->mMaxFetchTimes:I

    .line 39
    .line 40
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mSchedule:Ljava/util/Timer;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mTask:Ljava/util/TimerTask;

    .line 43
    .line 44
    iput-wide v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mLocalCacheExpire:J

    .line 45
    .line 46
    sget-object v0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->VOD:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 47
    .line 48
    sget-object v1, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->MDL:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 49
    .line 50
    sget-object v2, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->UPLOAD:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 51
    .line 52
    sget-object v3, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->BIZ_PORTRAIT:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 53
    .line 54
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->cModuleItems:[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 59
    .line 60
    new-instance v0, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 66
    .line 67
    new-instance v1, Lcom/bytedance/vodsetting/Storage;

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    const-string v3, "common"

    .line 71
    .line 72
    invoke-direct {v1, v3, v2}, Lcom/bytedance/vodsetting/Storage;-><init>(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->cModuleItems:[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 80
    .line 81
    array-length v2, v1

    .line 82
    if-ge v0, v2, :cond_0

    .line 83
    .line 84
    iget-object v2, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 85
    .line 86
    aget-object v1, v1, v0

    .line 87
    .line 88
    iget-object v1, v1, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->stringValue:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v3, Lcom/bytedance/vodsetting/Storage;

    .line 91
    .line 92
    const/4 v4, 0x3

    .line 93
    invoke-direct {v3, v1, v4}, Lcom/bytedance/vodsetting/Storage;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method private declared-synchronized _cancelScheduleEvent()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mTask:Ljava/util/TimerTask;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "Manager"

    .line 7
    .line 8
    const-string v1, "cancel schedule"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mTask:Ljava/util/TimerTask;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method private _loadLocalData(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bytedance/vodsetting/Storage;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mUseCache:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x3e8

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lcom/bytedance/vodsetting/SettingsManager;->_notifyListener(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/vodsetting/Storage;->removeAllCache()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized _loadLocalSettings(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mExpire:J

    .line 3
    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-gez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 11
    .line 12
    const-string v1, "common"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/bytedance/vodsetting/Storage;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/vodsetting/Storage;->tryToLoadLocal(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :try_start_1
    const-string v2, "fetch_interval"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/vodsetting/Storage;->getInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetchInterval:I

    .line 37
    .line 38
    const-string v2, "config_version"

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/vodsetting/Storage;->getLong(Ljava/lang/String;J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    iput-wide v5, p0, Lcom/bytedance/vodsetting/SettingsManager;->mVersion:J

    .line 47
    .line 48
    const-string v2, "local_cache_expire"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/vodsetting/Storage;->getLong(Ljava/lang/String;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iput-wide v2, p0, Lcom/bytedance/vodsetting/SettingsManager;->mExpire:J

    .line 55
    .line 56
    const-string v2, "use_local_cache"

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/vodsetting/Storage;->getInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-lez v2, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v3, v1

    .line 67
    :goto_0
    iput-boolean v3, p0, Lcom/bytedance/vodsetting/SettingsManager;->mUseCache:Z

    .line 68
    .line 69
    const-string v2, "max_fetch_times"

    .line 70
    .line 71
    iget v3, p0, Lcom/bytedance/vodsetting/SettingsManager;->mMaxFetchTimes:I

    .line 72
    .line 73
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/vodsetting/Storage;->getInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mMaxFetchTimes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    :try_start_2
    const-string v2, "Manager"

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v2, v0}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->cModuleItems:[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 91
    .line 92
    array-length v2, v0

    .line 93
    if-ge v1, v2, :cond_1

    .line 94
    .line 95
    aget-object v0, v0, v1

    .line 96
    .line 97
    iget-object v0, v0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->stringValue:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {p0, v0}, Lcom/bytedance/vodsetting/SettingsManager;->_loadLocalData(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    goto :goto_2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    iget v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetchInterval:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/bytedance/vodsetting/Fetcher;->setFetchInterval(I)Lcom/bytedance/vodsetting/Fetcher;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 117
    .line 118
    iget v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mMaxFetchTimes:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/bytedance/vodsetting/Fetcher;->setMaxFetchTimes(I)Lcom/bytedance/vodsetting/Fetcher;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 124
    .line 125
    iget-wide v1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mVersion:J

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/vodsetting/Fetcher;->setConfigVersion(J)Lcom/bytedance/vodsetting/Fetcher;

    .line 128
    .line 129
    .line 130
    :cond_2
    if-eqz p2, :cond_4

    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    const-string p2, "Manager"

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v3, "use cache: "

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-boolean v3, p0, Lcom/bytedance/vodsetting/SettingsManager;->mUseCache:Z

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, ", expire = "

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-wide v3, p0, Lcom/bytedance/vodsetting/SettingsManager;->mExpire:J

    .line 159
    .line 160
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v3, ", curTimeMs = "

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {p2, v2}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-boolean p2, p0, Lcom/bytedance/vodsetting/SettingsManager;->mUseCache:Z

    .line 179
    .line 180
    if-eqz p2, :cond_3

    .line 181
    .line 182
    iget-wide v2, p0, Lcom/bytedance/vodsetting/SettingsManager;->mExpire:J

    .line 183
    .line 184
    cmp-long p2, v2, v0

    .line 185
    .line 186
    if-gtz p2, :cond_4

    .line 187
    .line 188
    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->refresh(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    iget p1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetchInterval:I

    .line 192
    .line 193
    int-to-long p1, p1

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->_smartScheduleEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    .line 196
    .line 197
    monitor-exit p0

    .line 198
    return-void

    .line 199
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    throw p1
.end method

.method private _notifyListener(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bytedance/vodsetting/SettingsListener;

    .line 27
    .line 28
    invoke-interface {v1, p1, p2}, Lcom/bytedance/vodsetting/SettingsListener;->onNotify(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private declared-synchronized _smartScheduleEvent(J)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "Manager"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "smart schedule mAppBackGround:"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/bytedance/vodsetting/SettingsManager;->mAppBackGround:Z

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", interval:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mAppBackGround:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/bytedance/vodsetting/SettingsManager;->_cancelScheduleEvent()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->_startScheduleEvent(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p1
.end method

.method private declared-synchronized _startScheduleEvent(J)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mTask:Ljava/util/TimerTask;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    :goto_0
    new-instance v0, Lcom/bytedance/vodsetting/SettingsManager$3;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/bytedance/vodsetting/SettingsManager$3;-><init>(Lcom/bytedance/vodsetting/SettingsManager;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mTask:Ljava/util/TimerTask;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mSchedule:Ljava/util/Timer;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v0, Ljava/util/Timer;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mSchedule:Ljava/util/Timer;

    .line 34
    .line 35
    :goto_1
    const-wide/16 v0, 0x3e8

    .line 36
    .line 37
    mul-long v2, p1, v0

    .line 38
    .line 39
    cmp-long v2, v2, v0

    .line 40
    .line 41
    if-gez v2, :cond_2

    .line 42
    .line 43
    const-wide/32 p1, 0x15180

    .line 44
    .line 45
    .line 46
    :cond_2
    const-string v2, "Manager"

    .line 47
    .line 48
    const-string v3, "start schedule"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    iget-object v4, p0, Lcom/bytedance/vodsetting/SettingsManager;->mSchedule:Ljava/util/Timer;

    .line 54
    .line 55
    iget-object v5, p0, Lcom/bytedance/vodsetting/SettingsManager;->mTask:Ljava/util/TimerTask;

    .line 56
    .line 57
    mul-long v8, p1, v0

    .line 58
    .line 59
    move-wide v6, v8

    .line 60
    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_1
    move-exception p1

    .line 65
    :try_start_2
    const-string p2, "Manager"

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "reset schedule fail. "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p2, v0}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    :goto_2
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    throw p1
.end method

.method private _storeSettingsInfo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/bytedance/vodsetting/Storage;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/vodsetting/Storage;->getJsonObject()Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    :cond_0
    if-eqz p2, :cond_1

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p2, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0, p3, p2}, Lcom/bytedance/vodsetting/Storage;->storeJsonObject(Lorg/json/JSONObject;Z)V

    .line 37
    .line 38
    .line 39
    const/16 p2, 0x3e8

    .line 40
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->_notifyListener(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->_loadLocalData(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vodsetting/SettingsManager;->cModuleItems:[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->_loadLocalSettings(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/bytedance/vodsetting/SettingsManager;)Lcom/bytedance/vodsetting/Fetcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/bytedance/vodsetting/SettingsManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/bytedance/vodsetting/SettingsManager;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->_smartScheduleEvent(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/vodsetting/SettingsManager;->_storeSettingsInfo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized shareSettings()Lcom/bytedance/vodsetting/SettingsManager;
    .locals 2

    .line 1
    const-class v0, Lcom/bytedance/vodsetting/SettingsManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/vodsetting/SettingsManager;->instance:Lcom/bytedance/vodsetting/SettingsManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/bytedance/vodsetting/SettingsManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/bytedance/vodsetting/SettingsManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/bytedance/vodsetting/SettingsManager;->instance:Lcom/bytedance/vodsetting/SettingsManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/vodsetting/SettingsManager;->instance:Lcom/bytedance/vodsetting/SettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public addListener(Lcom/bytedance/vodsetting/SettingsListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public getCommonInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    const-string v0, "common"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getCommonLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    const-string v0, "common"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bytedance/vodsetting/SettingsManager;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getCommonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "common"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/bytedance/vodsetting/Storage;

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/vodsetting/Storage;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getJsonArray(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/bytedance/vodsetting/Storage;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/bytedance/vodsetting/Storage;->getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/vodsetting/Storage;

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/vodsetting/Storage;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/vodsetting/Storage;

    .line 2
    invoke-virtual {p1, p2}, Lcom/bytedance/vodsetting/Storage;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/bytedance/vodsetting/Storage;

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/vodsetting/Storage;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public getMDLInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    const-string v0, "mdl"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getMDLJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 1
    const-string v0, "mdl"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonArray(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getMDLJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    const-string v0, "mdl"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getMDLLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    const-string v0, "mdl"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bytedance/vodsetting/SettingsManager;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getMDLString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "mdl"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/bytedance/vodsetting/Storage;

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/vodsetting/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getUploadInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    const-string v0, "upload"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getUploadJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 1
    const-string v0, "upload"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonArray(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getUploadJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    const-string v0, "upload"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getUploadLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    const-string v0, "upload"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bytedance/vodsetting/SettingsManager;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getUploadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "upload"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getVodInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    const-string v0, "vod"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getVodJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 1
    const-string v0, "vod"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonArray(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    const-string v0, "vod"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/vodsetting/SettingsManager;->getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getVodLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    const-string v0, "vod"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bytedance/vodsetting/SettingsManager;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getVodString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "vod"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public declared-synchronized isAppBackGround()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mAppBackGround:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public loadLocal(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/vodsetting/SettingsManager$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/bytedance/vodsetting/SettingsManager$1;-><init>(Lcom/bytedance/vodsetting/SettingsManager;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public loadLocalAndRefresh(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/Thread;

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/vodsetting/SettingsManager$2;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/bytedance/vodsetting/SettingsManager$2;-><init>(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/SettingsManager;->_loadLocalSettings(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public putCommonInt(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "common"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/bytedance/vodsetting/Storage;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vodsetting/Storage;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public putCommonLong(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "common"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/bytedance/vodsetting/Storage;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/vodsetting/Storage;->putLong(Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public putCommonString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "common"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/bytedance/vodsetting/Storage;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vodsetting/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public refresh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    const-string v3, "all"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/vodsetting/Fetcher;->fetch(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/vodsetting/Fetcher;->fetch(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public refresh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/vodsetting/Fetcher;->fetch(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public refreshIfNeed(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/vodsetting/Fetcher;->fetch(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/bytedance/vodsetting/SettingsListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mListenerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public declared-synchronized setAppBackground(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mAppBackGround:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    const-string v0, "Manager"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "setAppBackground:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mAppBackGround:Z

    .line 29
    .line 30
    iget p1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetchInterval:I

    .line 31
    .line 32
    int-to-long v0, p1

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vodsetting/SettingsManager;->_smartScheduleEvent(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public setContext(Landroid/content/Context;)Lcom/bytedance/vodsetting/SettingsManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mStorages:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/bytedance/vodsetting/Storage;

    .line 28
    .line 29
    iput-object p1, v1, Lcom/bytedance/vodsetting/Storage;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/bytedance/vodsetting/Fetcher;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v1, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;

    .line 39
    .line 40
    invoke-direct {v1, p0, p0}, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;-><init>(Lcom/bytedance/vodsetting/SettingsManager;Lcom/bytedance/vodsetting/SettingsManager;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1, v1}, Lcom/bytedance/vodsetting/Fetcher;-><init>(Landroid/content/Context;Lcom/bytedance/vodsetting/FetcherListener;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 47
    .line 48
    :cond_1
    return-object p0
.end method

.method public setDebug(Z)Lcom/bytedance/vodsetting/SettingsManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/Fetcher;->setDebug(Z)Lcom/bytedance/vodsetting/Fetcher;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/bytedance/vodsetting/Log;->setDebugSwitch(Z)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setFetchInterval(I)Lcom/bytedance/vodsetting/SettingsManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/Fetcher;->setFetchInterval(I)Lcom/bytedance/vodsetting/Fetcher;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMaxFetchTimes(I)Lcom/bytedance/vodsetting/SettingsManager;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vodsetting/SettingsManager;->mMaxFetchTimes:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxRetryTimes(I)Lcom/bytedance/vodsetting/SettingsManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/Fetcher;->setMaxRetryTimes(I)Lcom/bytedance/vodsetting/Fetcher;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setNet(Lcom/bytedance/vodsetting/NetInterface;)Lcom/bytedance/vodsetting/SettingsManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager;->mFetcher:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/vodsetting/Fetcher;->setNet(Lcom/bytedance/vodsetting/NetInterface;)Lcom/bytedance/vodsetting/Fetcher;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
