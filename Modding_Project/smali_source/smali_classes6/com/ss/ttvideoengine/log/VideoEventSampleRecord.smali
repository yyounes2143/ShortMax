.class public Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;
.super Ljava/lang/Object;
.source "VideoEventSampleRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEventSampleRecord"

.field public static final enableBitrateMap:Z = true

.field public static final monitorName:Ljava/lang/String; = "videoplayer_sample"


# instance fields
.field public mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

.field public mIsStarted:Z

.field private mLastAudioDownBytes:J

.field private mLastAudioTotalCachedLen:J

.field private mLastVideoDownBytes:J

.field private mLastVideoTotalCachedLen:J

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMaxWindowSize:I

.field public mSampingRate:F

.field public mSampleInterval:I


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mMaxWindowSize:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mSampingRate:F

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mIsStarted:Z

    .line 13
    .line 14
    const/high16 v0, -0x80000000

    .line 15
    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mSampleInterval:I

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mLastVideoDownBytes:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mLastAudioDownBytes:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mLastVideoTotalCachedLen:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mLastAudioTotalCachedLen:J

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 32
    .line 33
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    .line 40
    new-instance v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 41
    .line 42
    invoke-direct {v1, p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$1;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 48
    .line 49
    return-void
.end method

.method private _addResultItemToPredictorSet(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;Ljava/lang/Integer;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->getResultItems()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 25
    .line 26
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->speed_predict_type:I

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getLoadType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getHost()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "%s|%s|%s|%s"

    .line 49
    .line 50
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getTrackType()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_set:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getBandwidth()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getTrackType()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x1

    .line 88
    if-ne v2, v3, :cond_1

    .line 89
    .line 90
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_set:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getBandwidth()F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    return-void
.end method

.method private _addResultItemToSampleSet(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;Ljava/lang/Integer;J[Ljava/lang/Boolean;[Ljava/lang/Boolean;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->getResultItems()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getLoadType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getHost()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "%s|%s|%s"

    .line 41
    .line 42
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getTrackType()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_set:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getBandwidth()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_load_type_set:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    aget-object v0, p5, v3

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_interval:Ljava/util/ArrayList;

    .line 86
    .line 87
    long-to-int v1, p3

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    aput-object v0, p5, v3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_interval:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getTrackType()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const/4 v4, 0x1

    .line 117
    if-ne v2, v4, :cond_1

    .line 118
    .line 119
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_set:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getBandwidth()F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_load_type_set:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    aget-object v0, p6, v3

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_4

    .line 148
    .line 149
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_interval:Ljava/util/ArrayList;

    .line 152
    .line 153
    long-to-int v1, p3

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 162
    .line 163
    aput-object v0, p6, v3

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_interval:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_5
    return-void
.end method

.method private _doBitrateMap(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getVideoInfo()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    const-string v1, "bitrateMapTable"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    const/4 p1, -0x1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 42
    .line 43
    :cond_3
    return-object p1
.end method

.method private _popHead()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 2
    .line 3
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 4
    .line 5
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mMaxWindowSize:I

    .line 6
    .line 7
    if-gt v1, v2, :cond_0

    .line 8
    .line 9
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 10
    .line 11
    if-le v1, v2, :cond_1c

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->play_pos_set:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->play_pos_set:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->buffer_len_set:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->buffer_len_set:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->play_speed_set:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->play_speed_set:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_interval:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_interval:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_set:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_set:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_5
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_load_type_set:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_load_type_set:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_set:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_7

    .line 123
    .line 124
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_set:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :cond_7
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_8

    .line 140
    .line 141
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_8
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_9

    .line 157
    .line 158
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 159
    .line 160
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_9
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_play_bitrate_set:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_a

    .line 174
    .line 175
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_play_bitrate_set:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_a
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_size_set:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_b

    .line 191
    .line 192
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_size_set:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :cond_b
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 200
    .line 201
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_downLoad_cost_time_set:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_c

    .line 208
    .line 209
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_downLoad_cost_time_set:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    :cond_c
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_tcpinfo_rtt_set:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_d

    .line 225
    .line 226
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_tcpinfo_rtt_set:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :cond_d
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_tcpinfo_lastRevDate:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_e

    .line 242
    .line 243
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_tcpinfo_lastRevDate:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :cond_e
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 251
    .line 252
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_protocol_set:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_f

    .line 259
    .line 260
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 261
    .line 262
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_protocol_set:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_f
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 268
    .line 269
    iget v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 270
    .line 271
    add-int/lit8 v2, v2, -0x1

    .line 272
    .line 273
    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 274
    .line 275
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_interval:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_10

    .line 282
    .line 283
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 284
    .line 285
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_interval:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    :cond_10
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 291
    .line 292
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_set:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-nez v0, :cond_11

    .line 299
    .line 300
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 301
    .line 302
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_set:Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    :cond_11
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 308
    .line 309
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_load_type_set:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_12

    .line 316
    .line 317
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 318
    .line 319
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_load_type_set:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    :cond_12
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_set:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_13

    .line 333
    .line 334
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 335
    .line 336
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_set:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    :cond_13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 342
    .line 343
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-nez v0, :cond_14

    .line 350
    .line 351
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 352
    .line 353
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    :cond_14
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 359
    .line 360
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_play_bitrate_set:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_15

    .line 367
    .line 368
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 369
    .line 370
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_play_bitrate_set:Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    :cond_15
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 376
    .line 377
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-nez v0, :cond_16

    .line 384
    .line 385
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 386
    .line 387
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    :cond_16
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 393
    .line 394
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_size_set:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-nez v0, :cond_17

    .line 401
    .line 402
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_size_set:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    :cond_17
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 410
    .line 411
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_downLoad_cost_time_set:Ljava/util/ArrayList;

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_18

    .line 418
    .line 419
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 420
    .line 421
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_downLoad_cost_time_set:Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    :cond_18
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 427
    .line 428
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_tcpinfo_rtt_set:Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_19

    .line 435
    .line 436
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 437
    .line 438
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_tcpinfo_rtt_set:Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    :cond_19
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 444
    .line 445
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_tcpinfo_lastRevDate:Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-nez v0, :cond_1a

    .line 452
    .line 453
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 454
    .line 455
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_tcpinfo_lastRevDate:Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    :cond_1a
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 461
    .line 462
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_protocol_set:Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-nez v0, :cond_1b

    .line 469
    .line 470
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 471
    .line 472
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_protocol_set:Ljava/util/ArrayList;

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    :cond_1b
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 478
    .line 479
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 480
    .line 481
    add-int/lit8 v1, v1, -0x1

    .line 482
    .line 483
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 484
    .line 485
    :cond_1c
    return-void
.end method

.method private _sendEvent(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 2
    .line 3
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->checkCurrentPlayBackVideoIsLegal()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->local_time_ms:J

    .line 25
    .line 26
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 27
    .line 28
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mSampleInterval:I

    .line 29
    .line 30
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->sample_interval:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->is_enable_abr:I

    .line 37
    .line 38
    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->is_abr:I

    .line 39
    .line 40
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->is_multi_dimensions:I

    .line 41
    .line 42
    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->is_multi_dimensions:I

    .line 43
    .line 44
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->is_multi_dimensionsInput:I

    .line 45
    .line 46
    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->is_multi_dimensions_input:I

    .line 47
    .line 48
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->player_sessionid:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_id:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->url:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->vtype:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getVideoInfo()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const-string v1, "bitrateMapTable"

    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 79
    .line 80
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/util/Map$Entry;

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 130
    .line 131
    iput-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->bitrate_compress_table:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 138
    .line 139
    const-string/jumbo v1, "video_bitrate"

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-eqz v2, :cond_3

    .line 147
    .line 148
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_3

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/lang/Integer;

    .line 169
    .line 170
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 171
    .line 172
    iget-object v3, v3, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_biterate_set:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_3
    if-eqz v0, :cond_4

    .line 179
    .line 180
    const-string v1, "audio_bitrate"

    .line 181
    .line 182
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-eqz v2, :cond_4

    .line 187
    .line 188
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_4

    .line 203
    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Ljava/lang/Integer;

    .line 209
    .line 210
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 211
    .line 212
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_biterate_set:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_4
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;

    .line 219
    .line 220
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 221
    .line 222
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 225
    .line 226
    invoke-direct {v0, v2, p0, v1, v3}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$AsyncGetLogDataRunnable;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 230
    .line 231
    .line 232
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 233
    .line 234
    const/4 v1, 0x0

    .line 235
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$1;)V

    .line 236
    .line 237
    .line 238
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 239
    .line 240
    if-nez p1, :cond_5

    .line 241
    .line 242
    const/4 p1, 0x1

    .line 243
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->index:I

    .line 244
    .line 245
    :cond_5
    return-void
.end method

.method private _updateEventBaseInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->play_pos_set:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v2, 0x43

    .line 14
    .line 15
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->buffer_len_set:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 33
    .line 34
    const/16 v2, 0x44

    .line 35
    .line 36
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getVideoInfo()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    const-string v1, "bitrate"

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/util/Map;

    .line 62
    .line 63
    const/4 v2, -0x1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Integer;

    .line 75
    .line 76
    if-nez v1, :cond_0

    .line 77
    .line 78
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_play_bitrate_set:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_1

    .line 95
    .line 96
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_play_bitrate_set:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 109
    .line 110
    iget-object v3, v3, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_play_bitrate_set:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {p0, v1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_doBitrateMap(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_0
    const-string v1, "audio_bitrate"

    .line 120
    .line 121
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    if-nez v3, :cond_3

    .line 141
    .line 142
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_play_bitrate_set:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_4

    .line 165
    .line 166
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_play_bitrate_set:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_4
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 179
    .line 180
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_play_bitrate_set:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_doBitrateMap(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->play_speed_set:Ljava/util/ArrayList;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 200
    .line 201
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 202
    .line 203
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :cond_6
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private checkCurrentPlayBackVideoIsLegal()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getVideoInfo()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v2, "fileKey"

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, ""

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    const-string v4, "0"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    :goto_1
    return v1

    .line 68
    :cond_3
    move v0, v1

    .line 69
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ge v0, v3, :cond_6

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/lang/String;

    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    move v4, v0

    .line 84
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-ge v4, v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    return v1

    .line 101
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    const/4 v0, 0x1

    .line 105
    return v0
.end method

.method private toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->local_time_ms:J

    .line 7
    .line 8
    const-string v3, "local_time_ms"

    .line 9
    .line 10
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    const-string v1, "is_abr"

    .line 14
    .line 15
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->is_abr:I

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "vtype"

    .line 21
    .line 22
    .line 23
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->vtype:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "sample_interval"

    .line 29
    .line 30
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->sample_interval:I

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "video_sample_count"

    .line 36
    .line 37
    .line 38
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "video_sample_interval"

    .line 44
    .line 45
    .line 46
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_interval:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v1, "video_network_speed_sampling_set"

    .line 52
    .line 53
    .line 54
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_set:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v1, "video_network_speed_sampling_load_types"

    .line 60
    .line 61
    .line 62
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_load_type_set:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    const-string/jumbo v1, "video_network_speed_predict_set"

    .line 68
    .line 69
    .line 70
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_set:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    .line 74
    .line 75
    const-string/jumbo v1, "video_network_speed_predict_load_types"

    .line 76
    .line 77
    .line 78
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v1, "video_play_bitrate_set"

    .line 84
    .line 85
    .line 86
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_play_bitrate_set:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v1, "video_download_bitrate_set"

    .line 92
    .line 93
    .line 94
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v1, "video_download_size_set"

    .line 100
    .line 101
    .line 102
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_size_set:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v1, "video_download_costtime_set"

    .line 108
    .line 109
    .line 110
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_downLoad_cost_time_set:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v1, "video_tcpInfo_rtt_set"

    .line 116
    .line 117
    .line 118
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_tcpinfo_rtt_set:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo v1, "video_tcpInfo_lastRecvDate"

    .line 124
    .line 125
    .line 126
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_tcpinfo_lastRevDate:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v1, "video_mdl_loader_type"

    .line 132
    .line 133
    .line 134
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_protocol_set:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 137
    .line 138
    .line 139
    const-string v1, "audio_sample_count"

    .line 140
    .line 141
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 142
    .line 143
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    const-string v1, "audio_sample_interval"

    .line 147
    .line 148
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_interval:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 151
    .line 152
    .line 153
    const-string v1, "audio_network_speed_sampling_set"

    .line 154
    .line 155
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_set:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 158
    .line 159
    .line 160
    const-string v1, "audio_network_speed_sampling_load_types"

    .line 161
    .line 162
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_load_type_set:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 165
    .line 166
    .line 167
    const-string v1, "audio_network_speed_predict_set"

    .line 168
    .line 169
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_set:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    .line 173
    .line 174
    const-string v1, "audio_network_speed_predict_load_types"

    .line 175
    .line 176
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 179
    .line 180
    .line 181
    const-string v1, "audio_play_bitrate_set"

    .line 182
    .line 183
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_play_bitrate_set:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 186
    .line 187
    .line 188
    const-string v1, "audio_download_bitrate_set"

    .line 189
    .line 190
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    .line 194
    .line 195
    const-string v1, "audio_download_size_set"

    .line 196
    .line 197
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_size_set:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 200
    .line 201
    .line 202
    const-string v1, "audio_download_costtime_set"

    .line 203
    .line 204
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_downLoad_cost_time_set:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 207
    .line 208
    .line 209
    const-string v1, "audio_tcpInfo_rtt_set"

    .line 210
    .line 211
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_tcpinfo_rtt_set:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 214
    .line 215
    .line 216
    const-string v1, "audio_tcpInfo_lastRecvDate"

    .line 217
    .line 218
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_tcpinfo_lastRevDate:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    .line 222
    .line 223
    const-string v1, "audio_mdl_loader_type"

    .line 224
    .line 225
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_protocol_set:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 228
    .line 229
    .line 230
    const-string v1, "buffer_len_set"

    .line 231
    .line 232
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->buffer_len_set:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 235
    .line 236
    .line 237
    const-string v1, "play_speed_set"

    .line 238
    .line 239
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->play_speed_set:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 242
    .line 243
    .line 244
    const-string v1, "play_pos_set"

    .line 245
    .line 246
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->play_pos_set:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 249
    .line 250
    .line 251
    const-string v1, "index"

    .line 252
    .line 253
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->index:I

    .line 254
    .line 255
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 256
    .line 257
    .line 258
    const-string v1, "player_sessionid"

    .line 259
    .line 260
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->player_sessionid:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string/jumbo v1, "video_id"

    .line 266
    .line 267
    .line 268
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_id:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const-string/jumbo v1, "video_bitrate_set"

    .line 274
    .line 275
    .line 276
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_biterate_set:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 279
    .line 280
    .line 281
    const-string v1, "audio_bitrate_set"

    .line 282
    .line 283
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_biterate_set:Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 286
    .line 287
    .line 288
    const-string v1, "is_multi_dimensions"

    .line 289
    .line 290
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->is_multi_dimensions:I

    .line 291
    .line 292
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    const-string v1, "is_multi_dimensions_input"

    .line 296
    .line 297
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->is_multi_dimensions_input:I

    .line 298
    .line 299
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    new-instance v1, Lorg/json/JSONObject;

    .line 303
    .line 304
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 305
    .line 306
    .line 307
    :try_start_0
    const-string v0, "bitrate_map_table"

    .line 308
    .line 309
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->bitrate_compress_table:Lorg/json/JSONObject;

    .line 310
    .line 311
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .line 313
    .line 314
    goto :goto_0

    .line 315
    :catch_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    :goto_0
    return-object v1
.end method


# virtual methods
.method addExtraMapInfoForTrackType(Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-le p2, v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    const-string v1, "mdl_loader_type"

    .line 15
    .line 16
    const-string v2, "last_data_recv"

    .line 17
    .line 18
    const-string v3, "rtt"

    .line 19
    .line 20
    const-string v4, "download_time"

    .line 21
    .line 22
    const-string v5, "download_size"

    .line 23
    .line 24
    if-nez p2, :cond_5

    .line 25
    .line 26
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_size_set:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 76
    .line 77
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_downLoad_cost_time_set:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    if-eqz v3, :cond_3

    .line 91
    .line 92
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_tcpinfo_rtt_set:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_3
    if-eqz v2, :cond_4

    .line 108
    .line 109
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 110
    .line 111
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_tcpinfo_lastRevDate:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_4
    if-eqz p1, :cond_a

    .line 125
    .line 126
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 127
    .line 128
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_protocol_set:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    if-ne p2, v0, :cond_a

    .line 135
    .line 136
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Ljava/lang/String;

    .line 141
    .line 142
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/String;

    .line 147
    .line 148
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Ljava/lang/String;

    .line 153
    .line 154
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Ljava/lang/String;

    .line 159
    .line 160
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Ljava/lang/String;

    .line 165
    .line 166
    if-eqz p2, :cond_6

    .line 167
    .line 168
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_size_set:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :cond_6
    if-eqz v0, :cond_7

    .line 184
    .line 185
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 186
    .line 187
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_downLoad_cost_time_set:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_7
    if-eqz v3, :cond_8

    .line 201
    .line 202
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 203
    .line 204
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_tcpinfo_rtt_set:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v0

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    :cond_8
    if-eqz v2, :cond_9

    .line 218
    .line 219
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 220
    .line 221
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_tcpinfo_lastRevDate:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_9
    if-eqz p1, :cond_a

    .line 235
    .line 236
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 237
    .line 238
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_protocol_set:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :cond_a
    :goto_0
    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mSampleInterval:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setMaxWindowSize(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mMaxWindowSize:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setSamplingRate(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mSampingRate:F

    .line 2
    .line 3
    return-void
.end method

.method public startRecord()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mSampingRate:F

    .line 6
    .line 7
    float-to-double v2, v2

    .line 8
    cmpl-double v0, v0, v2

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mIsStarted:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mIsStarted:Z

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mIsStarted:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mIsStarted:Z

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_sendEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public updateNetworkMutiSpeed(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;J)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    iget-boolean v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mIsStarted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_10

    .line 5
    .line 6
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    if-eqz v0, :cond_10

    .line 9
    .line 10
    if-eqz p1, :cond_10

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_updateEventBaseInfo()V

    .line 17
    .line 18
    .line 19
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getVideoInfo()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v1, "fileKey"

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/Map;

    .line 35
    .line 36
    if-eqz v0, :cond_10

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    filled-new-array {v1}, [Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    filled-new-array {v1}, [Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v11, 0x0

    .line 69
    if-eqz v0, :cond_d

    .line 70
    .line 71
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    move-object v12, v0

    .line 76
    check-cast v12, Ljava/util/Map$Entry;

    .line 77
    .line 78
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v13, v0

    .line 83
    check-cast v13, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->getResultCollection()Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    :cond_4
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_b

    .line 98
    .line 99
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v1, v0

    .line 104
    check-cast v1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->getFileId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->getResultItems()Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_a

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->getResultItems()Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->getTrackType()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const/4 v2, -0x1

    .line 141
    if-nez v0, :cond_7

    .line 142
    .line 143
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_6

    .line 172
    .line 173
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 174
    .line 175
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_doBitrateMap(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_7
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-nez v0, :cond_8

    .line 208
    .line 209
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_8
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Ljava/lang/Integer;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_9

    .line 232
    .line 233
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_9
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 246
    .line 247
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_doBitrateMap(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :cond_a
    :goto_1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    move-object v2, v0

    .line 267
    check-cast v2, Ljava/lang/Integer;

    .line 268
    .line 269
    move-object v0, p0

    .line 270
    move-wide/from16 v3, p3

    .line 271
    .line 272
    move-object v5, v8

    .line 273
    move-object v6, v9

    .line 274
    invoke-direct/range {v0 .. v6}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_addResultItemToSampleSet(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;Ljava/lang/Integer;J[Ljava/lang/Boolean;[Ljava/lang/Boolean;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->getResultCollection()Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    :cond_c
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_3

    .line 292
    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    check-cast v1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->getFileId()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_c

    .line 308
    .line 309
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Ljava/lang/Integer;

    .line 314
    .line 315
    invoke-direct {p0, v1, v2}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_addResultItemToPredictorSet(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;Ljava/lang/Integer;)V

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_d
    iget-object v0, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 320
    .line 321
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 322
    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    .line 325
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 326
    .line 327
    iget v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 328
    .line 329
    add-int/lit8 v2, v2, 0x1

    .line 330
    .line 331
    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 332
    .line 333
    iget v3, v7, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mMaxWindowSize:I

    .line 334
    .line 335
    if-ge v1, v3, :cond_e

    .line 336
    .line 337
    if-lt v2, v3, :cond_10

    .line 338
    .line 339
    :cond_e
    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->index:I

    .line 340
    .line 341
    if-nez v0, :cond_f

    .line 342
    .line 343
    invoke-direct {p0, v11}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_sendEvent(I)V

    .line 344
    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_f
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_popHead()V

    .line 348
    .line 349
    .line 350
    :cond_10
    :goto_3
    return-void
.end method

.method public updateNetworkSpeed(Ljava/lang/String;Ljava/lang/String;FFFFJLjava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFFFJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-wide/from16 v3, p7

    .line 5
    .line 6
    iget-boolean v5, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mIsStarted:Z

    .line 7
    .line 8
    if-eqz v5, :cond_b

    .line 9
    .line 10
    iget-object v5, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_updateEventBaseInfo()V

    .line 17
    .line 18
    .line 19
    iget-object v5, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 20
    .line 21
    iget v5, v5, Lcom/ss/ttvideoengine/log/VideoEventBase;->speed_predict_type:I

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v6, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eqz v6, :cond_8

    .line 32
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_8

    .line 38
    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_8

    .line 44
    .line 45
    iget-object v6, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getVideoInfo()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-eqz v6, :cond_8

    .line 52
    .line 53
    const-string v9, "-1"

    .line 54
    .line 55
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v10, :cond_8

    .line 60
    .line 61
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-nez v9, :cond_8

    .line 66
    .line 67
    const-string v9, "fileKey"

    .line 68
    .line 69
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Ljava/util/Map;

    .line 74
    .line 75
    if-nez v6, :cond_1

    .line 76
    .line 77
    new-instance v6, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_8

    .line 95
    .line 96
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Ljava/util/Map$Entry;

    .line 101
    .line 102
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    const/4 v11, -0x1

    .line 113
    if-eqz v10, :cond_4

    .line 114
    .line 115
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    if-nez v10, :cond_2

    .line 120
    .line 121
    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 122
    .line 123
    iget-object v10, v10, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    check-cast v10, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-nez v10, :cond_3

    .line 144
    .line 145
    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 146
    .line 147
    iget-object v10, v10, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 158
    .line 159
    iget-object v10, v10, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_download_bitrate_set:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    check-cast v12, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-direct {p0, v12}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_doBitrateMap(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    :goto_1
    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 175
    .line 176
    iget-object v10, v10, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_interval:Ljava/util/ArrayList;

    .line 177
    .line 178
    long-to-int v12, v3

    .line 179
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 187
    .line 188
    iget-object v10, v10, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_speed_set:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 198
    .line 199
    iget-object v10, v10, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_set:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 209
    .line 210
    iget-object v10, v10, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-object/from16 v10, p9

    .line 216
    .line 217
    invoke-virtual {p0, v10, v7}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->addExtraMapInfoForTrackType(Ljava/util/Map;I)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_4
    move-object/from16 v10, p9

    .line 222
    .line 223
    :goto_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    check-cast v12, Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v12, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    if-eqz v12, :cond_7

    .line 234
    .line 235
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    if-nez v12, :cond_5

    .line 240
    .line 241
    iget-object v9, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 242
    .line 243
    iget-object v9, v9, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_5
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    check-cast v12, Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    if-nez v12, :cond_6

    .line 264
    .line 265
    iget-object v9, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 266
    .line 267
    iget-object v9, v9, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_6
    iget-object v11, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 278
    .line 279
    iget-object v11, v11, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_download_bitrate_set:Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    check-cast v9, Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-direct {p0, v9}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_doBitrateMap(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    :goto_3
    iget-object v9, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 295
    .line 296
    iget-object v9, v9, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_interval:Ljava/util/ArrayList;

    .line 297
    .line 298
    long-to-int v11, v3

    .line 299
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    iget-object v9, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 307
    .line 308
    iget-object v9, v9, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_speed_set:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    iget-object v9, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 318
    .line 319
    iget-object v9, v9, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_set:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    iget-object v9, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 329
    .line 330
    iget-object v9, v9, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_predict_speed_load_type_set:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-object/from16 v9, p10

    .line 336
    .line 337
    invoke-virtual {p0, v9, v8}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->addExtraMapInfoForTrackType(Ljava/util/Map;I)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :cond_7
    move-object/from16 v9, p10

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_8
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 347
    .line 348
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 349
    .line 350
    add-int/2addr v2, v8

    .line 351
    iput v2, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 352
    .line 353
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 354
    .line 355
    add-int/2addr v2, v8

    .line 356
    iput v2, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 357
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v2, "brian video count:"

    .line 364
    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 369
    .line 370
    iget v2, v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v2, ",audio count:"

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 381
    .line 382
    iget v2, v2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    const-string v2, "VideoEventSampleRecord"

    .line 392
    .line 393
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;

    .line 397
    .line 398
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->video_sample_count:I

    .line 399
    .line 400
    iget v3, v0, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mMaxWindowSize:I

    .line 401
    .line 402
    if-ge v2, v3, :cond_9

    .line 403
    .line 404
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->audio_sample_count:I

    .line 405
    .line 406
    if-lt v2, v3, :cond_b

    .line 407
    .line 408
    :cond_9
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord$EventContext;->index:I

    .line 409
    .line 410
    if-nez v1, :cond_a

    .line 411
    .line 412
    invoke-direct {p0, v7}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_sendEvent(I)V

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_a
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->_popHead()V

    .line 417
    .line 418
    .line 419
    :cond_b
    :goto_4
    return-void
.end method
