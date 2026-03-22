.class public Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;
.super Ljava/lang/Object;
.source "VideoEventOneOutSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$StatisticDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;
    }
.end annotation


# static fields
.field public static final END_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final END_TYPE_EXIT:Ljava/lang/String; = "exit"

.field public static final END_TYPE_FINISH:Ljava/lang/String; = "finish"

.field public static final END_TYPE_SEEK:Ljava/lang/String; = "seek"

.field public static final END_TYPE_SWITCH:Ljava/lang/String; = "switch"

.field public static final END_TYPE_WAIT:Ljava/lang/String; = "wait"

.field public static final EVENT_TYPE_OUTSYNC:Ljava/lang/String; = "av_outsync"

.field private static final TAG:Ljava/lang/String; = "VideoEventOneOutSync"

.field public static final VIDEO_OUTSYNC_KEY_PAUSE_TIME:I = 0x1

.field public static final monitorName:Ljava/lang/String; = "videoplayer_oneevent"


# instance fields
.field public mAVOutSyncCount:I

.field public mAudioStreamDuration:J

.field public mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

.field public mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field public mFirstFrameTime:J

.field public mIndex:I

.field public mIsAVBadInterlaced:I

.field public mLastEventTime:J

.field public mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoStreamDuration:J


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mList:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mAVOutSyncCount:I

    .line 16
    .line 17
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIndex:I

    .line 18
    .line 19
    const-wide/32 v2, -0x80000000

    .line 20
    .line 21
    .line 22
    iput-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mFirstFrameTime:J

    .line 23
    .line 24
    iput-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mLastEventTime:J

    .line 25
    .line 26
    iput-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mVideoStreamDuration:J

    .line 27
    .line 28
    iput-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mAudioStreamDuration:J

    .line 29
    .line 30
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIsAVBadInterlaced:I

    .line 31
    .line 32
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 33
    .line 34
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 35
    .line 36
    invoke-direct {p1, p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$1;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 40
    .line 41
    return-void
.end method

.method private _triggerOutSyncEndCb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "begin_pos"

    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1500(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "end_pos"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "render_drop_cnt"

    .line 55
    .line 56
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 62
    .line 63
    const/16 v2, 0x52

    .line 64
    .line 65
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueFloat(I)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "container_fps"

    .line 74
    .line 75
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 81
    .line 82
    const/16 v2, 0x53

    .line 83
    .line 84
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueFloat(I)F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string/jumbo v2, "video_out_fps"

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 101
    .line 102
    const/16 v2, 0x2d

    .line 103
    .line 104
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "clock_diff"

    .line 113
    .line 114
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 118
    .line 119
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 120
    .line 121
    const/16 v2, 0x54

    .line 122
    .line 123
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-lez v1, :cond_0

    .line 128
    .line 129
    const/16 v2, 0x3e8

    .line 130
    .line 131
    div-int/2addr v2, v1

    .line 132
    int-to-long v1, v2

    .line 133
    goto :goto_0

    .line 134
    :cond_0
    const-wide/16 v1, 0x0

    .line 135
    .line 136
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "decode_time"

    .line 141
    .line 142
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 148
    .line 149
    const/4 v2, 0x4

    .line 150
    invoke-interface {v1, v2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    return-void
.end method

.method private _triggerOutSyncStartCb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-interface {v1, v2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public AVOutSyncEnd(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string p2, "Invalid start time, return."

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "VideoEventOneOutSync"

    .line 37
    .line 38
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    sub-long v2, v0, v2

    .line 53
    .line 54
    const-wide/16 v4, 0xc8

    .line 55
    .line 56
    cmp-long v4, v2, v4

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    if-gtz v4, :cond_1

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->_triggerOutSyncEndCb()V

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 65
    .line 66
    invoke-direct {p1, p0, v5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$1;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 73
    .line 74
    invoke-static {v4, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1402(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 78
    .line 79
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1502(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1602(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 88
    .line 89
    invoke-static {p1, v2, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1702(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 90
    .line 91
    .line 92
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIndex:I

    .line 93
    .line 94
    add-int/lit8 p1, p1, 0x1

    .line 95
    .line 96
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIndex:I

    .line 97
    .line 98
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mAVOutSyncCount:I

    .line 99
    .line 100
    add-int/lit8 p1, p1, 0x1

    .line 101
    .line 102
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mAVOutSyncCount:I

    .line 103
    .line 104
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1802(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 118
    .line 119
    iget p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 120
    .line 121
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1902(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 125
    .line 126
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 127
    .line 128
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2002(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 136
    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 140
    .line 141
    const/16 v0, 0x4f

    .line 142
    .line 143
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2102(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 151
    .line 152
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 153
    .line 154
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 155
    .line 156
    const/16 v0, 0x4e

    .line 157
    .line 158
    invoke-interface {p2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2202(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 166
    .line 167
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 168
    .line 169
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 170
    .line 171
    const/16 v0, 0x50

    .line 172
    .line 173
    invoke-interface {p2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2302(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 181
    .line 182
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 183
    .line 184
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 185
    .line 186
    const/16 v0, 0x60

    .line 187
    .line 188
    invoke-interface {p2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v0

    .line 192
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mMaxAVDiff:J

    .line 193
    .line 194
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 200
    .line 201
    invoke-static {p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    const-string v0, "ps"

    .line 210
    .line 211
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 215
    .line 216
    invoke-static {p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1500(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    const-string v0, "pe"

    .line 225
    .line 226
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 230
    .line 231
    invoke-static {p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 232
    .line 233
    .line 234
    move-result-wide v0

    .line 235
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    const-string/jumbo v0, "st"

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 246
    .line 247
    invoke-static {p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1700(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v0

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    const-string v0, "c"

    .line 256
    .line 257
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mList:Ljava/util/ArrayList;

    .line 261
    .line 262
    new-instance v0, Lorg/json/JSONObject;

    .line 263
    .line 264
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->sendOutSyncEvent()V

    .line 275
    .line 276
    .line 277
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->_triggerOutSyncEndCb()V

    .line 278
    .line 279
    .line 280
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 281
    .line 282
    invoke-direct {p1, p0, v5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$1;)V

    .line 283
    .line 284
    .line 285
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 286
    .line 287
    return-void
.end method

.method public AVOutSyncStart(IJJJ)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$102(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 11
    .line 12
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$202(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long p1, p2, v2

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    invoke-static {p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$302(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 32
    .line 33
    invoke-static {p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$302(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 34
    .line 35
    .line 36
    :goto_0
    cmp-long p1, p4, v2

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p2

    .line 46
    invoke-static {p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$402(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 51
    .line 52
    invoke-static {p1, p4, p5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$402(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 53
    .line 54
    .line 55
    :goto_1
    cmp-long p1, p6, v2

    .line 56
    .line 57
    if-lez p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 60
    .line 61
    sub-long p2, v0, p6

    .line 62
    .line 63
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastHeadsetSwitchInterval:J

    .line 64
    .line 65
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 66
    .line 67
    if-eqz p1, :cond_10

    .line 68
    .line 69
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$502(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 77
    .line 78
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 79
    .line 80
    iget p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 81
    .line 82
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$602(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 88
    .line 89
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$702(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrInfo:Ljava/util/Map;

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    const-string p2, "abr_used"

    .line 101
    .line 102
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 109
    .line 110
    check-cast p1, Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsABR:I

    .line 117
    .line 118
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 121
    .line 122
    if-eqz p1, :cond_d

    .line 123
    .line 124
    const/16 p2, 0x37

    .line 125
    .line 126
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->parsePlayerBufferString(Ljava/lang/String;)Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string p2, "fvl"

    .line 135
    .line 136
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    if-eqz p3, :cond_4

    .line 141
    .line 142
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 143
    .line 144
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Ljava/lang/Long;

    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide p4

    .line 154
    invoke-static {p3, p4, p5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$802(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 155
    .line 156
    .line 157
    :cond_4
    const-string p2, "fal"

    .line 158
    .line 159
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    if-eqz p3, :cond_5

    .line 164
    .line 165
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 166
    .line 167
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    check-cast p2, Ljava/lang/Long;

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 174
    .line 175
    .line 176
    move-result-wide p4

    .line 177
    invoke-static {p3, p4, p5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$902(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 178
    .line 179
    .line 180
    :cond_5
    const-string p2, "dvl"

    .line 181
    .line 182
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    if-eqz p3, :cond_6

    .line 187
    .line 188
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 189
    .line 190
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Ljava/lang/Long;

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide p4

    .line 200
    invoke-static {p3, p4, p5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1002(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 201
    .line 202
    .line 203
    :cond_6
    const-string p2, "dal"

    .line 204
    .line 205
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    if-eqz p3, :cond_7

    .line 210
    .line 211
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 212
    .line 213
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    check-cast p2, Ljava/lang/Long;

    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 220
    .line 221
    .line 222
    move-result-wide p4

    .line 223
    invoke-static {p3, p4, p5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1102(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 224
    .line 225
    .line 226
    :cond_7
    const-string p2, "bvl"

    .line 227
    .line 228
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p3

    .line 232
    if-eqz p3, :cond_8

    .line 233
    .line 234
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 235
    .line 236
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Ljava/lang/Long;

    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 243
    .line 244
    .line 245
    move-result-wide p4

    .line 246
    invoke-static {p3, p4, p5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1202(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 247
    .line 248
    .line 249
    :cond_8
    const-string p2, "bal"

    .line 250
    .line 251
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    if-eqz p3, :cond_9

    .line 256
    .line 257
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 258
    .line 259
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Ljava/lang/Long;

    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 266
    .line 267
    .line 268
    move-result-wide p1

    .line 269
    invoke-static {p3, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1302(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J

    .line 270
    .line 271
    .line 272
    :cond_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 273
    .line 274
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 275
    .line 276
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 277
    .line 278
    const/16 p3, 0x58

    .line 279
    .line 280
    invoke-interface {p2, p3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsRadioMode:I

    .line 285
    .line 286
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 287
    .line 288
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 289
    .line 290
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 291
    .line 292
    const/16 p3, 0x59

    .line 293
    .line 294
    invoke-interface {p2, p3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mHeadset:I

    .line 299
    .line 300
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 301
    .line 302
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 303
    .line 304
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 305
    .line 306
    const/16 p3, 0x5a

    .line 307
    .line 308
    invoke-interface {p2, p3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBt:I

    .line 313
    .line 314
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 315
    .line 316
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 317
    .line 318
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 319
    .line 320
    const/16 p3, 0x5e

    .line 321
    .line 322
    invoke-interface {p2, p3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsBackground:I

    .line 327
    .line 328
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 329
    .line 330
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 331
    .line 332
    const/16 p2, 0x5b

    .line 333
    .line 334
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 335
    .line 336
    .line 337
    move-result-wide p1

    .line 338
    cmp-long p3, p1, v2

    .line 339
    .line 340
    if-lez p3, :cond_a

    .line 341
    .line 342
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 343
    .line 344
    sub-long p1, v0, p1

    .line 345
    .line 346
    iput-wide p1, p3, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastAVSwitchInterval:J

    .line 347
    .line 348
    :cond_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 349
    .line 350
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 351
    .line 352
    const/16 p2, 0x5c

    .line 353
    .line 354
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 355
    .line 356
    .line 357
    move-result-wide p1

    .line 358
    cmp-long p3, p1, v2

    .line 359
    .line 360
    if-lez p3, :cond_b

    .line 361
    .line 362
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 363
    .line 364
    sub-long p1, v0, p1

    .line 365
    .line 366
    iput-wide p1, p3, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastResSwitchInterval:J

    .line 367
    .line 368
    :cond_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 369
    .line 370
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 371
    .line 372
    const/16 p2, 0x5f

    .line 373
    .line 374
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 375
    .line 376
    .line 377
    move-result-wide p1

    .line 378
    cmp-long p3, p1, v2

    .line 379
    .line 380
    if-lez p3, :cond_c

    .line 381
    .line 382
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 383
    .line 384
    sub-long/2addr v0, p1

    .line 385
    iput-wide v0, p3, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastForebackSwitchInterval:J

    .line 386
    .line 387
    :cond_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 388
    .line 389
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getChargingState()Ljava/util/HashMap;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    if-eqz p1, :cond_d

    .line 394
    .line 395
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 396
    .line 397
    const-string p3, "power"

    .line 398
    .line 399
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p3

    .line 403
    check-cast p3, Ljava/lang/Integer;

    .line 404
    .line 405
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result p3

    .line 409
    iput p3, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPower:I

    .line 410
    .line 411
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 412
    .line 413
    const-string p3, "isCharging"

    .line 414
    .line 415
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    check-cast p1, Ljava/lang/Integer;

    .line 420
    .line 421
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    iput p1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsCharging:I

    .line 426
    .line 427
    :cond_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 428
    .line 429
    iget-boolean p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 430
    .line 431
    if-eqz p2, :cond_f

    .line 432
    .line 433
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPURate()D

    .line 434
    .line 435
    .line 436
    move-result-wide p1

    .line 437
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 438
    .line 439
    invoke-virtual {p3}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPUSpeed()D

    .line 440
    .line 441
    .line 442
    move-result-wide p3

    .line 443
    const-wide/16 p5, 0x0

    .line 444
    .line 445
    cmpl-double p7, p1, p5

    .line 446
    .line 447
    if-lez p7, :cond_e

    .line 448
    .line 449
    cmpl-double p5, p3, p5

    .line 450
    .line 451
    if-lez p5, :cond_e

    .line 452
    .line 453
    iget-object p5, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 454
    .line 455
    iput-wide p1, p5, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCpuRate:D

    .line 456
    .line 457
    iput-wide p3, p5, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCpuSpeed:D

    .line 458
    .line 459
    goto :goto_2

    .line 460
    :cond_e
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$StatisticDataRunnable;

    .line 461
    .line 462
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 463
    .line 464
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 465
    .line 466
    invoke-direct {p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$StatisticDataRunnable;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 467
    .line 468
    .line 469
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 470
    .line 471
    .line 472
    :goto_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 473
    .line 474
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 475
    .line 476
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getBatteryCurrent()F

    .line 477
    .line 478
    .line 479
    move-result p2

    .line 480
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCurrent:F

    .line 481
    .line 482
    :cond_f
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 487
    .line 488
    .line 489
    move-result-wide p1

    .line 490
    const-wide/16 p3, 0x2

    .line 491
    .line 492
    invoke-static {p1, p2, p3, p4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    if-nez p1, :cond_10

    .line 497
    .line 498
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 499
    .line 500
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 501
    .line 502
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->isPowerSaveMode(Landroid/content/Context;)I

    .line 503
    .line 504
    .line 505
    move-result p1

    .line 506
    if-ltz p1, :cond_10

    .line 507
    .line 508
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 509
    .line 510
    iput p1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPowerSaveMode:I

    .line 511
    .line 512
    :cond_10
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->_triggerOutSyncStartCb()V

    .line 513
    .line 514
    .line 515
    return-void
.end method

.method public onAVBadInterlaced()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIsAVBadInterlaced:I

    .line 3
    .line 4
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mList:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mAVOutSyncCount:I

    .line 10
    .line 11
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIndex:I

    .line 12
    .line 13
    const-wide/32 v1, -0x80000000

    .line 14
    .line 15
    .line 16
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mFirstFrameTime:J

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mLastEventTime:J

    .line 19
    .line 20
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIsAVBadInterlaced:I

    .line 21
    .line 22
    return-void
.end method

.method public sendOutSyncEvent()V
    .locals 4

    .line 1
    const-string v0, "VideoEventOneOutSync"

    .line 2
    .line 3
    const-string v1, "report oussync event"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 21
    .line 22
    invoke-direct {v0, v2, p0, v1, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$AsyncGetLogDataRunnable;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setLongValue(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mContext:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2400(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public showedFirstFrame()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mFirstFrameTime:J

    .line 6
    .line 7
    return-void
.end method

.method public toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "player_sessionid"

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "cdn_url"

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialURL:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "cdn_ip"

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialIP:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_3
    const-string/jumbo v1, "source_type"

    .line 66
    .line 67
    .line 68
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "v"

    .line 74
    .line 75
    .line 76
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "pv"

    .line 82
    .line 83
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->pv:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v1, "pc"

    .line 89
    .line 90
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->pc:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v1, "sv"

    .line 96
    .line 97
    .line 98
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->sv:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "sdk_version"

    .line 104
    .line 105
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "vtype"

    .line 111
    .line 112
    .line 113
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string/jumbo v1, "tag"

    .line 119
    .line 120
    .line 121
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v1, "subtag"

    .line 127
    .line 128
    .line 129
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v1, "p2p_cdn_type"

    .line 135
    .line 136
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mP2PCDNType:I

    .line 137
    .line 138
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    const-string v1, "codec"

    .line 142
    .line 143
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string/jumbo v1, "video_codec_nameid"

    .line 149
    .line 150
    .line 151
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 152
    .line 153
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    const-string v1, "audio_codec_nameid"

    .line 157
    .line 158
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    .line 159
    .line 160
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    const-string v1, "format_type"

    .line 164
    .line 165
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 166
    .line 167
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    const-string v1, "drm_type"

    .line 171
    .line 172
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmType:I

    .line 173
    .line 174
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    const-string v1, "play_speed"

    .line 178
    .line 179
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 180
    .line 181
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 182
    .line 183
    .line 184
    const-string v1, "net_type"

    .line 185
    .line 186
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v1, "mdl_version"

    .line 192
    .line 193
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMdlVersion:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v1, "enable_mdl"

    .line 199
    .line 200
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 201
    .line 202
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    const-string/jumbo v1, "video_hw"

    .line 206
    .line 207
    .line 208
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 209
    .line 210
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    const-string/jumbo v1, "user_hw"

    .line 214
    .line 215
    .line 216
    iget p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHWUser:I

    .line 217
    .line 218
    invoke-static {v0, v1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    :cond_4
    const-string p2, "event_type"

    .line 222
    .line 223
    const-string v1, "av_outsync"

    .line 224
    .line 225
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string/jumbo p2, "st"

    .line 229
    .line 230
    .line 231
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 232
    .line 233
    .line 234
    move-result-wide v1

    .line 235
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 236
    .line 237
    .line 238
    const-string p2, "et"

    .line 239
    .line 240
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1600(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 241
    .line 242
    .line 243
    move-result-wide v1

    .line 244
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 245
    .line 246
    .line 247
    const-string p2, "cost_time"

    .line 248
    .line 249
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1700(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 250
    .line 251
    .line 252
    move-result-wide v1

    .line 253
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 254
    .line 255
    .line 256
    const-string p2, "end_type"

    .line 257
    .line 258
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1400(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string p2, "audio_len_before"

    .line 266
    .line 267
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$900(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 268
    .line 269
    .line 270
    move-result-wide v1

    .line 271
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 272
    .line 273
    .line 274
    const-string/jumbo p2, "video_len_before"

    .line 275
    .line 276
    .line 277
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$800(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 278
    .line 279
    .line 280
    move-result-wide v1

    .line 281
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 282
    .line 283
    .line 284
    const-string p2, "alen_dec_before"

    .line 285
    .line 286
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 287
    .line 288
    .line 289
    move-result-wide v1

    .line 290
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 291
    .line 292
    .line 293
    const-string/jumbo p2, "vlen_dec_before"

    .line 294
    .line 295
    .line 296
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1000(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v1

    .line 300
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 301
    .line 302
    .line 303
    const-string p2, "alen_base_before"

    .line 304
    .line 305
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1300(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 306
    .line 307
    .line 308
    move-result-wide v1

    .line 309
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 310
    .line 311
    .line 312
    const-string/jumbo p2, "vlen_base_before"

    .line 313
    .line 314
    .line 315
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1200(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 316
    .line 317
    .line 318
    move-result-wide v1

    .line 319
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 320
    .line 321
    .line 322
    const-string p2, "resolution_before"

    .line 323
    .line 324
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$500(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const-string p2, "resolution_after"

    .line 332
    .line 333
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1800(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const-string p2, "bitrate_before"

    .line 341
    .line 342
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$600(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 347
    .line 348
    .line 349
    const-string p2, "bitrate_after"

    .line 350
    .line 351
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1900(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 356
    .line 357
    .line 358
    const-string p2, "index"

    .line 359
    .line 360
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIndex:I

    .line 361
    .line 362
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    iget p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsRadioMode:I

    .line 366
    .line 367
    const-string v1, "radio_mode"

    .line 368
    .line 369
    invoke-static {v0, v1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 370
    .line 371
    .line 372
    const-string p2, "last_av_switch_interval"

    .line 373
    .line 374
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastAVSwitchInterval:J

    .line 375
    .line 376
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 377
    .line 378
    .line 379
    const-string p2, "last_res_switch_interval"

    .line 380
    .line 381
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastResSwitchInterval:J

    .line 382
    .line 383
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 384
    .line 385
    .line 386
    const-string p2, "headset"

    .line 387
    .line 388
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mHeadset:I

    .line 389
    .line 390
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    const-string p2, "bt"

    .line 394
    .line 395
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBt:I

    .line 396
    .line 397
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 398
    .line 399
    .line 400
    const-string p2, "last_headset_switch_interval"

    .line 401
    .line 402
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastHeadsetSwitchInterval:J

    .line 403
    .line 404
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 405
    .line 406
    .line 407
    const-string p2, "power"

    .line 408
    .line 409
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPower:I

    .line 410
    .line 411
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 412
    .line 413
    .line 414
    const-string p2, "is_charging"

    .line 415
    .line 416
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsCharging:I

    .line 417
    .line 418
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 419
    .line 420
    .line 421
    const-string p2, "max_av_diff"

    .line 422
    .line 423
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mMaxAVDiff:J

    .line 424
    .line 425
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 426
    .line 427
    .line 428
    const-string p2, "is_background"

    .line 429
    .line 430
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsBackground:I

    .line 431
    .line 432
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 433
    .line 434
    .line 435
    const-string p2, "last_foreback_switch_interval"

    .line 436
    .line 437
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastForebackSwitchInterval:J

    .line 438
    .line 439
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 440
    .line 441
    .line 442
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mFirstFrameTime:J

    .line 443
    .line 444
    const-wide/16 v3, 0x0

    .line 445
    .line 446
    cmp-long p2, v1, v3

    .line 447
    .line 448
    const-wide/16 v1, -0x1

    .line 449
    .line 450
    if-lez p2, :cond_5

    .line 451
    .line 452
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 453
    .line 454
    .line 455
    move-result-wide v5

    .line 456
    iget-wide v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mFirstFrameTime:J

    .line 457
    .line 458
    sub-long/2addr v5, v7

    .line 459
    goto :goto_4

    .line 460
    :cond_5
    move-wide v5, v1

    .line 461
    :goto_4
    const-string p2, "first_frame_interval"

    .line 462
    .line 463
    invoke-static {v0, p2, v5, v6}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 464
    .line 465
    .line 466
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mLastEventTime:J

    .line 467
    .line 468
    cmp-long p2, v5, v3

    .line 469
    .line 470
    if-lez p2, :cond_6

    .line 471
    .line 472
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 473
    .line 474
    .line 475
    move-result-wide v1

    .line 476
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mLastEventTime:J

    .line 477
    .line 478
    sub-long/2addr v1, v5

    .line 479
    :cond_6
    const-string p2, "last_event_interval"

    .line 480
    .line 481
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 482
    .line 483
    .line 484
    const-string p2, "pts_list"

    .line 485
    .line 486
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2200(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    const-string p2, "begin_pos"

    .line 494
    .line 495
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 500
    .line 501
    .line 502
    const-string p2, "end_pos"

    .line 503
    .line 504
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$1500(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 509
    .line 510
    .line 511
    const-string p2, "drop_cnt"

    .line 512
    .line 513
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 518
    .line 519
    .line 520
    const-string/jumbo p2, "v_dec_fps_list"

    .line 521
    .line 522
    .line 523
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2300(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$300(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 531
    .line 532
    .line 533
    move-result-wide v1

    .line 534
    cmp-long p2, v1, v3

    .line 535
    .line 536
    if-lez p2, :cond_7

    .line 537
    .line 538
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 539
    .line 540
    .line 541
    move-result-wide v1

    .line 542
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$300(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 543
    .line 544
    .line 545
    move-result-wide v5

    .line 546
    sub-long/2addr v1, v5

    .line 547
    const-string p2, "last_rebuf_interval"

    .line 548
    .line 549
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 550
    .line 551
    .line 552
    :cond_7
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$400(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 553
    .line 554
    .line 555
    move-result-wide v1

    .line 556
    cmp-long p2, v1, v3

    .line 557
    .line 558
    if-lez p2, :cond_8

    .line 559
    .line 560
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 561
    .line 562
    .line 563
    move-result-wide v1

    .line 564
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$400(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J

    .line 565
    .line 566
    .line 567
    move-result-wide v3

    .line 568
    sub-long/2addr v1, v3

    .line 569
    const-string p2, "last_seek_interval"

    .line 570
    .line 571
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 572
    .line 573
    .line 574
    :cond_8
    const-string p2, "is_abr"

    .line 575
    .line 576
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsABR:I

    .line 577
    .line 578
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 579
    .line 580
    .line 581
    const-string p2, "quality_desc_before"

    .line 582
    .line 583
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$700(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    const-string p2, "quality_desc_after"

    .line 591
    .line 592
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2000(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    const-string p2, "pause_time_list"

    .line 600
    .line 601
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->access$2400(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/util/ArrayList;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 606
    .line 607
    .line 608
    const-string p2, "bad_interlaced"

    .line 609
    .line 610
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mIsAVBadInterlaced:I

    .line 611
    .line 612
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 613
    .line 614
    .line 615
    const-string/jumbo p2, "v_duration"

    .line 616
    .line 617
    .line 618
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mVideoStreamDuration:J

    .line 619
    .line 620
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 621
    .line 622
    .line 623
    const-string p2, "a_duration"

    .line 624
    .line 625
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mAudioStreamDuration:J

    .line 626
    .line 627
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 628
    .line 629
    .line 630
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCpuRate:D

    .line 631
    .line 632
    double-to-float p2, v1

    .line 633
    const-string v1, "cpu_rate"

    .line 634
    .line 635
    invoke-static {v0, v1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 636
    .line 637
    .line 638
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCpuSpeed:D

    .line 639
    .line 640
    double-to-float p2, v1

    .line 641
    const-string v1, "cpu_speed"

    .line 642
    .line 643
    invoke-static {v0, v1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 644
    .line 645
    .line 646
    const-string p2, "power_save_mode"

    .line 647
    .line 648
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPowerSaveMode:I

    .line 649
    .line 650
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 651
    .line 652
    .line 653
    const-string p2, "battery_current"

    .line 654
    .line 655
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCurrent:F

    .line 656
    .line 657
    invoke-static {v0, p2, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 658
    .line 659
    .line 660
    new-instance p1, Lorg/json/JSONObject;

    .line 661
    .line 662
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 663
    .line 664
    .line 665
    return-object p1
.end method
