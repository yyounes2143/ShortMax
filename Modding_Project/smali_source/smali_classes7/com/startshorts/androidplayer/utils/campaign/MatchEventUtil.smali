.class public final Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;
.super Ljava/lang/Object;
.source "MatchEventUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMatchEventUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MatchEventUtil.kt\ncom/startshorts/androidplayer/utils/campaign/MatchEventUtil\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,336:1\n29#2:337\n1#3:338\n*S KotlinDebug\n*F\n+ 1 MatchEventUtil.kt\ncom/startshorts/androidplayer/utils/campaign/MatchEventUtil\n*L\n223#1:337\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string p3, "af_revenue"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "af_currency"

    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "logPurchaseEvent value.toFloat() -> exception -> "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v2, "MatchEventUtil"

    .line 63
    .line 64
    invoke-virtual {v1, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :goto_0
    if-eqz p4, :cond_1

    .line 71
    .line 72
    const-string p1, "userCode"

    .line 73
    .line 74
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 82
    .line 83
    invoke-virtual {p2}, Lfk/u;->b()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const-string p3, "af_purchase"

    .line 88
    .line 89
    invoke-virtual {p1, p2, p3, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .line 15
    .line 16
    invoke-direct {v0, p3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    invoke-virtual {v0, p2, p3, p1}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    const-string p2, "userCode"

    .line 39
    .line 40
    invoke-virtual {v0, p2, p1}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "currency"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "orderId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->w()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->x()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 31
    .line 32
    const-string p2, "MatchEventUtil"

    .line 33
    .line 34
    const-string p3, "logPurchaseEvent failed -> sdkEnable is false"

    .line 35
    .line 36
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 41
    .line 42
    new-instance v3, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil$logPurchaseEvent$1;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v3, p3, p1, p2, v1}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil$logPurchaseEvent$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    const/4 v5, 0x0

    .line 50
    const-string v1, "getMatchEventUploadInfo"

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "currency"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "orderId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->w()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->x()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 31
    .line 32
    const-string p2, "MatchEventUtil"

    .line 33
    .line 34
    const-string p3, "logSubsEvent failed -> afEnable is false"

    .line 35
    .line 36
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 41
    .line 42
    new-instance v3, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil$logSubsEvent$1;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v3, p3, p1, p2, v1}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil$logSubsEvent$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    const/4 v5, 0x0

    .line 50
    const-string v1, "getMatchEventUploadInfo"

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;
    .locals 23
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "MatchEventUtil"

    .line 4
    .line 5
    const-string v2, "info"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "type"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "parseDataInfo info -> "

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "CampaignNewTag"

    .line 37
    .line 38
    invoke-virtual {v2, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 45
    .line 46
    .line 47
    const-string v5, "isCpsLaHuo"

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const-string v6, ""

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    :cond_0
    new-instance v7, Lkotlin/Pair;

    .line 62
    .line 63
    const/4 v14, 0x0

    .line 64
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v8, "deeplink"

    .line 69
    .line 70
    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v8, Lkotlin/Pair;

    .line 74
    .line 75
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v9, "af_dp"

    .line 80
    .line 81
    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v9, Lkotlin/Pair;

    .line 85
    .line 86
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v10, "adj_deep_link"

    .line 91
    .line 92
    invoke-direct {v9, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v10, Lkotlin/Pair;

    .line 96
    .line 97
    const/4 v15, 0x1

    .line 98
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v11, "adj_campaign"

    .line 103
    .line 104
    invoke-direct {v10, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    new-instance v11, Lkotlin/Pair;

    .line 108
    .line 109
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v12, "campaign"

    .line 114
    .line 115
    invoke-direct {v11, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v12, Lkotlin/Pair;

    .line 119
    .line 120
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v13, "af_ad"

    .line 125
    .line 126
    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v13, Lkotlin/Pair;

    .line 130
    .line 131
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v15, "deep_link_value"

    .line 136
    .line 137
    invoke-direct {v13, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    filled-new-array/range {v7 .. v13}, [Lkotlin/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const/4 v9, -0x1

    .line 153
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_14

    .line 158
    .line 159
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lkotlin/Pair;

    .line 164
    .line 165
    invoke-virtual {v0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    check-cast v10, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljava/lang/Number;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-lez v9, :cond_2

    .line 182
    .line 183
    goto/16 :goto_d

    .line 184
    .line 185
    :cond_2
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_13

    .line 190
    .line 191
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    if-nez v11, :cond_13

    .line 200
    .line 201
    const-string v11, "shortid"

    .line 202
    .line 203
    if-nez v0, :cond_5

    .line 204
    .line 205
    :try_start_1
    invoke-static {v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    if-eqz v11, :cond_3

    .line 221
    .line 222
    invoke-static {v11}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    goto :goto_2

    .line 231
    :catch_0
    move-exception v0

    .line 232
    move-object v11, v2

    .line 233
    :goto_1
    const/4 v12, 0x1

    .line 234
    goto/16 :goto_9

    .line 235
    .line 236
    :cond_3
    move-object v11, v2

    .line 237
    :goto_2
    :try_start_2
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-eqz v0, :cond_4

    .line 242
    .line 243
    invoke-static {v0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    goto :goto_3

    .line 252
    :catch_1
    move-exception v0

    .line 253
    goto :goto_1

    .line 254
    :cond_4
    move-object v0, v2

    .line 255
    :goto_3
    const/4 v12, 0x1

    .line 256
    goto/16 :goto_a

    .line 257
    .line 258
    :cond_5
    :try_start_3
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    const-string v0, "_"

    .line 262
    .line 263
    filled-new-array {v0}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v16

    .line 267
    const/16 v19, 0x6

    .line 268
    .line 269
    const/16 v20, 0x0

    .line 270
    .line 271
    const/16 v17, 0x0

    .line 272
    .line 273
    const/16 v18, 0x0

    .line 274
    .line 275
    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    move-object v12, v0

    .line 280
    check-cast v12, Ljava/lang/Iterable;

    .line 281
    .line 282
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 290
    const/4 v15, 0x2

    .line 291
    if-eqz v13, :cond_7

    .line 292
    .line 293
    :try_start_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v13

    .line 297
    move-object v8, v13

    .line 298
    check-cast v8, Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {v8, v11, v14, v15, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 304
    if-eqz v8, :cond_6

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_7
    move-object v13, v2

    .line 308
    :goto_4
    :try_start_5
    move-object/from16 v16, v13

    .line 309
    .line 310
    check-cast v16, Ljava/lang/String;

    .line 311
    .line 312
    check-cast v0, Ljava/lang/Iterable;

    .line 313
    .line 314
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 322
    if-eqz v8, :cond_9

    .line 323
    .line 324
    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    move-object v11, v8

    .line 329
    check-cast v11, Ljava/lang/String;

    .line 330
    .line 331
    invoke-static {v11, v5, v14, v15, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 335
    if-eqz v11, :cond_8

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_9
    move-object v8, v2

    .line 339
    :goto_5
    :try_start_7
    move-object v0, v8

    .line 340
    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 341
    .line 342
    const-string v8, "-"

    .line 343
    .line 344
    if-eqz v16, :cond_b

    .line 345
    .line 346
    :try_start_8
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    .line 347
    .line 348
    .line 349
    move-result v11

    .line 350
    if-nez v11, :cond_a

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_a
    filled-new-array {v8}, [Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v17

    .line 357
    const/16 v20, 0x6

    .line 358
    .line 359
    const/16 v21, 0x0

    .line 360
    .line 361
    const/16 v18, 0x0

    .line 362
    .line 363
    const/16 v19, 0x0

    .line 364
    .line 365
    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 370
    .line 371
    .line 372
    move-result v12

    .line 373
    const/4 v13, 0x1

    .line 374
    if-le v12, v13, :cond_b

    .line 375
    .line 376
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    check-cast v11, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_b
    :goto_6
    move-object v11, v2

    .line 384
    :goto_7
    if-eqz v0, :cond_c

    .line 385
    .line 386
    :try_start_9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 387
    .line 388
    .line 389
    move-result v12

    .line 390
    if-nez v12, :cond_d

    .line 391
    .line 392
    :cond_c
    const/4 v12, 0x1

    .line 393
    goto :goto_8

    .line 394
    :cond_d
    filled-new-array {v8}, [Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v18

    .line 398
    const/16 v21, 0x6

    .line 399
    .line 400
    const/16 v22, 0x0

    .line 401
    .line 402
    const/16 v19, 0x0

    .line 403
    .line 404
    const/16 v20, 0x0

    .line 405
    .line 406
    move-object/from16 v17, v0

    .line 407
    .line 408
    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 413
    .line 414
    .line 415
    move-result v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 416
    const/4 v12, 0x1

    .line 417
    if-le v8, v12, :cond_e

    .line 418
    .line 419
    :try_start_a
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    check-cast v0, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 424
    .line 425
    goto :goto_a

    .line 426
    :catch_2
    move-exception v0

    .line 427
    goto :goto_9

    .line 428
    :cond_e
    :goto_8
    move-object v0, v2

    .line 429
    goto :goto_a

    .line 430
    :catch_3
    move-exception v0

    .line 431
    const/4 v12, 0x1

    .line 432
    move-object v11, v2

    .line 433
    :goto_9
    sget-object v8, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 434
    .line 435
    new-instance v13, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    const-string v15, "parse field "

    .line 441
    .line 442
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v10, " failed: "

    .line 449
    .line 450
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v8, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto :goto_8

    .line 468
    :goto_a
    if-eqz v11, :cond_11

    .line 469
    .line 470
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 471
    .line 472
    .line 473
    move-result v8

    .line 474
    if-nez v8, :cond_f

    .line 475
    .line 476
    goto :goto_c

    .line 477
    :cond_f
    invoke-static {v11}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    if-eqz v8, :cond_10

    .line 482
    .line 483
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 484
    .line 485
    .line 486
    move-result v8

    .line 487
    goto :goto_b

    .line 488
    :cond_10
    const/4 v8, -0x1

    .line 489
    :goto_b
    if-lez v8, :cond_11

    .line 490
    .line 491
    move v9, v8

    .line 492
    :cond_11
    :goto_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 493
    .line 494
    .line 495
    move-result v8

    .line 496
    if-eqz v8, :cond_1

    .line 497
    .line 498
    if-eqz v0, :cond_1

    .line 499
    .line 500
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 501
    .line 502
    .line 503
    move-result v8

    .line 504
    if-nez v8, :cond_12

    .line 505
    .line 506
    goto/16 :goto_0

    .line 507
    .line 508
    :cond_12
    move-object v6, v0

    .line 509
    goto/16 :goto_0

    .line 510
    .line 511
    :cond_13
    const/4 v12, 0x1

    .line 512
    goto/16 :goto_0

    .line 513
    .line 514
    :cond_14
    :goto_d
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 515
    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    const-string v3, "parseAfDataInfo result -> finalShortId("

    .line 522
    .line 523
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v3, "), finalCpsActive("

    .line 530
    .line 531
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const/16 v3, 0x29

    .line 538
    .line 539
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    if-lez v9, :cond_15

    .line 550
    .line 551
    new-instance v2, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 552
    .line 553
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 554
    .line 555
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v16

    .line 559
    const/16 v18, -0x1

    .line 560
    .line 561
    const-string v19, ""

    .line 562
    .line 563
    const-string v17, ""

    .line 564
    .line 565
    move-object v15, v2

    .line 566
    move/from16 v20, v9

    .line 567
    .line 568
    invoke-direct/range {v15 .. v20}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 569
    .line 570
    .line 571
    goto :goto_e

    .line 572
    :cond_15
    const-string v0, "true"

    .line 573
    .line 574
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_16

    .line 579
    .line 580
    new-instance v2, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 581
    .line 582
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 583
    .line 584
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    const-string v7, ""

    .line 589
    .line 590
    const/4 v8, -0x1

    .line 591
    const-string v5, ""

    .line 592
    .line 593
    const/4 v6, -0x1

    .line 594
    move-object v3, v2

    .line 595
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 596
    .line 597
    .line 598
    :cond_16
    :goto_e
    return-object v2

    .line 599
    :catch_4
    move-exception v0

    .line 600
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 601
    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    const-string v5, "parseDataInfo json error: "

    .line 608
    .line 609
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v3, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    return-object v2
.end method

.method public final j(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_d

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_9

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "parseAfDataInfo info -> "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "CampaignNewTag"

    .line 32
    .line 33
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    const-string v1, "_"

    .line 37
    .line 38
    filled-new-array {v1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v6, 0x6

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    move-object v2, p1

    .line 47
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    move-object v1, p1

    .line 52
    check-cast v1, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v3, 0x2

    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object v5, v2

    .line 71
    check-cast v5, Ljava/lang/String;

    .line 72
    .line 73
    const-string v6, "shortid"

    .line 74
    .line 75
    invoke-static {v5, v6, v4, v3, v0}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-object v3, v0

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_2
    move-object v2, v0

    .line 86
    :goto_0
    move-object v5, v2

    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    check-cast p1, Ljava/lang/Iterable;

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v2, v1

    .line 106
    check-cast v2, Ljava/lang/String;

    .line 107
    .line 108
    const-string v6, "isCpsLaHuo"

    .line 109
    .line 110
    invoke-static {v2, v6, v4, v3, v0}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    move-object v1, v0

    .line 118
    :goto_1
    move-object p1, v1

    .line 119
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    const-string v1, "-"

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    :try_start_1
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    const/4 v9, 0x6

    .line 138
    const/4 v10, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    const/4 v8, 0x0

    .line 141
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-le v4, v2, :cond_6

    .line 150
    .line 151
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    :goto_2
    move-object v3, v0

    .line 159
    :goto_3
    if-eqz p1, :cond_8

    .line 160
    .line 161
    :try_start_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_7

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    const/4 v10, 0x6

    .line 173
    const/4 v11, 0x0

    .line 174
    const/4 v8, 0x0

    .line 175
    const/4 v9, 0x0

    .line 176
    move-object v6, p1

    .line 177
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-le v1, v2, :cond_8

    .line 186
    .line 187
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :catch_1
    :cond_8
    :goto_4
    move-object p1, v0

    .line 195
    :goto_5
    if-eqz v3, :cond_b

    .line 196
    .line 197
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_9

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_9
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-eqz v1, :cond_a

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    :goto_6
    move v7, v1

    .line 215
    goto :goto_7

    .line 216
    :cond_a
    const/4 v1, -0x1

    .line 217
    goto :goto_6

    .line 218
    :goto_7
    if-lez v7, :cond_b

    .line 219
    .line 220
    new-instance p1, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 221
    .line 222
    const/4 v5, -0x1

    .line 223
    const-string v6, ""

    .line 224
    .line 225
    const-string v3, ""

    .line 226
    .line 227
    const-string v4, ""

    .line 228
    .line 229
    move-object v2, p1

    .line 230
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    return-object p1

    .line 234
    :cond_b
    :goto_8
    if-eqz p1, :cond_d

    .line 235
    .line 236
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_c

    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_c
    const-string v1, "true"

    .line 244
    .line 245
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-eqz p1, :cond_d

    .line 250
    .line 251
    new-instance p1, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 252
    .line 253
    const-string v5, ""

    .line 254
    .line 255
    const/4 v6, -0x1

    .line 256
    const-string v2, ""

    .line 257
    .line 258
    const-string v3, ""

    .line 259
    .line 260
    const/4 v4, -0x1

    .line 261
    move-object v1, p1

    .line 262
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    return-object p1

    .line 266
    :cond_d
    :goto_9
    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "userCode"

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/adjust/sdk/Adjust;->addGlobalCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "deviceId"

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/adjust/sdk/Adjust;->addGlobalCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pushToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/adjust/sdk/Adjust;->setPushToken(Ljava/lang/String;Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
