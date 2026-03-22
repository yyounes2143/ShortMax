.class public Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;
.super Ljava/lang/Object;
.source "DefaultABRModule.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/IABRModule;


# static fields
.field public static final PREDICTBITRATE_ALGO_BABB:I = 0x0

.field public static final PREDICTBITRATE_ALGO_BB:I = 0x1

.field public static final PREDICTBITRATE_ALGO_BBA:I = 0x9

.field public static final PREDICTBITRATE_ALGO_BOLA:I = 0x6

.field public static final PREDICTBITRATE_ALGO_BW:I = 0x3

.field public static final PREDICTBITRATE_ALGO_CS:I = 0x4

.field public static final PREDICTBITRATE_ALGO_FESTIVE:I = 0x7

.field public static final PREDICTBITRATE_ALGO_MPC:I = 0x2

.field public static final PREDICTBITRATE_ALGO_MPC2:I = 0x8

.field public static final PREDICTBITRATE_ALGO_RL:I = 0x5


# instance fields
.field private mAlgoType:I

.field private mHandle:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mAlgoType:I

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->loadLibrary()Z

    .line 12
    .line 13
    .line 14
    sget-boolean v0, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;->isLibraryLoaded:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_create()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getLogLevel()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setIntValue(JII)V

    .line 31
    .line 32
    .line 33
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getSwitchSensitivity()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setIntValue(JII)V

    .line 41
    .line 42
    .line 43
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getSwitchModel()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setIntValue(JII)V

    .line 51
    .line 52
    .line 53
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getFixedLevel()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setIntValue(JII)V

    .line 61
    .line 62
    .line 63
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 64
    .line 65
    const/4 v2, 0x5

    .line 66
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getStartupModel()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setIntValue(JII)V

    .line 71
    .line 72
    .line 73
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 74
    .line 75
    const/16 v2, 0x25

    .line 76
    .line 77
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getStartupUseCache()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setIntValue(JII)V

    .line 82
    .line 83
    .line 84
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 85
    .line 86
    const/16 v2, 0x2d

    .line 87
    .line 88
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getNarrowScreenUseWidth()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setIntValue(JII)V

    .line 93
    .line 94
    .line 95
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 96
    .line 97
    const/16 v2, 0x8

    .line 98
    .line 99
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getStartupBandwidthParameter()F

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setFloatValue(JIF)V

    .line 104
    .line 105
    .line 106
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 107
    .line 108
    const/16 v2, 0x9

    .line 109
    .line 110
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getStallPenaltyParameter()F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setFloatValue(JIF)V

    .line 115
    .line 116
    .line 117
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 118
    .line 119
    const/16 v2, 0xa

    .line 120
    .line 121
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getSwitchPenaltyParameter()F

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setFloatValue(JIF)V

    .line 126
    .line 127
    .line 128
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 129
    .line 130
    const/16 v2, 0xb

    .line 131
    .line 132
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getBandwidthParameter()F

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setFloatValue(JIF)V

    .line 137
    .line 138
    .line 139
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 140
    .line 141
    const/16 v3, 0x1d

    .line 142
    .line 143
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getStartupModelFirstParam()D

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    move-object v0, p0

    .line 148
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setDoubleValue(JID)V

    .line 149
    .line 150
    .line 151
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 152
    .line 153
    const/16 v3, 0x1e

    .line 154
    .line 155
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getStartupModelSecondParam()D

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setDoubleValue(JID)V

    .line 160
    .line 161
    .line 162
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 163
    .line 164
    const/16 v3, 0x1f

    .line 165
    .line 166
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getStartupModelThirdParam()D

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setDoubleValue(JID)V

    .line 171
    .line 172
    .line 173
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 174
    .line 175
    const/16 v3, 0x20

    .line 176
    .line 177
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getStartupModelFourthParam()D

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setDoubleValue(JID)V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getAbrStartupJson()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_1

    .line 193
    .line 194
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 195
    .line 196
    const/16 v3, 0x33

    .line 197
    .line 198
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setStringValue(JILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_1
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getAbrFlowJson()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_2

    .line 210
    .line 211
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 212
    .line 213
    const/16 v3, 0x34

    .line 214
    .line 215
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setStringValue(JILjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_2
    invoke-static {}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->getAbrPreloadJson()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_3

    .line 227
    .line 228
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 229
    .line 230
    const/16 v3, 0x32

    .line 231
    .line 232
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setStringValue(JILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_3
    return-void
.end method

.method private native _addBufferInfo(JILjava/lang/String;JJJ)V
.end method

.method private native _create()J
.end method

.method private native _getDoubleValue(JID)D
.end method

.method private native _getFloatValue(JIF)F
.end method

.method private native _getLongValue(JIJ)J
.end method

.method private native _getPredict(J)Lcom/bytedance/vcloud/abrmodule/ABRResult;
.end method

.method private native _getPredictByJsonParams(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native _getStringValue(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private native _getVersion()Ljava/lang/String;
.end method

.method private native _release(J)V
.end method

.method private native _select(JII)Lcom/bytedance/vcloud/abrmodule/ABRResult;
.end method

.method private native _setDataSource(JLcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;)V
.end method

.method private native _setDeviceInfo(JLcom/bytedance/vcloud/abrmodule/IDeviceInfo;)V
.end method

.method private native _setDoubleValue(JID)V
.end method

.method private native _setFloatValue(JIF)V
.end method

.method private native _setInfoListener(JLcom/bytedance/vcloud/abrmodule/IABRInfoListener;)V
.end method

.method private native _setIntValue(JII)V
.end method

.method private native _setLongValue(JIJ)V
.end method

.method private native _setMediaInfo(JLjava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/abrmodule/IVideoStream;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/abrmodule/IAudioStream;",
            ">;)V"
        }
    .end annotation
.end method

.method private native _setSRBenchmark(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method private native _setSRBenchmarkMap(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation
.end method

.method private native _setStringValue(JILjava/lang/String;)V
.end method

.method private native _start(JII)V
.end method

.method private native _stop(J)V
.end method


# virtual methods
.method public addBufferInfo(ILjava/lang/String;JJJ)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    iget-wide v1, v11, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 3
    .line 4
    const-wide/16 v3, 0x0

    .line 5
    .line 6
    cmp-long v0, v1, v3

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    move v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-wide v5, p3

    .line 15
    move-wide/from16 v7, p5

    .line 16
    .line 17
    move-wide/from16 v9, p7

    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_addBufferInfo(JILjava/lang/String;JJJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public getFloatOption(IF)F
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return p2

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_getFloatValue(JIF)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getLongOption(IJ)J
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v3, 0x0

    .line 4
    .line 5
    cmp-long v0, v1, v3

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide p2

    .line 10
    :cond_0
    const/16 v0, 0x13

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mAlgoType:I

    .line 15
    .line 16
    int-to-long p1, p1

    .line 17
    return-wide p1

    .line 18
    :cond_1
    move-object v0, p0

    .line 19
    move v3, p1

    .line 20
    move-wide v4, p2

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_getLongValue(JIJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    return-wide p1
.end method

.method public getPredict()Lcom/bytedance/vcloud/abrmodule/ABRResult;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_getPredict(J)Lcom/bytedance/vcloud/abrmodule/ABRResult;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getPredictByJsonParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_getPredictByJsonParams(JLjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getStringOption(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-object p2

    .line 10
    :cond_0
    :try_start_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_getStringValue(JILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "j_2.172.1-tob"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_getVersion()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public init(Lcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setDataSource(JLcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    return-void
.end method

.method public onceSelect(II)Lcom/bytedance/vcloud/abrmodule/ABRResult;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_select(JII)Lcom/bytedance/vcloud/abrmodule/ABRResult;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public release()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_release(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDeviceInfo(Lcom/bytedance/vcloud/abrmodule/IDeviceInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setDeviceInfo(JLcom/bytedance/vcloud/abrmodule/IDeviceInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDoubleOptionForKey(ID)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v3, 0x0

    .line 4
    .line 5
    cmp-long v0, v1, v3

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    move-object v0, p0

    .line 11
    move v3, p1

    .line 12
    move-wide v4, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setDoubleValue(JID)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setFloatOptionForKey(IF)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setFloatValue(JIF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setInfoListener(Lcom/bytedance/vcloud/abrmodule/IABRInfoListener;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setInfoListener(JLcom/bytedance/vcloud/abrmodule/IABRInfoListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setIntOptionForKey(II)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setIntValue(JII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setLongOptionForKey(IJ)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v3, 0x0

    .line 4
    .line 5
    cmp-long v0, v1, v3

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    move-object v0, p0

    .line 11
    move v3, p1

    .line 12
    move-wide v4, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setLongValue(JIJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setMediaInfo(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/abrmodule/IVideoStream;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/abrmodule/IAudioStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setMediaInfo(JLjava/util/List;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSRBenchmark(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setSRBenchmark(JLjava/util/Map;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSRBenchmarkMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setSRBenchmarkMap(JLjava/util/Map;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setStringOptionForKey(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_setStringValue(JILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public start(II)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mAlgoType:I

    .line 11
    .line 12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_start(JII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->_stop(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public toStratrgy()Lcom/ss/ttm/player/ABRStrategy;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v2, Lcom/ss/ttm/player/NativeABRStrategy;

    .line 12
    .line 13
    invoke-direct {v2, v0, v1}, Lcom/ss/ttm/player/NativeABRStrategy;-><init>(J)V

    .line 14
    .line 15
    .line 16
    return-object v2
.end method
