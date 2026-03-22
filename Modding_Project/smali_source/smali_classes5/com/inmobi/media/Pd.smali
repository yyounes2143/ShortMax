.class public final Lcom/inmobi/media/Pd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/va;
.implements Lcom/inmobi/media/Db;
.implements Lcom/inmobi/media/N2;


# static fields
.field public static final a:Lcom/inmobi/media/Pd;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/List;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

.field public static f:Lcom/inmobi/media/t4;

.field public static volatile g:Lcom/inmobi/media/be;

.field public static final h:Lcom/inmobi/media/Od;

.field public static i:Lcom/inmobi/media/Xd;


# direct methods
.method static constructor <clinit>()V
    .locals 56

    .line 1
    new-instance v0, Lcom/inmobi/media/Pd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/Pd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 7
    .line 8
    const-class v1, Lcom/inmobi/media/Pd;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "getSimpleName(...)"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/inmobi/media/Pd;->b:Ljava/lang/String;

    .line 20
    .line 21
    const-string v54, "CompanionWebViewPageStarted"

    .line 22
    .line 23
    const-string v55, "CompanionWebViewLoadFinished"

    .line 24
    .line 25
    const-string v3, "AdLoadCalled"

    .line 26
    .line 27
    const-string v4, "AdLoadDroppedAtSDK"

    .line 28
    .line 29
    const-string v5, "AdLoadSuccessful"

    .line 30
    .line 31
    const-string v6, "AdLoadFailed"

    .line 32
    .line 33
    const-string v7, "ServerFill"

    .line 34
    .line 35
    const-string v8, "ServerNoFill"

    .line 36
    .line 37
    const-string v9, "ServerError"

    .line 38
    .line 39
    const-string v10, "AssetDownloaded"

    .line 40
    .line 41
    const-string v11, "AdShowCalled"

    .line 42
    .line 43
    const-string v12, "AdShowSuccessful"

    .line 44
    .line 45
    const-string v13, "AdShowFailed"

    .line 46
    .line 47
    const-string v14, "AdGetSignalsCalled"

    .line 48
    .line 49
    const-string v15, "AdGetSignalsSucceeded"

    .line 50
    .line 51
    const-string v16, "AdGetSignalsFailed"

    .line 52
    .line 53
    const-string v17, "UnifiedIdNetworkCallRequested"

    .line 54
    .line 55
    const-string v18, "UnifiedIdNetworkResponseFailure"

    .line 56
    .line 57
    const-string v19, "FetchApiInvoked"

    .line 58
    .line 59
    const-string v20, "FetchCallbackFailure"

    .line 60
    .line 61
    const-string v21, "AdImpressionSuccessful"

    .line 62
    .line 63
    const-string v22, "RenderSuccess"

    .line 64
    .line 65
    const-string v23, "ParseSuccess"

    .line 66
    .line 67
    const-string v24, "PageStarted"

    .line 68
    .line 69
    const-string v25, "WebViewLoadFinished"

    .line 70
    .line 71
    const-string v26, "FireAdReady"

    .line 72
    .line 73
    const-string v27, "WebViewLoadCalled"

    .line 74
    .line 75
    const-string v28, "FireAdFailed"

    .line 76
    .line 77
    const-string v29, "ResourceCacheMiss"

    .line 78
    .line 79
    const-string v30, "ResourceCacheHit"

    .line 80
    .line 81
    const-string v31, "ResourceDiskCacheFileMissing"

    .line 82
    .line 83
    const-string v32, "ResourceDiskCacheFileEvicted"

    .line 84
    .line 85
    const-string v33, "LowAvailableSpaceForCache"

    .line 86
    .line 87
    const-string v34, "WebViewRenderProcessGoneEvent"

    .line 88
    .line 89
    const-string v35, "clickStartCalled"

    .line 90
    .line 91
    const-string v36, "landingsStartSuccess"

    .line 92
    .line 93
    const-string v37, "landingsStartFailed"

    .line 94
    .line 95
    const-string v38, "browserOpenFailed"

    .line 96
    .line 97
    const-string v39, "landingsPageStarted"

    .line 98
    .line 99
    const-string v40, "landingsCompleteSuccess"

    .line 100
    .line 101
    const-string v41, "landingsCompleteFailed"

    .line 102
    .line 103
    const-string v42, "ImmersiveNotSupported"

    .line 104
    .line 105
    const-string v43, "AdNotReady"

    .line 106
    .line 107
    const-string v44, "IAPFetchFailed"

    .line 108
    .line 109
    const-string v45, "BillingClientConnectionError"

    .line 110
    .line 111
    const-string v46, "BillingClientNotCompatible"

    .line 112
    .line 113
    const-string v47, "PingFailed"

    .line 114
    .line 115
    const-string v48, "PingStarted"

    .line 116
    .line 117
    const-string v49, "PingSuccess"

    .line 118
    .line 119
    const-string v50, "CompanionWebViewLoadCalled"

    .line 120
    .line 121
    const-string v51, "CompanionWebViewLoadFailed"

    .line 122
    .line 123
    const-string v52, "CompanionFireAdReady"

    .line 124
    .line 125
    const-string v53, "CompanionFireAdFailed"

    .line 126
    .line 127
    filled-new-array/range {v3 .. v55}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sput-object v1, Lcom/inmobi/media/Pd;->c:Ljava/util/List;

    .line 136
    .line 137
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 141
    .line 142
    .line 143
    sput-object v2, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    .line 145
    sget-object v2, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    const-string v3, "telemetry"

    .line 152
    .line 153
    invoke-static {v3, v2, v0}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig"

    .line 158
    .line 159
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    check-cast v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 163
    .line 164
    sput-object v0, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 165
    .line 166
    sget-object v0, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 167
    .line 168
    new-instance v11, Lcom/inmobi/media/Sd;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getEnabled()Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isImageEnabled()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isGifEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isVideoEnabled()Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->isGeneralEventsDisabled()Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPriorityEventsList()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getSamplingFactor()D

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    move-object v2, v11

    .line 211
    invoke-direct/range {v2 .. v10}, Lcom/inmobi/media/Sd;-><init>(ZZZZZLjava/util/List;D)V

    .line 212
    .line 213
    .line 214
    new-instance v0, Lcom/inmobi/media/be;

    .line 215
    .line 216
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-direct {v0, v11, v1}, Lcom/inmobi/media/be;-><init>(Lcom/inmobi/media/Sd;Ljava/util/List;)V

    .line 221
    .line 222
    .line 223
    sput-object v0, Lcom/inmobi/media/Pd;->g:Lcom/inmobi/media/be;

    .line 224
    .line 225
    sget-object v0, Lcom/inmobi/media/Od;->a:Lcom/inmobi/media/Od;

    .line 226
    .line 227
    sput-object v0, Lcom/inmobi/media/Pd;->h:Lcom/inmobi/media/Od;

    .line 228
    .line 229
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)Z
    .locals 5

    .line 19
    sget-object v0, Lcom/inmobi/media/Pd;->g:Lcom/inmobi/media/be;

    if-nez v0, :cond_0

    const-string v0, "mTelemetryValidator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v1, "telemetryEventType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "keyValueMap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventType"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v3, v0, Lcom/inmobi/media/be;->a:Lcom/inmobi/media/Sd;

    .line 22
    iget-boolean v3, v3, Lcom/inmobi/media/Sd;->a:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 23
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_3

    if-ne p2, v4, :cond_2

    goto/16 :goto_1

    .line 24
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 25
    :cond_3
    iget-object p2, v0, Lcom/inmobi/media/be;->b:Lcom/inmobi/media/Oc;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p2, Lcom/inmobi/media/Oc;->a:Lcom/inmobi/media/Sd;

    .line 28
    iget-boolean v1, v0, Lcom/inmobi/media/Sd;->e:Z

    if-eqz v1, :cond_4

    .line 29
    iget-object v0, v0, Lcom/inmobi/media/Sd;->f:Ljava/util/List;

    .line 30
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 31
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "AssetDownloaded"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 32
    const-string p0, "assetType"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/inmobi/media/Oc;->a:Lcom/inmobi/media/Sd;

    .line 34
    iget-boolean v0, v0, Lcom/inmobi/media/Sd;->b:Z

    if-nez v0, :cond_5

    goto :goto_0

    .line 35
    :cond_5
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gif"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/inmobi/media/Oc;->a:Lcom/inmobi/media/Sd;

    .line 36
    iget-boolean v0, v0, Lcom/inmobi/media/Sd;->c:Z

    if-nez v0, :cond_6

    goto :goto_0

    .line 37
    :cond_6
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "video"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p2, Lcom/inmobi/media/Oc;->a:Lcom/inmobi/media/Sd;

    .line 38
    iget-boolean p0, p0, Lcom/inmobi/media/Sd;->d:Z

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move p0, v4

    :goto_2
    xor-int/2addr p0, v4

    return p0
.end method

.method public static final b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V
    .locals 1

    const-string v0, "eventType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetryEventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lub/p1;

    invoke-direct {v0, p0, p1, p2}, Lub/p1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final c()V
    .locals 6

    .line 1
    sget-object v0, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 3
    invoke-static {}, Lcom/inmobi/media/Nc;->e()Lcom/inmobi/media/Vd;

    move-result-object v2

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v3}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/Pd;->b()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object v0

    const/16 v2, 0x98

    const/16 v3, 0x97

    const/4 v4, 0x2

    const/16 v5, 0x96

    .line 6
    filled-new-array {v4, v1, v5, v2, v3}, [I

    move-result-object v1

    .line 7
    sget-object v2, Lcom/inmobi/media/Pd;->h:Lcom/inmobi/media/Od;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/H7;->a([ILkotlin/jvm/functions/Function1;)V

    .line 9
    new-instance v0, Lcom/inmobi/media/Xd;

    sget-object v1, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-direct {v0, v1}, Lcom/inmobi/media/Xd;-><init>(Lcom/inmobi/commons/core/configs/TelemetryConfig;)V

    sput-object v0, Lcom/inmobi/media/Pd;->i:Lcom/inmobi/media/Xd;

    :cond_1
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V
    .locals 11

    const-string v0, "toString(...)"

    const-string v1, "$eventType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$keyValueMap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$telemetryEventType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    :try_start_0
    sget-object v1, Lcom/inmobi/media/Pd;->g:Lcom/inmobi/media/be;

    if-nez v1, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object v1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    invoke-static {p0, p1, p2}, Lcom/inmobi/media/Pd;->a(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 13
    :cond_1
    sget-object v2, Lcom/inmobi/media/Pd;->g:Lcom/inmobi/media/be;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "mTelemetryValidator"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-virtual {v2, p2, p0}, Lcom/inmobi/media/be;->a(Lcom/inmobi/media/Td;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x64

    const-string v5, "samplingRate"

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    return-void

    .line 14
    :cond_3
    :try_start_1
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    int-to-double v7, v6

    .line 17
    sget-object v2, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getSamplingFactor()D

    move-result-wide v9

    sub-double/2addr v7, v9

    int-to-double v9, v4

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Lbt/a;->b(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_5
    :goto_0
    new-instance v2, Lcom/inmobi/media/Wd;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_7

    if-ne v4, v6, :cond_6

    .line 20
    const-string v4, "template"

    goto :goto_1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 21
    :cond_7
    const-string v4, "sdk"

    .line 22
    :goto_1
    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/media/Wd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string p0, "eventType"

    .line 24
    iget-object v4, v2, Lcom/inmobi/media/U1;->a:Ljava/lang/String;

    .line 25
    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p0, "eventId"

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p0, "isTemplateEvent"

    .line 30
    sget-object v4, Lcom/inmobi/media/Td;->b:Lcom/inmobi/media/Td;

    if-ne p2, v4, :cond_8

    move p2, v6

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string p1, "payload"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p0, v2, Lcom/inmobi/media/U1;->d:Ljava/lang/String;

    .line 34
    sget-object p0, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getMaxEventsToPersist()I

    move-result p0

    .line 35
    invoke-static {}, Lcom/inmobi/media/Nc;->e()Lcom/inmobi/media/Vd;

    move-result-object p1

    const/16 p2, 0x3f

    invoke-static {p1, v3, v3, p2}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v6

    sub-int/2addr p1, p0

    if-lez p1, :cond_9

    .line 36
    invoke-static {}, Lcom/inmobi/media/Nc;->e()Lcom/inmobi/media/Vd;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/inmobi/media/r4;->a(I)V

    .line 37
    invoke-static {}, Lcom/inmobi/media/Ud;->a()I

    move-result p0

    add-int v5, p0, p1

    const/4 p0, -0x1

    if-eq v5, p0, :cond_9

    .line 38
    sput v5, Lcom/inmobi/media/Ud;->b:I

    .line 39
    sget-object v3, Lcom/inmobi/media/Ud;->a:Lcom/inmobi/media/C6;

    if-eqz v3, :cond_9

    const-string v4, "count"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 40
    :cond_9
    invoke-static {}, Lcom/inmobi/media/Nc;->e()Lcom/inmobi/media/Vd;

    move-result-object p0

    .line 41
    invoke-virtual {p0, v2}, Lcom/inmobi/media/T1;->a(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1}, Lcom/inmobi/media/Pd;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/inmobi/media/s4;
    .locals 12

    .line 39
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    sget-object v0, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getWifiConfig()Lcom/inmobi/media/R9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/R9;->a()I

    move-result v0

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getMobileConfig()Lcom/inmobi/media/R9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/R9;->a()I

    move-result v0

    .line 42
    :goto_0
    invoke-static {}, Lcom/inmobi/media/Nc;->e()Lcom/inmobi/media/Vd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/media/r4;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 43
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    const-string v4, "DatabaseMaxLimitReachedV2"

    invoke-static {v4, v2, v3}, Lcom/inmobi/media/Pd;->a(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)Z

    move-result v2

    const-string v3, "payload"

    const-string v5, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 45
    invoke-static {}, Lcom/inmobi/media/Ud;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 46
    invoke-static {}, Lcom/inmobi/media/Ud;->a()I

    move-result v0

    .line 47
    new-instance v2, Lcom/inmobi/media/Wd;

    .line 48
    const-string v7, "sdk"

    .line 49
    invoke-direct {v2, v4, v6, v7}, Lcom/inmobi/media/Wd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "toString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v9, "eventId"

    invoke-static {v9, v7}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 52
    const-string v9, "eventType"

    invoke-static {v9, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v9, 0x64

    .line 53
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "samplingRate"

    invoke-static {v10, v9}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 54
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v11, "isTemplateEvent"

    invoke-static {v11, v10}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v11, "eventLostCount"

    invoke-static {v11, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v7, v4, v9, v10, v0}, [Lkotlin/Pair;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 57
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object v0, v2, Lcom/inmobi/media/U1;->d:Ljava/lang/String;

    .line 60
    iget v0, v2, Lcom/inmobi/media/U1;->c:I

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/inmobi/media/Ud;->c:Ljava/lang/Integer;

    .line 63
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/Wd;

    .line 67
    iget v4, v4, Lcom/inmobi/media/U1;->c:I

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_2
    :try_start_0
    const-string v2, "im-accid"

    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    invoke-static {v2, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 70
    const-string v4, "version"

    const-string v7, "4.0.0"

    invoke-static {v4, v7}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 71
    const-string v7, "mk-version"

    invoke-static {}, Lcom/inmobi/media/Vc;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 72
    const-string v8, "u-appbid"

    .line 73
    sget-object v9, Lcom/inmobi/media/e1;->a:Ljava/lang/String;

    .line 74
    invoke-static {v8, v9}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 75
    const-string v9, "tp"

    invoke-static {}, Lcom/inmobi/media/Vc;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    filled-new-array {v2, v4, v7, v8, v9}, [Lkotlin/Pair;

    move-result-object v2

    .line 76
    invoke-static {v2}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 77
    invoke-static {}, Lcom/inmobi/media/Vc;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 78
    const-string v7, "tp-v"

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 80
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/Wd;

    .line 82
    invoke-virtual {v5}, Lcom/inmobi/media/U1;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 83
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/inmobi/media/U1;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 85
    :cond_6
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_7

    .line 87
    new-instance v6, Lcom/inmobi/media/s4;

    invoke-direct {v6, v0, v1}, Lcom/inmobi/media/s4;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_7
    return-object v6
.end method

.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 10

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 3
    sput-object p1, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 4
    new-instance v9, Lcom/inmobi/media/Sd;

    .line 5
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getEnabled()Z

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isImageEnabled()Z

    move-result v2

    .line 7
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isGifEnabled()Z

    move-result v3

    .line 8
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isVideoEnabled()Z

    move-result v4

    .line 9
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->isGeneralEventsDisabled()Z

    move-result v5

    .line 10
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPriorityEventsList()Ljava/util/List;

    move-result-object v6

    .line 11
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getSamplingFactor()D

    move-result-wide v7

    move-object v0, v9

    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/inmobi/media/Sd;-><init>(ZZZZZLjava/util/List;D)V

    .line 13
    new-instance v0, Lcom/inmobi/media/be;

    .line 14
    sget-object v1, Lcom/inmobi/media/Pd;->c:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-direct {v0, v9, v1}, Lcom/inmobi/media/be;-><init>(Lcom/inmobi/media/Sd;Ljava/util/List;)V

    sput-object v0, Lcom/inmobi/media/Pd;->g:Lcom/inmobi/media/be;

    .line 16
    sget-object v0, Lcom/inmobi/media/Pd;->i:Lcom/inmobi/media/Xd;

    if-eqz v0, :cond_0

    .line 17
    const-string v1, "telemetryConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, v0, Lcom/inmobi/media/Xd;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 2
    sget-object v0, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getEventConfig()Lcom/inmobi/media/q4;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/inmobi/media/Pd;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getTelemetryUrl()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/inmobi/media/q4;->k:Ljava/lang/String;

    .line 6
    sget-object v1, Lcom/inmobi/media/Pd;->f:Lcom/inmobi/media/t4;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/inmobi/media/t4;

    invoke-static {}, Lcom/inmobi/media/Nc;->e()Lcom/inmobi/media/Vd;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0, p0}, Lcom/inmobi/media/t4;-><init>(Lcom/inmobi/media/r4;Lcom/inmobi/media/va;Lcom/inmobi/media/q4;Lcom/inmobi/media/Db;)V

    sput-object v1, Lcom/inmobi/media/Pd;->f:Lcom/inmobi/media/t4;

    goto :goto_0

    .line 8
    :cond_1
    const-string v2, "eventConfig"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object v0, v1, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    .line 10
    :goto_0
    sget-object v0, Lcom/inmobi/media/Pd;->f:Lcom/inmobi/media/t4;

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, v0, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    .line 12
    iget-object v2, v0, Lcom/inmobi/media/t4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v1, v1, Lcom/inmobi/media/q4;->c:J

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/media/t4;->a(JZ)V

    :cond_3
    :goto_1
    return-void
.end method
