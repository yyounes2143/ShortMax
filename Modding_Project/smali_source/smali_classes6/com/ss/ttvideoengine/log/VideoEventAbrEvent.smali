.class public Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;
.super Ljava/lang/Object;
.source "VideoEventAbrEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;,
        Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEventAbrEvent"

.field public static final monitorName:Ljava/lang/String; = "videoplayer_abrswitch"


# instance fields
.field public mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private mEventContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 1

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventContexts:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string v1, "player_sessionid"

    .line 9
    .line 10
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "v"

    .line 16
    .line 17
    .line 18
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "pc"

    .line 24
    .line 25
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->pc:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "sv"

    .line 31
    .line 32
    .line 33
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->sv:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "sdk_version"

    .line 39
    .line 40
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "vtype"

    .line 46
    .line 47
    .line 48
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0, v1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mAbrV:Ljava/lang/String;

    .line 54
    .line 55
    const-string v1, "abrv"

    .line 56
    .line 57
    invoke-static {v0, v1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p2, "cost_time"

    .line 61
    .line 62
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mCostTime:J

    .line 63
    .line 64
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 65
    .line 66
    .line 67
    const-string p2, "pr_time"

    .line 68
    .line 69
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mEventTime:J

    .line 70
    .line 71
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    const-string p2, "end_type"

    .line 75
    .line 76
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mEndType:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p2, "old_br"

    .line 82
    .line 83
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mOldBr:J

    .line 84
    .line 85
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    const-string p2, "new_br"

    .line 89
    .line 90
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mNewBr:J

    .line 91
    .line 92
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 93
    .line 94
    .line 95
    const-string p2, "max_buf"

    .line 96
    .line 97
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mMaxBufferLen:J

    .line 98
    .line 99
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 100
    .line 101
    .line 102
    const-string p2, "abuf"

    .line 103
    .line 104
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mAudioBufferLen:J

    .line 105
    .line 106
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo p2, "vbuf"

    .line 110
    .line 111
    .line 112
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mVideoBufferLen:J

    .line 113
    .line 114
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    const-string p2, "netspeed"

    .line 118
    .line 119
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mSpeed:F

    .line 120
    .line 121
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 122
    .line 123
    .line 124
    const-string p2, "delaytime"

    .line 125
    .line 126
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mDelayTime:J

    .line 127
    .line 128
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 129
    .line 130
    .line 131
    const-string/jumbo p2, "tonew"

    .line 132
    .line 133
    .line 134
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mSwitch2new:I

    .line 135
    .line 136
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    const-string p2, "reason"

    .line 140
    .line 141
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mReason:I

    .line 142
    .line 143
    invoke-static {v0, p2, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string p2, "AbrSwitch:"

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const-string p2, "VideoEventAbrEvent"

    .line 168
    .line 169
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Lorg/json/JSONObject;

    .line 173
    .line 174
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 175
    .line 176
    .line 177
    return-object p1
.end method


# virtual methods
.method public abrSwitchEnd(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventContexts:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventContexts:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventContexts:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mNewBr:J

    .line 27
    .line 28
    cmp-long v1, v1, p1

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    :cond_2
    if-nez v0, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    const-string p1, "VideoEventAbrEvent"

    .line 36
    .line 37
    const-string p2, "abrSwitchEnd"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 45
    .line 46
    const/16 p2, 0x6a

    .line 47
    .line 48
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    long-to-int p1, p1

    .line 53
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mSwitch2new:I

    .line 54
    .line 55
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 58
    .line 59
    const/16 p2, 0x6b

    .line 60
    .line 61
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mDelayTime:J

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide p1

    .line 71
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mEventTime:J

    .line 72
    .line 73
    sub-long/2addr p1, v1

    .line 74
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mCostTime:J

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->sendAbrSwitchEvent(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public abrSwitchStart(JJ)V
    .locals 3

    .line 1
    const-string v0, "VideoEventAbrEvent"

    .line 2
    .line 3
    const-string v1, "abrSwitchStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$1;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mEventTime:J

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 23
    .line 24
    const/16 v2, 0x66

    .line 25
    .line 26
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mAbrV:Ljava/lang/String;

    .line 31
    .line 32
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mOldBr:J

    .line 33
    .line 34
    iput-wide p3, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mNewBr:J

    .line 35
    .line 36
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 39
    .line 40
    const/16 p2, 0x67

    .line 41
    .line 42
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-long p1, p1

    .line 47
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mMaxBufferLen:J

    .line 48
    .line 49
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 52
    .line 53
    const/16 p2, 0x68

    .line 54
    .line 55
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mAudioBufferLen:J

    .line 60
    .line 61
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 64
    .line 65
    const/16 p2, 0x69

    .line 66
    .line 67
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide p1

    .line 71
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mVideoBufferLen:J

    .line 72
    .line 73
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 76
    .line 77
    const/16 p2, 0x6d

    .line 78
    .line 79
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mReason:I

    .line 84
    .line 85
    sget-object p1, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    invoke-interface {p1, p2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mSpeed:F

    .line 95
    .line 96
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventContexts:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventContexts:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendAbrSwitchEvent(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v2, p0, v1, p1}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$AsyncGetLogDataRunnable;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 17
    .line 18
    .line 19
    return-void
.end method
