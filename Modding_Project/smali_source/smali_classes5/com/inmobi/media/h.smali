.class public Lcom/inmobi/media/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLICK_BEACON:Ljava/lang/String; = "click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/inmobi/media/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_ALLOW_AUTO_REDIRECTION:Z = false

.field public static final IMPRESSION_BEACON:Ljava/lang/String; = "impression"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INVALID_AD_EXPIRY:J = -0x1L

.field public static final LOAD_AD_TOKEN_URL:Ljava/lang/String; = "load_ad_token_url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_AD_TOKEN_URL_FAILURE:Ljava/lang/String; = "load_ad_token_url_failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "h"

.field public static final WIN_BEACON:Ljava/lang/String; = "win_beacon"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final adAuctionMeta:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private adContent:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final adMetaInfo$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private adQualityControl:Lcom/inmobi/adquality/models/AdQualityControl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private adType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final allowAutoRedirection:Z

.field private assetUrls:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contextData:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private features:Lcom/inmobi/media/r0;
    .annotation runtime Lcom/inmobi/media/Z4;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final impressionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPreloadWebView:Z

.field private landingPageParams:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mExpiryDurationInMillis:J

.field private mInsertionTimestampInMillis:J

.field private markupType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final metaInfo:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pubContent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sf:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trackers:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trackingInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inmobi/ads/core/TrackingInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transaction:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private webVast:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/h;->Companion:Lcom/inmobi/media/f;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/media/h;->webVast:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/inmobi/media/h;->impressionId:Ljava/lang/String;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/h;->trackingInfo:Ljava/util/List;

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    .line 6
    iput-object v0, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    .line 7
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/inmobi/media/g;

    invoke-direct {v0, p0}, Lcom/inmobi/media/g;-><init>(Lcom/inmobi/media/h;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/h;->adMetaInfo$delegate:Lms/i;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/media/h;Lorg/json/JSONArray;)V
    .locals 2
    .param p1    # Lcom/inmobi/media/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/media/h;->webVast:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/inmobi/media/h;->impressionId:Ljava/lang/String;

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/h;->trackingInfo:Ljava/util/List;

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    .line 15
    iput-object v0, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    .line 16
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/inmobi/media/g;

    invoke-direct {v0, p0}, Lcom/inmobi/media/g;-><init>(Lcom/inmobi/media/h;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/h;->adMetaInfo$delegate:Lms/i;

    .line 18
    invoke-static {p1, p0}, Lcom/inmobi/media/p6;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iput-object p2, p0, Lcom/inmobi/media/h;->assetUrls:Lorg/json/JSONArray;

    return-void
.end method

.method public static synthetic B()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic g()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic r()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic v()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->sf:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljava/lang/Boolean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->contextData:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "enabled"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final D()Lorg/json/JSONArray;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "trackingEvents"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final E()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->webVast:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/h;->isPreloadWebView:Z

    .line 2
    .line 3
    return v0
.end method

.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Invalid Ad"

    const/4 v2, 0x1

    const-string v3, "TAG"

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/h;->impressionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Impression Id is Null"

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    sget-object v0, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "UnKnown MarkUp Type"

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/inmobi/media/r0;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/r0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/inmobi/media/h;->features:Lcom/inmobi/media/r0;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "buyerPrice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 23
    iget-object p1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "transaction"

    iget-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 25
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 26
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 0
    .param p1    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/h;->assetUrls:Lorg/json/JSONArray;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inmobi/media/h;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 10
    iput-object p1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    .line 11
    iput-object p2, p0, Lcom/inmobi/media/h;->adType:Ljava/lang/String;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    .line 13
    iput-wide p3, p0, Lcom/inmobi/media/h;->mExpiryDurationInMillis:J

    .line 14
    iget-object p1, p0, Lcom/inmobi/media/h;->sf:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 15
    invoke-static {p1}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 16
    new-instance p2, Lcom/inmobi/media/r0;

    invoke-direct {p2, p1}, Lcom/inmobi/media/r0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/inmobi/media/h;->features:Lcom/inmobi/media/r0;

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/inmobi/media/h;->isPreloadWebView:Z

    return-void
.end method

.method public final a(J)Z
    .locals 7

    .line 17
    iget-wide v0, p0, Lcom/inmobi/media/h;->mExpiryDurationInMillis:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    move-wide v5, v2

    goto :goto_0

    .line 18
    :cond_0
    iget-wide v5, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    add-long/2addr v5, v0

    :goto_0
    cmp-long v5, v5, v2

    if-nez v5, :cond_1

    .line 19
    iget-wide v0, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    iget-wide p1, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    add-long v2, p1, v0

    .line 21
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adAuctionMeta:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    const-string v1, "ctxHash"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "transaction"

    iget-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, p1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 6
    const-string p1, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/h;->trackers:Lorg/json/JSONArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/inmobi/media/h;->trackers:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 5
    :try_start_0
    iget-object v6, p0, Lcom/inmobi/media/h;->trackers:Lorg/json/JSONArray;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    const-string v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_1

    .line 9
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    return-object v2

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_5

    :cond_3
    move-object v2, v1

    goto/16 :goto_5

    .line 11
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/h;->trackingInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 12
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/inmobi/media/h;->trackingInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/core/TrackingInfo;

    .line 14
    invoke-virtual {v3}, Lcom/inmobi/ads/core/TrackingInfo;->getTrackers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_1
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/core/Trackers;

    .line 15
    :try_start_1
    invoke-virtual {v5}, Lcom/inmobi/ads/core/Trackers;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 16
    invoke-virtual {v5}, Lcom/inmobi/ads/core/Trackers;->getUrl()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {v5}, Lcom/inmobi/ads/core/Trackers;->getImExts()Ljava/util/List;

    move-result-object v5

    .line 18
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 20
    check-cast v7, Ljava/lang/String;

    .line 21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/inmobi/ads/core/TrackingInfo;->getImBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 23
    :cond_8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 24
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move-object v2, v0

    :goto_5
    return-object v2
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Lcom/inmobi/ads/AdMetaInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/h;->adMetaInfo$delegate:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdMetaInfo;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/h;->sf:Ljava/lang/String;

    return-void
.end method

.method public final e()Lcom/inmobi/adquality/models/AdQualityControl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/h;->adQualityControl:Lcom/inmobi/adquality/models/AdQualityControl;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/h;->webVast:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adType:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pubContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    const-string v2, "inmobiJson"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->contextData:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "advertisedContent"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    return-object v1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/h;->allowAutoRedirection:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j()Ljava/lang/Long;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "asPlcId"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    .line 5
    .line 6
    if-eqz v2, :cond_1

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    return-object v1

    .line 26
    :goto_1
    sget-object v2, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, "TAG"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 34
    .line 35
    new-instance v2, Lcom/inmobi/media/f2;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "event"

    .line 41
    .line 42
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-object v1
.end method

.method public final k()Lorg/json/JSONArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->assetUrls:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "baseEventUrl"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    return-object v1
.end method

.method public final m()Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->contextData:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "bidderId"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->contextData:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "casAdTypeId"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :cond_0
    return v1
.end method

.method public final o()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "creativeId"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->metaInfo:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "creativeType"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    return-object v1
.end method

.method public final q()Lcom/inmobi/media/r0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->features:Lcom/inmobi/media/r0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->impressionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->metaInfo:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v2, "landingPageParams"

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/inmobi/media/h;->landingPageParams:Lorg/json/JSONArray;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v2, v0, Lorg/json/JSONObject;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast v0, Lorg/json/JSONObject;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v2, "openMode"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v0, "optString(...)"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v1
.end method

.method public final u()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "telemetryMetadataBlob"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/inmobi/media/xb;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/h;->assetUrls:Lorg/json/JSONArray;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_1

    .line 16
    .line 17
    new-instance v4, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v5, "type"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    int-to-byte v5, v5

    .line 33
    const-string v6, "url"

    .line 34
    .line 35
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-lez v6, :cond_0

    .line 47
    .line 48
    new-instance v6, Lcom/inmobi/media/xb;

    .line 49
    .line 50
    invoke-direct {v6, v5, v4}, Lcom/inmobi/media/xb;-><init>(BLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v1

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_2
    sget-object v2, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string v3, "TAG"

    .line 65
    .line 66
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 70
    .line 71
    new-instance v2, Lcom/inmobi/media/f2;

    .line 72
    .line 73
    invoke-direct {v2, v1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "event"

    .line 77
    .line 78
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-object v0
.end method

.method public final z()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "rewards"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    const-string v3, "pubContent"

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    if-eqz v2, :cond_3

    .line 19
    .line 20
    sget-object v4, Lcom/inmobi/media/h;->Companion:Lcom/inmobi/media/f;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    new-instance v3, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v1, v3

    .line 76
    :cond_2
    return-object v1

    .line 77
    :goto_2
    sget-object v2, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    const-string v3, "TAG"

    .line 80
    .line 81
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 85
    .line 86
    new-instance v2, Lcom/inmobi/media/f2;

    .line 87
    .line 88
    invoke-direct {v2, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "event"

    .line 92
    .line 93
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    return-object v1
.end method
