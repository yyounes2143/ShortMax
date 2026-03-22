.class public Lcom/ss/ttvideoengine/preload/PreloadUtil;
.super Ljava/lang/Object;
.source "PreloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;
    }
.end annotation


# static fields
.field private static final CancelReasonByBuffering:Ljava/lang/String; = "buffering"

.field private static final CancelReasonByLowPlayBuffer:Ljava/lang/String; = "low_buffer"

.field private static final TAG:Ljava/lang/String; = "PreloadUtil"

.field private static final mMaxPlayCount:I = 0x2


# instance fields
.field public mPlayBufferLowerBound:J

.field public mPlayBufferUpperBound:J

.field private final mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mPlayInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferLowerBound:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferUpperBound:J

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 23
    .line 24
    return-void
.end method

.method private cancelPreload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cancel preload because:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " traceId:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "PreloadUtil"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelAllTasks()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->notifyPreloadCancelled(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private checkPlayBuffer(Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-wide v1, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferUpperBound:J

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const-string v3, " playable buffer is: "

    .line 20
    .line 21
    const-string v4, "PreloadUtil"

    .line 22
    .line 23
    if-lez v1, :cond_1

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v5, "trigger preload "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v5, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 47
    .line 48
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v4, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-wide v5, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 63
    .line 64
    invoke-virtual {v1, v5, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->notifyTriggerPreload(J)V

    .line 65
    .line 66
    .line 67
    iput-boolean v2, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 68
    .line 69
    :cond_1
    iget-boolean v1, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mCacheEnd:Z

    .line 70
    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    iget-wide v5, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mDuration:J

    .line 74
    .line 75
    const-wide/16 v7, 0x0

    .line 76
    .line 77
    cmp-long v1, v5, v7

    .line 78
    .line 79
    if-lez v1, :cond_2

    .line 80
    .line 81
    iget-wide v9, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 82
    .line 83
    iget-wide v11, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayPosition:J

    .line 84
    .line 85
    add-long/2addr v9, v11

    .line 86
    const-wide/16 v11, 0x3e8

    .line 87
    .line 88
    add-long/2addr v9, v11

    .line 89
    cmp-long v1, v9, v5

    .line 90
    .line 91
    if-ltz v1, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-wide v1, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 95
    .line 96
    iget-wide v3, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayBufferLowerBound:J

    .line 97
    .line 98
    cmp-long v1, v1, v3

    .line 99
    .line 100
    if-gez v1, :cond_3

    .line 101
    .line 102
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getPreloadTaskCount()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    iget-boolean v3, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 111
    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    cmp-long v1, v1, v7

    .line 115
    .line 116
    if-lez v1, :cond_3

    .line 117
    .line 118
    const-string v1, "low_buffer"

    .line 119
    .line 120
    invoke-direct {p0, v1, p1}, Lcom/ss/ttvideoengine/preload/PreloadUtil;->cancelPreload(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const/4 p1, 0x0

    .line 124
    iput-boolean p1, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 125
    .line 126
    :cond_3
    return-void

    .line 127
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 128
    .line 129
    if-nez v1, :cond_5

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v5, "cached video trigger preload "

    .line 137
    .line 138
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-wide v5, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 148
    .line 149
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v4, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-wide v3, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 164
    .line 165
    invoke-virtual {p1, v3, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->notifyTriggerPreload(J)V

    .line 166
    .line 167
    .line 168
    iput-boolean v2, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 169
    .line 170
    :cond_5
    return-void
.end method


# virtual methods
.method public notifyCacheEnd(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 29
    .line 30
    new-instance v1, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "key :"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " cache end."

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "PreloadUtil"

    .line 61
    .line 62
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mCacheEnd:Z

    .line 77
    .line 78
    iget-boolean v3, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 79
    .line 80
    if-nez v3, :cond_3

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v4, "cached video trigger preload "

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " cache end "

    .line 96
    .line 97
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-wide v2, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 112
    .line 113
    invoke-virtual {p1, v2, v3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->notifyTriggerPreload(J)V

    .line 114
    .line 115
    .line 116
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, " play info null"

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public removePlayInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public updatePlayInfo(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x2

    .line 21
    if-lt p2, v0, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance p2, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;

    .line 29
    .line 30
    invoke-direct {p2}, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p3, p2, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mVideoID:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoMap:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const/16 v0, 0x16

    .line 57
    .line 58
    if-eq p1, v0, :cond_6

    .line 59
    .line 60
    const/16 v0, 0x17

    .line 61
    .line 62
    if-eq p1, v0, :cond_5

    .line 63
    .line 64
    const/16 v0, 0x19

    .line 65
    .line 66
    if-eq p1, v0, :cond_4

    .line 67
    .line 68
    const/16 v0, 0x1b

    .line 69
    .line 70
    if-eq p1, v0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iput-wide p4, p2, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 74
    .line 75
    invoke-direct {p0, p3}, Lcom/ss/ttvideoengine/preload/PreloadUtil;->checkPlayBuffer(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const-string p1, "buffering"

    .line 80
    .line 81
    invoke-direct {p0, p1, p3}, Lcom/ss/ttvideoengine/preload/PreloadUtil;->cancelPreload(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    iput-wide p4, p2, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayPosition:J

    .line 86
    .line 87
    invoke-direct {p0, p3}, Lcom/ss/ttvideoengine/preload/PreloadUtil;->checkPlayBuffer(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    iput-wide p4, p2, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mDuration:J

    .line 92
    .line 93
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil;->mPlayInfoLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 96
    .line 97
    .line 98
    return-void
.end method
