.class public final Lai/turbolink/sdk/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/device/DeviceInfo$Companion;,
        Lai/turbolink/sdk/device/DeviceInfo$SystemObserverInstance;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lai/turbolink/sdk/device/DeviceInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _systemObserver:Lai/turbolink/sdk/device/SystemObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/device/DeviceInfo$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lai/turbolink/sdk/device/DeviceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lai/turbolink/sdk/device/DeviceInfo;->Companion:Lai/turbolink/sdk/device/DeviceInfo$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v0, Lai/turbolink/sdk/device/DeviceInfo$SystemObserverInstance;

    .line 12
    .line 13
    invoke-direct {v0}, Lai/turbolink/sdk/device/DeviceInfo$SystemObserverInstance;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lai/turbolink/sdk/device/DeviceInfo;->_systemObserver:Lai/turbolink/sdk/device/SystemObserver;

    .line 17
    .line 18
    sget-object v0, Lai/turbolink/sdk/device/SystemObserver;->Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getCurrentBatteryStatus(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getCurrentBatteryPct(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a(Lai/turbolink/sdk/device/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lai/turbolink/sdk/device/DeviceInfo;->setAndGetUserAgent$lambda-2(Lai/turbolink/sdk/device/DeviceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final setAndGetUserAgent$lambda-2(Lai/turbolink/sdk/device/DeviceInfo;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Running WebView Instance for userAgent on thread "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/webkit/WebView;

    .line 31
    .line 32
    iget-object p0, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "w.settings.userAgentString"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lai/turbolink/sdk/TurboLink$Companion;->setUserAgentString_(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-nez p0, :cond_0

    .line 65
    .line 66
    const-string p0, ""

    .line 67
    .line 68
    :cond_0
    invoke-static {p0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method


# virtual methods
.method public final getRequestExtDataParams(Lorg/json/JSONObject;)V
    .locals 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "extDataObj"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/device/SystemObserver;->Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "app_name"

    .line 15
    .line 16
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "app_version"

    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getAvailableMemory(Landroid/content/Context;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    const-string v3, "available_memory"

    .line 37
    .line 38
    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getAvailableStorage(Landroid/content/Context;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    const-string v3, "available_storage"

    .line 48
    .line 49
    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v1, "battery_level"

    .line 53
    .line 54
    invoke-virtual {v0}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getSystemBatteryCapacity()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string v1, "charge_state"

    .line 62
    .line 63
    invoke-virtual {v0}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getSystemBatteryStatusStr()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v1, "cpu_hardware"

    .line 71
    .line 72
    invoke-virtual {v0}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getCpuHardware()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const-string v1, "cpu_type"

    .line 80
    .line 81
    invoke-virtual {v0}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getCpuType()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "device_name"

    .line 95
    .line 96
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v1, "gaid"

    .line 100
    .line 101
    const-string v2, ""

    .line 102
    .line 103
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    const-string v1, "hardware"

    .line 107
    .line 108
    invoke-virtual {v0}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getHardware()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    sget-object v1, Lai/turbolink/sdk/TurboLink$RiskManager;->INSTANCE:Lai/turbolink/sdk/TurboLink$RiskManager;

    .line 116
    .line 117
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$RiskManager;->getHumanScore()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    const-string v4, "human_score"

    .line 122
    .line 123
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    const-string v4, "network_type"

    .line 133
    .line 134
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const-string v4, "package_name"

    .line 144
    .line 145
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    const-string v3, "product"

    .line 149
    .line 150
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$RiskManager;->getHumanScoreDetail()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    new-instance v3, Lorg/json/JSONObject;

    .line 158
    .line 159
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .line 161
    .line 162
    sget-object v4, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$InstallReferrerObj;

    .line 163
    .line 164
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->getInstallBeginTimestampSeconds()J

    .line 165
    .line 166
    .line 167
    move-result-wide v5

    .line 168
    const-string v7, "app_install_time"

    .line 169
    .line 170
    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    const-string v5, "click_time"

    .line 174
    .line 175
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->getReferrerClickTimestampSeconds()J

    .line 176
    .line 177
    .line 178
    move-result-wide v6

    .line 179
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    .line 181
    .line 182
    const-string v5, "google_play_instant_param"

    .line 183
    .line 184
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->getGooglePlayInstantParam()Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    const-string v5, "url"

    .line 192
    .line 193
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->getInstallReferrer()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    const-string v4, "referrer_details"

    .line 201
    .line 202
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    const-string v3, "root_score"

    .line 206
    .line 207
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$RiskManager;->getRootScore()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    sget-object v3, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 215
    .line 216
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getSdkType()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    const-string v5, "sdk_type"

    .line 221
    .line 222
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    .line 224
    .line 225
    const-string v4, "sdk_version"

    .line 226
    .line 227
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getSDKVersion()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    const-string v3, "sign_md5"

    .line 235
    .line 236
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    .line 238
    .line 239
    const-string v2, "simulate_score"

    .line 240
    .line 241
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$RiskManager;->getSimulateScore()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    .line 247
    .line 248
    const-string v2, "time_zone"

    .line 249
    .line 250
    invoke-virtual {v0}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getTimeZone()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    .line 256
    .line 257
    iget-object v2, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getTotalMemory(Landroid/content/Context;)J

    .line 260
    .line 261
    .line 262
    move-result-wide v2

    .line 263
    const-string v4, "total_memory"

    .line 264
    .line 265
    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    .line 267
    .line 268
    iget-object v2, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getTotalStorage(Landroid/content/Context;)J

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    const-string v0, "total_storage"

    .line 275
    .line 276
    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 277
    .line 278
    .line 279
    const-string v0, "vpn_status"

    .line 280
    .line 281
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$RiskManager;->getVpnStatus()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method public final getRequestUserDataParams(Lorg/json/JSONObject;)V
    .locals 7
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userDataObj"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "native_msg"

    .line 7
    .line 8
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 9
    .line 10
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getClipboardText()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v0, "deep_link_url"

    .line 18
    .line 19
    sget-object v2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 20
    .line 21
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getLAST_INTENT_VALUE()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const-string v3, ""

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v2, v3

    .line 31
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v0, "os"

    .line 35
    .line 36
    const-string v2, "Android"

    .line 37
    .line 38
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v0, "os_version"

    .line 42
    .line 43
    sget-object v2, Lai/turbolink/sdk/device/SystemObserver;->Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 44
    .line 45
    invoke-virtual {v2}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getOsVersion()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v0, "device_model"

    .line 53
    .line 54
    invoke-virtual {v2}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getDeviceModel()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string v0, "device_id"

    .line 62
    .line 63
    iget-object v4, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    const-string v0, "user_id"

    .line 73
    .line 74
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v0, "brand"

    .line 82
    .line 83
    invoke-virtual {v2}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getBrand()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v0, "country"

    .line 91
    .line 92
    invoke-virtual {v2}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getCountryCode()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v0, "language"

    .line 100
    .line 101
    invoke-virtual {v2}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getLanguage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v4, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 115
    .line 116
    iget-object v5, p0, Lai/turbolink/sdk/device/DeviceInfo;->_context:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    const-string v5, "screen_height"

    .line 123
    .line 124
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 125
    .line 126
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    const-string v5, "screen_width"

    .line 130
    .line 131
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 132
    .line 133
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    const-string v4, "dpi"

    .line 137
    .line 138
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 139
    .line 140
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    const-string v0, "ipv4"

    .line 144
    .line 145
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getSimpleParameterMode()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_1

    .line 153
    .line 154
    invoke-virtual {v2}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getLocalIp()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    goto :goto_1

    .line 159
    :catch_0
    move-exception p1

    .line 160
    goto :goto_3

    .line 161
    :cond_1
    :goto_1
    const-string v0, "local_ip"

    .line 162
    .line 163
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    const-string v0, "sdk_version"

    .line 167
    .line 168
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getSDKVersion()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    const-string v1, "avatar"

    .line 182
    .line 183
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getUserHelper()Lai/turbolink/sdk/helpers/UserHelper;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/UserHelper;->getAvatar()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    const-string v1, "invite_code"

    .line 195
    .line 196
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getUserHelper()Lai/turbolink/sdk/helpers/UserHelper;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/UserHelper;->getInviteCode()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    const-string v1, "nick_name"

    .line 208
    .line 209
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getUserHelper()Lai/turbolink/sdk/helpers/UserHelper;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/UserHelper;->getNickName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    new-instance v1, Lorg/json/JSONArray;

    .line 221
    .line 222
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getUserHelper()Lai/turbolink/sdk/helpers/UserHelper;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Ljava/lang/Iterable;

    .line 234
    .line 235
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_2

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_2
    const-string v0, "tags"

    .line 256
    .line 257
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v1, "Get request user data params exception "

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_3
    :goto_4
    return-void
.end method

.method public final getSessionParams(Lorg/json/JSONObject;)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionObj"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SessionObj;->getPreviousRequestId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "previous_request_id"

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "previous_request_response_time"

    .line 18
    .line 19
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SessionObj;->getPreviousRequestResponseTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v1, "previous_request_total_time"

    .line 27
    .line 28
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SessionObj;->getPreviousRequestTotalTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v1, "session_id"

    .line 36
    .line 37
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SessionObj;->setAndGetSessionId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v1, "session_init_param_time"

    .line 45
    .line 46
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SessionObj;->getSessionInitParamTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final getSystemObserver()Lai/turbolink/sdk/device/SystemObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/device/DeviceInfo;->_systemObserver:Lai/turbolink/sdk/device/SystemObserver;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAndGetUserAgent()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserAgentString_()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserAgentString_()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lai/turbolink/sdk/device/a;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lai/turbolink/sdk/device/a;-><init>(Lai/turbolink/sdk/device/DeviceInfo;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserAgentString_()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
