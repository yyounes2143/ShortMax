.class public final Lcom/inmobi/media/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/S0;

.field public final b:Lcom/inmobi/media/S0;

.field public final c:Lcom/inmobi/media/Z;

.field public final d:Ljava/lang/String;

.field public e:J

.field public f:Lcom/inmobi/media/z5;

.field public final g:Lcom/inmobi/media/A0;

.field public final h:Lcom/inmobi/media/z0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;Lcom/inmobi/media/S0;Lcom/inmobi/media/Z;)V
    .locals 1

    .line 1
    const-string v0, "mAdStoreListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mTelemetryListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mAdPlacement"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/B0;->a:Lcom/inmobi/media/S0;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/inmobi/media/B0;->b:Lcom/inmobi/media/S0;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    .line 24
    .line 25
    const-class p1, Lcom/inmobi/media/B0;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p1, Lcom/inmobi/media/A0;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/inmobi/media/A0;-><init>(Lcom/inmobi/media/B0;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/inmobi/media/B0;->g:Lcom/inmobi/media/A0;

    .line 39
    .line 40
    new-instance p1, Lcom/inmobi/media/z0;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/inmobi/media/z0;-><init>(Lcom/inmobi/media/B0;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/inmobi/media/B0;->h:Lcom/inmobi/media/z0;

    .line 46
    .line 47
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .line 46
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 48
    sget-object v3, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 49
    const-string v3, "root"

    invoke-static {v3, v0, v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    move-result-wide v4

    .line 51
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    const-string v3, "ads"

    invoke-static {v3, v0, v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    move-result-wide v4

    .line 54
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string v3, "telemetry"

    invoke-static {v3, v0, v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    move-result-wide v4

    .line 57
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    const-string v3, "crashReporting"

    invoke-static {v3, v0, v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    move-result-wide v4

    .line 60
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    const-string v3, "signals"

    invoke-static {v3, v0, v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    move-result-wide v0

    .line 63
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/T;Ljava/lang/Integer;)Lcom/inmobi/media/y0;
    .locals 5

    const-string v0, "TAG"

    const-string v1, "networkRequest"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/inmobi/media/B0;->e:J

    sub-long/2addr v1, v3

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v3, p2

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/inmobi/media/K;

    .line 4
    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v0, 0x7d9

    .line 5
    invoke-direct {p1, p2, v0}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 6
    iget-object p2, p1, Lcom/inmobi/media/T;->D:Ljava/util/Map;

    if-nez p2, :cond_2

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_2
    iput-object p2, p1, Lcom/inmobi/media/T;->D:Ljava/util/Map;

    .line 9
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/inmobi/media/B0;->e:J

    .line 10
    const-string p2, "mAdNetworkRequest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-class p2, Lcom/inmobi/media/S;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 12
    :try_start_0
    const-string v2, "mRequest"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/inmobi/media/N9;->b()Lcom/inmobi/media/P9;

    move-result-object p1

    .line 14
    new-instance v2, Lcom/inmobi/media/V;

    invoke-direct {v2, p1}, Lcom/inmobi/media/V;-><init>(Lcom/inmobi/media/P9;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    invoke-virtual {p1}, Lcom/inmobi/media/P9;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v2, v1

    .line 17
    :catch_1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 18
    iget-object p1, v2, Lcom/inmobi/media/V;->a:Lcom/inmobi/media/P9;

    .line 19
    iget-object p1, p1, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_2
    const/4 p2, 0x0

    const-string v3, "errorCode"

    if-eqz v2, :cond_9

    if-nez p1, :cond_7

    .line 20
    const-string p1, "adNetworkResponse"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/inmobi/media/B0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {p1}, Lcom/inmobi/media/S0;->g0()V

    .line 22
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    .line 23
    iget-object v1, v2, Lcom/inmobi/media/V;->a:Lcom/inmobi/media/P9;

    .line 24
    invoke-virtual {v1}, Lcom/inmobi/media/P9;->a()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 26
    invoke-virtual {p0, p1}, Lcom/inmobi/media/B0;->a(Lorg/json/JSONObject;)Lcom/inmobi/media/y0;

    move-result-object v1

    goto :goto_3

    :catch_2
    move-exception p1

    const/16 v1, 0x841

    .line 27
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v3, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/inmobi/media/B0;->a(Ljava/util/Map;)V

    .line 30
    iget-object v1, p0, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v0, "Error while parsing ad response."

    invoke-virtual {v1, v2, v0, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 31
    :cond_6
    new-instance p1, Lcom/inmobi/media/K;

    .line 32
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 33
    invoke-direct {p1, v0, p2}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw p1

    .line 34
    :cond_7
    iget-object p1, p1, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/inmobi/media/B0;->a(Ljava/util/Map;)V

    .line 38
    iget-object p1, v2, Lcom/inmobi/media/V;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    if-nez p1, :cond_8

    :goto_3
    return-object v1

    .line 39
    :cond_8
    new-instance v0, Lcom/inmobi/media/K;

    invoke-direct {v0, p1, p2}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw v0

    :cond_9
    const/16 p1, 0x83c

    .line 40
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {v3, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/inmobi/media/B0;->a(Ljava/util/Map;)V

    .line 43
    new-instance p1, Lcom/inmobi/media/K;

    .line 44
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 45
    invoke-direct {p1, v0, p2}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw p1
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/inmobi/media/y0;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 65
    const-string v3, "logEnabled"

    const-string v4, "networkType"

    const-string v5, "adType"

    const-string v6, "requestId"

    const-string v7, "errorCode"

    const-string v8, "adSets"

    const-string v9, "TAG"

    const-string v0, "response - "

    const/4 v10, 0x0

    .line 66
    :try_start_0
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_0

    iget-object v12, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v12, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    :goto_0
    move-object/from16 v18, v7

    goto/16 :goto_7

    .line 67
    :cond_0
    :goto_1
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v11, "getJSONArray(...)"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inmobi/media/B2;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    :cond_1
    :goto_2
    move-object/from16 v18, v7

    goto/16 :goto_8

    .line 68
    :cond_2
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "optString(...)"

    if-eqz v11, :cond_3

    :try_start_1
    const-string v13, "requestID"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v13, v14}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_3
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_4

    const-string v13, "placementID"

    const-string v14, "placementId"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v13, v14}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_4
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_5

    iget-object v13, v1, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v13}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v5, v13}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_5
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_6

    const-string v13, "placementType"

    iget-object v14, v1, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v14}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v13, v14}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_6
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_7

    const-string v13, "bundleID"

    .line 74
    sget-object v14, Lcom/inmobi/media/e1;->a:Ljava/lang/String;

    .line 75
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v13, v14}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_7
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_8

    const-string v13, "deviceOSVersion"

    sget-object v14, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v14}, Lcom/inmobi/media/L3;->c()Lkotlin/Pair;

    move-result-object v14

    invoke-virtual {v14}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v13, v14}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_8
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object v13

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v4, v13}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_9
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_a

    const-string v13, "deviceModel"

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v15, "MODEL"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v13, v14}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_a
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_b

    const-string v13, "publisherID"

    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v13, v14}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_b
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "isPod"

    if-eqz v11, :cond_c

    :try_start_2
    const-string v14, "sdkAdPod"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v15}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_c
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_d

    const-string v14, "sdkVersion"

    const-string v15, "10.8.7"

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v15}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_d
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_e

    const-string v14, "tpName"

    invoke-static {}, Lcom/inmobi/media/Vc;->d()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v15}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_e
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_f

    const-string v14, "tpVersion"

    invoke-static {}, Lcom/inmobi/media/Vc;->f()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v15}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_f
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_10

    const-string v14, "source"

    const-string v15, "sdk_android"

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v15}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_10
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_11

    const-string v14, "mkVersion"

    invoke-static {}, Lcom/inmobi/media/Vc;->a()Ljava/lang/String;

    move-result-object v15

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v15}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_11
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_12

    .line 87
    const-string v14, "isServerSideLogging"

    .line 88
    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 89
    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v15}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_12
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_13

    .line 91
    const-string v14, "transactionID"

    .line 92
    const-string v15, "transactionId"

    const-string v10, "Not Set"

    invoke-virtual {v0, v15, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v10}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_13
    iget-object v10, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v10, :cond_14

    const-string v11, "webViewUserAgent"

    invoke-static {}, Lcom/inmobi/media/Uc;->k()Ljava/lang/String;

    move-result-object v14

    check-cast v10, Lcom/inmobi/media/A5;

    invoke-virtual {v10, v11, v14}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_14
    invoke-static {}, Lcom/inmobi/media/B0;->a()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 96
    iget-object v11, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v11, :cond_15

    const-string v14, "configData"

    check-cast v11, Lcom/inmobi/media/A5;

    invoke-virtual {v11, v14, v10}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_15
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "no ads. cannot update vitals"

    const-string v13, "impressionID"

    const-string v14, "creativeID"

    const-string v15, "impressionId"

    move-object/from16 v16, v5

    const-string v5, "creativeId"

    move-object/from16 v17, v4

    const-string v4, "ads"

    if-eqz v10, :cond_1a

    .line 98
    :try_start_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    if-eqz v18, :cond_19

    .line 101
    invoke-static/range {v18 .. v18}, Lcom/inmobi/media/B2;->a(Lorg/json/JSONArray;)Z

    move-result v18

    if-eqz v18, :cond_16

    goto :goto_4

    .line 102
    :cond_16
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v4, :cond_17

    move/from16 v18, v4

    .line 104
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 105
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v18

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 106
    :cond_17
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_18

    const-string v19, " , "

    const/16 v25, 0x3e

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v10

    invoke-static/range {v18 .. v26}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v14, v4}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_18
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    const-string v19, " , "

    const/16 v25, 0x3e

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v12

    invoke-static/range {v18 .. v26}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v13, v4}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 108
    :cond_19
    :goto_4
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    iget-object v4, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v4, v11}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 109
    :cond_1a
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_1d

    .line 110
    invoke-static {v10}, Lcom/inmobi/media/B2;->a(Lorg/json/JSONArray;)Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_6

    .line 111
    :cond_1b
    iget-object v10, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v10, :cond_1c

    .line 112
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v18, v7

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    check-cast v10, Lcom/inmobi/media/A5;

    invoke-virtual {v10, v14, v5}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_1c
    move-object/from16 v18, v7

    .line 114
    :goto_5
    iget-object v5, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_1e

    .line 115
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    check-cast v5, Lcom/inmobi/media/A5;

    invoke-virtual {v5, v13, v0}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1d
    :goto_6
    move-object/from16 v18, v7

    .line 117
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1e

    iget-object v4, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v4, v11}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 118
    :goto_7
    iget-object v4, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_1e

    iget-object v5, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/inmobi/media/A5;

    const-string v7, "error while update vitals"

    invoke-virtual {v4, v5, v7, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 119
    :cond_1e
    :goto_8
    const-string v0, "server side logger lever - "

    .line 120
    :try_start_5
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_1f

    goto :goto_b

    .line 121
    :cond_1f
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 122
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 123
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 124
    iget-object v4, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_20

    iget-object v5, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v5, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    .line 125
    :cond_20
    :goto_9
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_22

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3}, Lcom/inmobi/media/A5;->a(Z)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    .line 126
    :goto_a
    iget-object v3, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_21

    iget-object v4, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v5, "error while setting server-side logging lever"

    invoke-virtual {v3, v4, v5, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 127
    :cond_21
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_22

    check-cast v0, Lcom/inmobi/media/A5;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/inmobi/media/A5;->a(Z)V

    .line 128
    :cond_22
    :goto_b
    const-string v0, "Ad response received but no ad available:"

    const/4 v3, 0x0

    .line 129
    :try_start_6
    iget-object v4, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_23

    iget-object v5, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "parseAdResponse called"

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v5, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_4
    move-exception v0

    move-object/from16 v4, v18

    goto/16 :goto_e

    .line 130
    :cond_23
    :goto_c
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 131
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 132
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_28

    .line 133
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_24

    iget-object v5, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "parseAdResponse responses available"

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v5, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_24
    iget-object v0, v1, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v0}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 135
    sget-object v0, Lcom/inmobi/media/y0;->Companion:Lcom/inmobi/media/x0;

    const/4 v5, 0x0

    .line 136
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v4, "getJSONObject(...)"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v4, v1, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v4}, Lcom/inmobi/media/Z;->l()J

    move-result-wide v11

    .line 138
    iget-object v4, v1, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v4}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object v13

    .line 139
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    iget-object v15, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v10 .. v15}, Lcom/inmobi/media/x0;->a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Lcom/inmobi/media/z5;)Lcom/inmobi/media/y0;

    move-result-object v0

    goto :goto_d

    :cond_25
    move-object v0, v3

    :goto_d
    if-eqz v0, :cond_26

    move-object v3, v0

    move-object/from16 v4, v18

    goto/16 :goto_f

    .line 142
    :cond_26
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_27

    iget-object v4, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adSet is null"

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/16 v0, 0x842

    .line 143
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v4, v18

    :try_start_7
    invoke-static {v4, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Lcom/inmobi/media/B0;->a(Ljava/util/Map;)V

    .line 146
    new-instance v0, Lcom/inmobi/media/K;

    .line 147
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v6, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v5, v6}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v6, 0x0

    .line 148
    invoke-direct {v0, v5, v6}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw v0

    :catch_5
    move-exception v0

    goto/16 :goto_e

    :cond_28
    move-object/from16 v4, v18

    .line 149
    iget-object v5, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_29

    iget-object v6, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v5, Lcom/inmobi/media/A5;

    invoke-virtual {v5, v6, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_29
    const-string v0, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/inmobi/media/B0;->e:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v17

    invoke-static {v6, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 152
    const-string v6, "plId"

    iget-object v7, v1, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v7}, Lcom/inmobi/media/Z;->l()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    filled-new-array {v0, v5, v6}, [Lkotlin/Pair;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 154
    iget-object v5, v1, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v5}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 155
    const-string v6, "plType"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_2a
    iget-object v5, v1, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v5}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2b

    move-object/from16 v6, v16

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2b
    iget-object v5, v1, Lcom/inmobi/media/B0;->b:Lcom/inmobi/media/S0;

    .line 158
    const-string v6, "ServerNoFill"

    .line 159
    invoke-virtual {v5, v6, v0}, Lcom/inmobi/media/S0;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 160
    new-instance v0, Lcom/inmobi/media/K;

    .line 161
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v6, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v5, v6}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v6, 0x0

    .line 162
    invoke-direct {v0, v5, v6}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    .line 163
    :goto_e
    iget-object v5, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_2c

    iget-object v6, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v7, "Error while parsing ad response."

    invoke-virtual {v5, v6, v7, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2c
    :goto_f
    if-nez v3, :cond_2e

    .line 164
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2d

    iget-object v3, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not parse ad response:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const/16 v0, 0x843

    .line 165
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v4, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Lcom/inmobi/media/B0;->a(Ljava/util/Map;)V

    .line 168
    new-instance v0, Lcom/inmobi/media/K;

    .line 169
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v3, 0x0

    .line 170
    invoke-direct {v0, v2, v3}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw v0

    .line 171
    :cond_2e
    invoke-virtual {v3}, Lcom/inmobi/media/y0;->m()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 172
    invoke-virtual {v3}, Lcom/inmobi/media/y0;->p()Lcom/inmobi/media/h;

    move-result-object v0

    if-nez v0, :cond_30

    const/16 v0, 0x844

    .line 173
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v4, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 175
    invoke-virtual {v3}, Lcom/inmobi/media/y0;->o()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2f

    const-string v3, "isRewarded"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2f
    invoke-virtual {v1, v0}, Lcom/inmobi/media/B0;->a(Ljava/util/Map;)V

    .line 177
    new-instance v0, Lcom/inmobi/media/K;

    .line 178
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v3, 0x0

    .line 179
    invoke-direct {v0, v2, v3}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw v0

    .line 180
    :cond_30
    invoke-virtual {v3}, Lcom/inmobi/media/y0;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/media/B0;->a(Ljava/lang/Boolean;)V

    .line 181
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_31

    iget-object v2, v1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v4, "==== CHECKPOINT REACHED - PARSING COMPLETE ===="

    invoke-virtual {v0, v2, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_31
    iget-object v0, v1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_33

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->b()V

    goto :goto_10

    .line 183
    :cond_32
    invoke-virtual {v3}, Lcom/inmobi/media/y0;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/media/B0;->a(Ljava/lang/Boolean;)V

    :cond_33
    :goto_10
    return-object v3
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 4

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/media/B0;->e:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "latency"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkType"

    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v2}, Lcom/inmobi/media/Z;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "plId"

    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lkotlin/Pair;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v1}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    const-string v2, "plType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 190
    const-string v1, "isRewarded"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {p1}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "adType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/B0;->b:Lcom/inmobi/media/S0;

    const-string v1, "ServerFill"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/S0;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/media/B0;->e:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "latency"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v0}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "adType"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "networkType"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v0}, Lcom/inmobi/media/Z;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "plId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    invoke-virtual {v0}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "plType"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/B0;->b:Lcom/inmobi/media/S0;

    const-string v1, "ServerError"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/S0;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
