.class Lcom/bytedance/vodsetting/Fetcher;
.super Ljava/lang/Object;
.source "Fetcher.java"


# static fields
.field static final InvalidHostCode:I = -0x3e6

.field static final InvalidJsonCode:I = -0x3e5

.field static final InvalidNetClient:I = -0x3e4

.field static final OverRetryTimesCode:I = -0x3e7

.field static final SuccessCode:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Fetcher"


# instance fields
.field private mConfigVersion:J

.field private final mContext:Landroid/content/Context;

.field private mFetchCount:J

.field private mFetchInterval:I

.field private mFetchVideoRetryTimes:I

.field private mLastFetchTime:J

.field private final mListener:Lcom/bytedance/vodsetting/FetcherListener;

.field private mMaxFetchTimes:I

.field private mMaxRetryTimes:I

.field private mNetInterface:Lcom/bytedance/vodsetting/NetInterface;

.field private mOpenDebug:Z

.field private final mRetryDelay:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/vodsetting/FetcherListener;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mMaxRetryTimes:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mOpenDebug:Z

    .line 10
    .line 11
    const v1, 0x15180

    .line 12
    .line 13
    .line 14
    iput v1, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchInterval:I

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/bytedance/vodsetting/Fetcher;->mConfigVersion:J

    .line 19
    .line 20
    const/4 v3, 0x5

    .line 21
    iput v3, p0, Lcom/bytedance/vodsetting/Fetcher;->mRetryDelay:I

    .line 22
    .line 23
    const/16 v3, 0x64

    .line 24
    .line 25
    iput v3, p0, Lcom/bytedance/vodsetting/Fetcher;->mMaxFetchTimes:I

    .line 26
    .line 27
    iput v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchVideoRetryTimes:I

    .line 28
    .line 29
    iput-wide v1, p0, Lcom/bytedance/vodsetting/Fetcher;->mLastFetchTime:J

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchCount:J

    .line 32
    .line 33
    iput-object p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/bytedance/vodsetting/Fetcher;->mListener:Lcom/bytedance/vodsetting/FetcherListener;

    .line 36
    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/vodsetting/Fetcher;->delayFetch(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/bytedance/vodsetting/Fetcher;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mLastFetchTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$200(Lcom/bytedance/vodsetting/Fetcher;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/vodsetting/Fetcher;->mOpenDebug:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/bytedance/vodsetting/Fetcher;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$400(Lcom/bytedance/vodsetting/Fetcher;)Lcom/bytedance/vodsetting/FetcherListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vodsetting/Fetcher;->mListener:Lcom/bytedance/vodsetting/FetcherListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/Fetcher;->startFetch(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private delayFetch(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "retry fetch, count = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchCount:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Fetcher"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchVideoRetryTimes:I

    .line 26
    .line 27
    iget v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mMaxRetryTimes:I

    .line 28
    .line 29
    if-le v0, v2, :cond_1

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p3, "fetch fail, module = "

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ", retry times = "

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchVideoRetryTimes:I

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mListener:Lcom/bytedance/vodsetting/FetcherListener;

    .line 62
    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string p3, "fetch fail. try times = "

    .line 71
    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget p3, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchVideoRetryTimes:I

    .line 76
    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p3, ", max = "

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget p3, p0, Lcom/bytedance/vodsetting/Fetcher;->mMaxRetryTimes:I

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const/4 p3, 0x0

    .line 95
    const/16 p4, -0x3e7

    .line 96
    .line 97
    invoke-interface {p1, p4, p2, p3}, Lcom/bytedance/vodsetting/FetcherListener;->onResult(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchVideoRetryTimes:I

    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    new-instance v0, Ljava/util/Timer;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lcom/bytedance/vodsetting/Fetcher$2;

    .line 110
    .line 111
    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/vodsetting/Fetcher$2;-><init>(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-wide/16 p1, 0x3e8

    .line 115
    .line 116
    mul-long/2addr p3, p1

    .line 117
    invoke-virtual {v0, v1, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private fetchIfNeeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "try to fetch, module = "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Fetcher"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iget-wide v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mLastFetchTime:J

    .line 28
    .line 29
    const-wide/16 v4, 0x1

    .line 30
    .line 31
    cmp-long v4, v2, v4

    .line 32
    .line 33
    if-ltz v4, :cond_0

    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    iget v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchInterval:I

    .line 37
    .line 38
    int-to-long v2, v2

    .line 39
    const-wide/16 v4, 0x3e8

    .line 40
    .line 41
    mul-long/2addr v2, v4

    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-ltz v0, :cond_1

    .line 45
    .line 46
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/Fetcher;->startFetch(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method private startFetch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mMaxFetchTimes:I

    .line 2
    .line 3
    const-string v1, "Fetcher"

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchCount:J

    .line 8
    .line 9
    int-to-long v4, v0

    .line 10
    cmp-long v0, v2, v4

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p2, "fetch reach max count, maxFetchTimes = "

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget p2, p0, Lcom/bytedance/vodsetting/Fetcher;->mMaxFetchTimes:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v1, p1}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-wide v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchCount:J

    .line 38
    .line 39
    const-wide v4, 0x7fffffffffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmp-long v0, v2, v4

    .line 45
    .line 46
    const-wide/16 v4, 0x1

    .line 47
    .line 48
    if-ltz v0, :cond_1

    .line 49
    .line 50
    iput-wide v4, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchCount:J

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    add-long/2addr v2, v4

    .line 54
    iput-wide v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchCount:J

    .line 55
    .line 56
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "start to fetch, module = "

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, ", fetch count = "

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-wide v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchCount:J

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v1, v0}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mNetInterface:Lcom/bytedance/vodsetting/NetInterface;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    iget-object p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mListener:Lcom/bytedance/vodsetting/FetcherListener;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    const/16 p2, -0x3e4

    .line 96
    .line 97
    const-string v0, "netClient is null"

    .line 98
    .line 99
    invoke-interface {p1, p2, v0, v2}, Lcom/bytedance/vodsetting/FetcherListener;->onResult(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void

    .line 103
    :cond_3
    invoke-static {}, Lcom/bytedance/vodsetting/ConfigEnv;->getRegion()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/bytedance/vodsetting/ConfigEnv;->getHost(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_5

    .line 116
    .line 117
    const-string p1, "get host is null"

    .line 118
    .line 119
    invoke-static {v1, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mListener:Lcom/bytedance/vodsetting/FetcherListener;

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    const/16 p2, -0x3e6

    .line 127
    .line 128
    const-string v0, "host is null"

    .line 129
    .line 130
    invoke-interface {p1, p2, v0, v2}, Lcom/bytedance/vodsetting/FetcherListener;->onResult(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void

    .line 134
    :cond_5
    iget v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchVideoRetryTimes:I

    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    iput v2, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchVideoRetryTimes:I

    .line 139
    .line 140
    new-instance v2, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v3, "caller_name"

    .line 146
    .line 147
    invoke-static {}, Lcom/bytedance/vodsetting/Utils;->getCallerName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const-string v3, "device_platform"

    .line 155
    .line 156
    const-string v4, "android"

    .line 157
    .line 158
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const-string v3, "os_version"

    .line 162
    .line 163
    invoke-static {}, Lcom/bytedance/vodsetting/Utils;->getSystemVersion()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lcom/bytedance/vodsetting/Utils;->getSDKVersion()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    const-string v4, "os_api"

    .line 179
    .line 180
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v4, ""

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-wide v4, p0, Lcom/bytedance/vodsetting/Fetcher;->mConfigVersion:J

    .line 194
    .line 195
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    const-string v4, "config_version"

    .line 203
    .line 204
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const-string v3, "device_brand"

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-nez v4, :cond_6

    .line 214
    .line 215
    invoke-static {}, Lcom/bytedance/vodsetting/Utils;->getDeviceBrand()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    :cond_6
    const-string v3, "device_type"

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-nez v4, :cond_7

    .line 229
    .line 230
    invoke-static {}, Lcom/bytedance/vodsetting/Utils;->getDeviceModel()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-nez v3, :cond_8

    .line 246
    .line 247
    const-string v3, "all"

    .line 248
    .line 249
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-nez v3, :cond_8

    .line 254
    .line 255
    const-string v3, "module"

    .line 256
    .line 257
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    :cond_8
    iget-boolean v3, p0, Lcom/bytedance/vodsetting/Fetcher;->mOpenDebug:Z

    .line 261
    .line 262
    if-eqz v3, :cond_9

    .line 263
    .line 264
    const-string v3, "debug"

    .line 265
    .line 266
    const-string v4, "1"

    .line 267
    .line 268
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-nez v3, :cond_a

    .line 276
    .line 277
    const-string v3, "config_key"

    .line 278
    .line 279
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    :cond_a
    invoke-static {}, Lcom/bytedance/vodsetting/ConfigEnv;->getAPPInfo()Ljava/util/Map;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    if-eqz v3, :cond_b

    .line 287
    .line 288
    invoke-static {}, Lcom/bytedance/vodsetting/ConfigEnv;->getAPPInfo()Ljava/util/Map;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 293
    .line 294
    .line 295
    :cond_b
    invoke-static {}, Lcom/bytedance/vodsetting/ConfigEnv;->getSDKInfo()Ljava/util/Map;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    if-eqz v3, :cond_c

    .line 300
    .line 301
    invoke-static {}, Lcom/bytedance/vodsetting/ConfigEnv;->getSDKInfo()Ljava/util/Map;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 306
    .line 307
    .line 308
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v4, "https://"

    .line 314
    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-static {}, Lcom/bytedance/vodsetting/ConfigEnv;->getPath()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string v4, "param = "

    .line 338
    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-static {v1, v3}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v1, p0, Lcom/bytedance/vodsetting/Fetcher;->mNetInterface:Lcom/bytedance/vodsetting/NetInterface;

    .line 357
    .line 358
    new-instance v3, Lcom/bytedance/vodsetting/Fetcher$1;

    .line 359
    .line 360
    invoke-direct {v3, p0, p1, p2}, Lcom/bytedance/vodsetting/Fetcher$1;-><init>(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/vodsetting/NetInterface;->start(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/vodsetting/NetInterface$CompletionListener;)V

    .line 364
    .line 365
    .line 366
    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchVideoRetryTimes:I

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/Fetcher;->startFetch(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vodsetting/Fetcher;->fetchIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public getFetchInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public setConfigVersion(J)Lcom/bytedance/vodsetting/Fetcher;
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "set config version fail. version = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "Fetcher"

    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mConfigVersion:J

    .line 31
    .line 32
    return-object p0
.end method

.method public setDebug(Z)Lcom/bytedance/vodsetting/Fetcher;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mOpenDebug:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setFetchInterval(I)Lcom/bytedance/vodsetting/Fetcher;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "set fetch interval fail. interval = "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "Fetcher"

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    iput p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mFetchInterval:I

    .line 28
    .line 29
    return-object p0
.end method

.method public setMaxFetchTimes(I)Lcom/bytedance/vodsetting/Fetcher;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "set max fetch times fail. times = "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "Fetcher"

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    iput p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mMaxFetchTimes:I

    .line 28
    .line 29
    return-object p0
.end method

.method public setMaxRetryTimes(I)Lcom/bytedance/vodsetting/Fetcher;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mMaxRetryTimes:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setNet(Lcom/bytedance/vodsetting/NetInterface;)Lcom/bytedance/vodsetting/Fetcher;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vodsetting/Fetcher;->mNetInterface:Lcom/bytedance/vodsetting/NetInterface;

    .line 2
    .line 3
    return-object p0
.end method
