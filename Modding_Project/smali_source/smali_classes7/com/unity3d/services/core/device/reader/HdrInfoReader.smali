.class public Lcom/unity3d/services/core/device/reader/HdrInfoReader;
.super Ljava/lang/Object;
.source "HdrInfoReader.java"

# interfaces
.implements Lcom/unity3d/services/core/device/reader/IHdrInfoReader;


# static fields
.field private static final _hdrMetricsCaptured:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile _instance:Lcom/unity3d/services/core/device/reader/HdrInfoReader;


# instance fields
.field private final _sdkMetricsSender:Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/services/core/device/reader/HdrInfoReader;->_hdrMetricsCaptured:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/unity3d/services/core/device/reader/HdrInfoReader;->_sdkMetricsSender:Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 13
    .line 14
    return-void
.end method

.method public static getInstance()Lcom/unity3d/services/core/device/reader/HdrInfoReader;
    .locals 2

    .line 1
    sget-object v0, Lcom/unity3d/services/core/device/reader/HdrInfoReader;->_instance:Lcom/unity3d/services/core/device/reader/HdrInfoReader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/unity3d/services/core/device/reader/HdrInfoReader;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/device/reader/HdrInfoReader;->_instance:Lcom/unity3d/services/core/device/reader/HdrInfoReader;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/unity3d/services/core/device/reader/HdrInfoReader;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/unity3d/services/core/device/reader/HdrInfoReader;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/unity3d/services/core/device/reader/HdrInfoReader;->_instance:Lcom/unity3d/services/core/device/reader/HdrInfoReader;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/unity3d/services/core/device/reader/HdrInfoReader;->_instance:Lcom/unity3d/services/core/device/reader/HdrInfoReader;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public captureHDRCapabilityMetrics(Landroid/app/Activity;Lcom/unity3d/services/core/configuration/ExperimentsReader;)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/unity3d/services/core/configuration/ExperimentsReader;->getCurrentlyActiveExperiments()Lcom/unity3d/services/core/configuration/IExperiments;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-interface {p2}, Lcom/unity3d/services/core/configuration/IExperiments;->isCaptureHDRCapabilitiesEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    sget-object p2, Lcom/unity3d/services/core/device/reader/HdrInfoReader;->_hdrMetricsCaptured:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_d

    .line 24
    .line 25
    new-instance p2, Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const-string v2, "window"

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/view/WindowManager;

    .line 38
    .line 39
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    array-length v4, v3

    .line 52
    move v5, v0

    .line 53
    move v6, v5

    .line 54
    move v7, v6

    .line 55
    move v8, v7

    .line 56
    move v9, v8

    .line 57
    :goto_0
    if-ge v5, v4, :cond_6

    .line 58
    .line 59
    aget v10, v3, v5

    .line 60
    .line 61
    if-eq v10, v1, :cond_5

    .line 62
    .line 63
    const/4 v11, 0x2

    .line 64
    if-eq v10, v11, :cond_4

    .line 65
    .line 66
    const/4 v11, 0x3

    .line 67
    if-eq v10, v11, :cond_3

    .line 68
    .line 69
    const/4 v11, 0x4

    .line 70
    if-eq v10, v11, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v8, v1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v9, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move v7, v1

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    move v6, v1

    .line 80
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    invoke-virtual {v2}, Landroid/view/Display$HdrCapabilities;->getDesiredMaxAverageLuminance()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    int-to-long v3, v1

    .line 92
    invoke-virtual {v2}, Landroid/view/Display$HdrCapabilities;->getDesiredMaxLuminance()F

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-long v10, v1

    .line 101
    invoke-virtual {v2}, Landroid/view/Display$HdrCapabilities;->getDesiredMinLuminance()F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    int-to-long v1, v1

    .line 110
    new-instance v5, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 111
    .line 112
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v4, "native_device_hdr_lum_max_average"

    .line 117
    .line 118
    invoke-direct {v5, v4, v3}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance v3, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 125
    .line 126
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string v5, "native_device_hdr_lum_max"

    .line 131
    .line 132
    invoke-direct {v3, v5, v4}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    new-instance v3, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 139
    .line 140
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string v2, "native_device_hdr_lum_min"

    .line 145
    .line 146
    invoke-direct {v3, v2, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .line 154
    const/16 v2, 0x1a

    .line 155
    .line 156
    if-lt v1, v2, :cond_7

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/applovin/impl/sdk/u0;->a(Landroid/content/res/Configuration;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    :cond_7
    if-eqz v6, :cond_8

    .line 171
    .line 172
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 173
    .line 174
    const-string v1, "native_device_hdr_dolby_vision_success"

    .line 175
    .line 176
    invoke-direct {p1, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_8
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 184
    .line 185
    const-string v1, "native_device_hdr_dolby_vision_failure"

    .line 186
    .line 187
    invoke-direct {p1, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :goto_2
    if-eqz v7, :cond_9

    .line 194
    .line 195
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 196
    .line 197
    const-string v1, "native_device_hdr_hdr10_success"

    .line 198
    .line 199
    invoke-direct {p1, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 207
    .line 208
    const-string v1, "native_device_hdr_hdr10_failure"

    .line 209
    .line 210
    invoke-direct {p1, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :goto_3
    if-eqz v8, :cond_a

    .line 217
    .line 218
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 219
    .line 220
    const-string v1, "native_device_hdr_hdr10_plus_success"

    .line 221
    .line 222
    invoke-direct {p1, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_a
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 230
    .line 231
    const-string v1, "native_device_hdr_hdr10_plus_failure"

    .line 232
    .line 233
    invoke-direct {p1, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    :goto_4
    if-eqz v9, :cond_b

    .line 240
    .line 241
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 242
    .line 243
    const-string v1, "native_device_hdr_hlg_success"

    .line 244
    .line 245
    invoke-direct {p1, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_b
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 253
    .line 254
    const-string v1, "native_device_hdr_hlg_failure"

    .line 255
    .line 256
    invoke-direct {p1, v1}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :goto_5
    if-eqz v0, :cond_c

    .line 263
    .line 264
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 265
    .line 266
    const-string v0, "native_device_hdr_screen_hdr_success"

    .line 267
    .line 268
    invoke-direct {p1, v0}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_c
    new-instance p1, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 276
    .line 277
    const-string v0, "native_device_hdr_screen_hdr_failure"

    .line 278
    .line 279
    invoke-direct {p1, v0}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    :goto_6
    iget-object p1, p0, Lcom/unity3d/services/core/device/reader/HdrInfoReader;->_sdkMetricsSender:Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 286
    .line 287
    invoke-interface {p1, p2}, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;->sendMetrics(Ljava/util/List;)V

    .line 288
    .line 289
    .line 290
    :cond_d
    return-void
.end method
