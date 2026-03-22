.class public Lcom/applovin/impl/d6;
.super Lcom/applovin/impl/g5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/d6$b;
    }
.end annotation


# static fields
.field private static final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final g:Lcom/applovin/impl/x2;

.field private final h:Lorg/json/JSONObject;

.field private final i:Ljava/util/List;

.field private final j:Lcom/applovin/impl/mediation/ads/a$a;

.field private final k:Ljava/lang/ref/WeakReference;

.field private final l:Ljava/lang/String;

.field private m:J

.field private final n:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/applovin/impl/d6;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/x2;Lorg/json/JSONObject;Landroid/content/Context;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TaskProcessMediationWaterfall"

    .line 6
    .line 7
    invoke-direct {p0, v1, p4, v0}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/applovin/impl/d6;->j:Lcom/applovin/impl/mediation/ads/a$a;

    .line 15
    .line 16
    new-instance p5, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {p5, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p5, p0, Lcom/applovin/impl/d6;->k:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    const-string p3, "mcode"

    .line 24
    .line 25
    const-string p5, ""

    .line 26
    .line 27
    invoke-static {p2, p3, p5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iput-object p3, p0, Lcom/applovin/impl/d6;->l:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p3, Lorg/json/JSONArray;

    .line 34
    .line 35
    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string p5, "ads"

    .line 39
    .line 40
    invoke-static {p2, p5, p3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    new-instance p5, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-direct {p5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object p5, p0, Lcom/applovin/impl/d6;->i:Ljava/util/List;

    .line 54
    .line 55
    const/4 p5, 0x0

    .line 56
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ge p5, v0, :cond_0

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {p3, p5, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/applovin/impl/d6;->i:Ljava/util/List;

    .line 68
    .line 69
    invoke-static {p1, v0, p2, p4}, Lcom/applovin/impl/v2;->a(Lcom/applovin/impl/x2;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/v2;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 p5, p5, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object p2, p0, Lcom/applovin/impl/d6;->i:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/applovin/impl/d6;->n:Ljava/util/List;

    .line 91
    .line 92
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/d6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/d6;Lcom/applovin/impl/v2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/d6;->b(Lcom/applovin/impl/v2;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/d6;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/d6;->a(Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxError;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/applovin/impl/d6;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v3, v0, Lcom/applovin/impl/d6;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/mediation/MaxNetworkResponseInfo;

    .line 6
    invoke-interface {v4}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getAdLoadState()Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    move-result-object v5

    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->FAILED_TO_LOAD:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    if-ne v5, v6, :cond_0

    .line 7
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "======FAILED AD LOADS======"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 11
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 12
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/applovin/mediation/MaxNetworkResponseInfo;

    add-int/lit8 v5, v5, 0x1

    .line 13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getMediatedNetwork()Lcom/applovin/mediation/MaxMediatedNetworkInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/applovin/mediation/MaxMediatedNetworkInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v7, "..code: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getError()Lcom/applovin/mediation/MaxError;

    move-result-object v7

    invoke-interface {v7}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v7, "..message: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getError()Lcom/applovin/mediation/MaxError;

    move-result-object v6

    invoke-interface {v6}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 19
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setAdLoadFailureInfo(Ljava/lang/String;)V

    .line 20
    :cond_3
    iget-object v2, v0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v2}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/applovin/impl/d6;->m:J

    sub-long v11, v3, v5

    .line 22
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v4, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waterfall failed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v6}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ad unit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_4
    iget-object v3, v0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    const-string v4, "mwf_info_urls"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 24
    move-object v4, v1

    check-cast v4, Lcom/applovin/impl/mediation/MaxErrorImpl;

    new-instance v5, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    iget-object v6, v0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    .line 25
    const-string/jumbo v7, "waterfall_name"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v6, v0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    .line 26
    const-string/jumbo v7, "waterfall_test_name"

    invoke-static {v6, v7, v8}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v13, v0, Lcom/applovin/impl/d6;->n:Ljava/util/List;

    iget-object v14, v0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 27
    invoke-static {v3, v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->optList(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    iget-object v3, v0, Lcom/applovin/impl/d6;->l:Ljava/lang/String;

    iget-object v6, v0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    .line 28
    const-string v7, "event_id"

    invoke-static {v6, v7, v8}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v8, 0x0

    move-object v7, v5

    move-object/from16 v16, v3

    invoke-direct/range {v7 .. v17}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;-><init>(Lcom/applovin/impl/v2;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/x2;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4, v5}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setWaterfall(Lcom/applovin/mediation/MaxAdWaterfallInfo;)V

    .line 30
    iget-object v3, v0, Lcom/applovin/impl/d6;->j:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {v3, v2, v1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/d6;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private b(Lcom/applovin/impl/v2;)V
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->a0()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/p;->c(Lcom/applovin/impl/v2;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/d6;->m:J

    sub-long v6, v0, v2

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waterfall loaded in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v3}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ad unit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v3}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    iget-object v8, p0, Lcom/applovin/impl/d6;->n:Ljava/util/List;

    iget-object v9, p0, Lcom/applovin/impl/d6;->l:Ljava/lang/String;

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;-><init>(Lcom/applovin/impl/v2;JLjava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/v2;->a(Lcom/applovin/mediation/MaxAdWaterfallInfo;)V

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/d6;->j:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lcom/applovin/impl/q2;->f(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method private synthetic b(Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/d6;->a(Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/d6;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d6;->n:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/d6;)Lcom/applovin/impl/x2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/d6;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d6;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private synthetic e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->v0()Landroid/app/Activity;

    move-result-object v0

    .line 4
    const-string v1, "MAX SDK Not Initialized In Test Mode"

    const-string v2, "Test ads may not load. Please force close and restart the app if you experience issues."

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Lcom/applovin/impl/d6;)Lcom/applovin/impl/mediation/ads/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d6;->j:Lcom/applovin/impl/mediation/ads/a$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/applovin/impl/d6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/d6;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/applovin/impl/d6;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/d6;->b(Lcom/applovin/mediation/MaxError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/applovin/impl/d6;->m:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    .line 8
    .line 9
    const-string v1, "is_testing"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/applovin/impl/c7;->c()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    sget-object v0, Lcom/applovin/impl/d6;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/applovin/impl/s9;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/applovin/impl/s9;-><init>(Lcom/applovin/impl/d6;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/applovin/impl/d6;->g:Lcom/applovin/impl/x2;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v3, p0, Lcom/applovin/impl/d6;->i:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const-string v4, " ad unit "

    .line 66
    .line 67
    if-lez v3, :cond_2

    .line 68
    .line 69
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    iget-object v3, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 76
    .line 77
    iget-object v5, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v7, "Starting waterfall for "

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, " with "

    .line 103
    .line 104
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/applovin/impl/d6;->i:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, " ad(s)..."

    .line 117
    .line 118
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v3, v5, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    new-instance v0, Lcom/applovin/impl/d6$b;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/applovin/impl/d6;->i:Ljava/util/List;

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-direct {v0, p0, v2, v1, v3}, Lcom/applovin/impl/d6$b;-><init>(Lcom/applovin/impl/d6;ILjava/util/List;Lcom/applovin/impl/d6$a;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_3

    .line 152
    .line 153
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 154
    .line 155
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v6, "No ads were returned from the server for "

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    .line 188
    .line 189
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 190
    .line 191
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    .line 195
    .line 196
    new-instance v2, Lorg/json/JSONObject;

    .line 197
    .line 198
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v3, "settings"

    .line 202
    .line 203
    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string v2, "alfdcs"

    .line 208
    .line 209
    const-wide/16 v3, 0x0

    .line 210
    .line 211
    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    iget-object v2, p0, Lcom/applovin/impl/d6;->h:Lorg/json/JSONObject;

    .line 216
    .line 217
    iget-object v7, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 218
    .line 219
    invoke-static {v2, v0, v7}, Lcom/applovin/impl/t3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_4

    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v7, "Ad Unit ID "

    .line 231
    .line 232
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v0, " is invalid or disabled.\nMake sure to use an Ad Unit ID from the MAX dashboard that is enabled and configured for the current application.\nFor more information, see https://developers.applovin.com/en/getting-started#step-2-create-an-ad-unit\nNote: New ad units cannot load ads until 30-60 minutes after they are created"

    .line 239
    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 248
    .line 249
    const/16 v7, -0x15e3

    .line 250
    .line 251
    invoke-direct {v2, v7, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 255
    .line 256
    invoke-static {v0}, Lcom/applovin/impl/k7;->c(Lcom/applovin/impl/sdk/k;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_5

    .line 261
    .line 262
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 263
    .line 264
    sget-object v7, Lcom/applovin/impl/v4;->o6:Lcom/applovin/impl/v4;

    .line 265
    .line 266
    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Ljava/lang/Boolean;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_5

    .line 277
    .line 278
    move-wide v5, v3

    .line 279
    goto :goto_0

    .line 280
    :cond_4
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 281
    .line 282
    const/16 v0, 0xcc

    .line 283
    .line 284
    const-string v7, "MAX returned no eligible ads from any mediated networks for this app/device"

    .line 285
    .line 286
    invoke-direct {v2, v0, v7}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_5
    :goto_0
    cmp-long v0, v5, v3

    .line 290
    .line 291
    if-lez v0, :cond_7

    .line 292
    .line 293
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 294
    .line 295
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 296
    .line 297
    .line 298
    move-result-wide v3

    .line 299
    new-instance v0, Lcom/applovin/impl/t9;

    .line 300
    .line 301
    invoke-direct {v0, p0, v2}, Lcom/applovin/impl/t9;-><init>(Lcom/applovin/impl/d6;Lcom/applovin/mediation/MaxError;)V

    .line 302
    .line 303
    .line 304
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 305
    .line 306
    const-string v5, "alfdcs_iba"

    .line 307
    .line 308
    invoke-static {v1, v5, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_6

    .line 317
    .line 318
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 319
    .line 320
    invoke-static {v3, v4, v1, v0}, Lcom/applovin/impl/g0;->a(JLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/g0;

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_6
    invoke-static {v0, v3, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 325
    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_7
    invoke-direct {p0, v2}, Lcom/applovin/impl/d6;->a(Lcom/applovin/mediation/MaxError;)V

    .line 329
    .line 330
    .line 331
    :goto_1
    return-void
.end method
