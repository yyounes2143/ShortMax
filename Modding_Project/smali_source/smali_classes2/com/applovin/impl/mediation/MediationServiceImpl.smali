.class public Lcom/applovin/impl/mediation/MediationServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/MediationServiceImpl$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Lcom/applovin/impl/z4;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 18
    .line 19
    new-instance v0, Lcom/applovin/impl/z4;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/applovin/impl/z4;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->c:Lcom/applovin/impl/z4;

    .line 25
    .line 26
    new-instance p1, Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v0, "com.applovin.render_process_gone"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private synthetic a(JLcom/applovin/impl/mediation/h;Ljava/lang/String;Lcom/applovin/impl/b5;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/a5$a;ZLjava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v9, p5

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v10, v2, p1

    const-string v2, "MediationService"

    const-string v3, "\""

    const-string v4, " for Ad Unit ID: "

    if-eqz p8, :cond_1

    .line 25
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signal collection successful from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/h;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with signal: \""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p9

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p9

    :goto_0
    move-object/from16 v2, p5

    move-object v3, p3

    move-object/from16 v4, p9

    move-wide v5, p1

    move-wide v7, v10

    .line 26
    invoke-static/range {v2 .. v8}, Lcom/applovin/impl/a5;->a(Lcom/applovin/impl/b5;Lcom/applovin/impl/mediation/h;Ljava/lang/String;JJ)Lcom/applovin/impl/a5;

    move-result-object v2

    .line 27
    iget-object v3, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->c:Lcom/applovin/impl/z4;

    move-object/from16 v4, p6

    invoke-virtual {v3, v2, v9, v1, v4}, Lcom/applovin/impl/z4;->a(Lcom/applovin/impl/a5;Lcom/applovin/impl/b5;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)V

    .line 28
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-virtual/range {p5 .. p5}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "network_name"

    invoke-static {v6, v5, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    invoke-virtual/range {p5 .. p5}, Lcom/applovin/impl/h3;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "adapter_class"

    invoke-static {v6, v5, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/h;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "adapter_version"

    invoke-static {v6, v5, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "duration_ms"

    invoke-static {v6, v5, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    invoke-virtual/range {p6 .. p6}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ad_format"

    invoke-static {v5, v4, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    const-string v4, "ad_unit_id"

    invoke-static {v4, v1, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    move-result-object v1

    sget-object v4, Lcom/applovin/impl/c2;->R:Lcom/applovin/impl/c2;

    invoke-virtual {v1, v4, v3}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    move-object v1, p3

    :goto_1
    move-object/from16 v3, p7

    goto :goto_2

    .line 36
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signal collection failed from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/h;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with error message: \""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p10 .. p10}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v1, p5

    move-object v2, p3

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide v6, v10

    .line 37
    invoke-static/range {v1 .. v7}, Lcom/applovin/impl/a5;->a(Lcom/applovin/impl/b5;Lcom/applovin/impl/mediation/h;Lcom/applovin/mediation/MaxError;JJ)Lcom/applovin/impl/a5;

    move-result-object v2

    move-object v1, p3

    .line 38
    invoke-direct {p0, v2, v9, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/a5;Lcom/applovin/impl/b5;Lcom/applovin/impl/mediation/h;)V

    goto :goto_1

    .line 39
    :goto_2
    invoke-interface {v3, v2}, Lcom/applovin/impl/a5$a;->a(Lcom/applovin/impl/a5;)V

    .line 40
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/h;->a()V

    return-void
.end method

.method private a(Lcom/applovin/impl/a5;Lcom/applovin/impl/b5;Lcom/applovin/impl/mediation/h;)V
    .locals 5

    .line 98
    invoke-virtual {p1}, Lcom/applovin/impl/a5;->b()J

    move-result-wide v0

    .line 99
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{LOAD_TIME_MS}"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/h;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{ADAPTER_VERSION}"

    invoke-static {v4, v3, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/h;->i()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{SDK_VERSION}"

    invoke-static {v4, v3, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    invoke-virtual {p1}, Lcom/applovin/impl/a5;->c()Lcom/applovin/mediation/MaxError;

    move-result-object v3

    const-string v4, "serr"

    invoke-direct {p0, v4, v2, v3, p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;)V

    .line 104
    invoke-virtual {p1}, Lcom/applovin/impl/a5;->c()Lcom/applovin/mediation/MaxError;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/mediation/MaxError;)Ljava/util/Map;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network_name"

    invoke-static {v3, v2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    invoke-virtual {p2}, Lcom/applovin/impl/h3;->b()Ljava/lang/String;

    move-result-object p2

    const-string v2, "adapter_class"

    invoke-static {v2, p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/h;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "adapter_version"

    invoke-static {p3, p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "duration_ms"

    invoke-static {p3, p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    move-result-object p2

    sget-object p3, Lcom/applovin/impl/c2;->S:Lcom/applovin/impl/c2;

    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/v2;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/q4;Ljava/lang/String;)V
    .locals 3

    .line 44
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip collecting signal for failed-initialized adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/h;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediationService"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    new-instance p1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not initialize adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0x1454

    invoke-direct {p1, v0, p3}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/applovin/impl/q4;->a(Ljava/lang/Object;)Lcom/applovin/impl/q4;

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/mediation/h;Ljava/lang/String;Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;Lcom/applovin/impl/v2;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 6

    .line 23
    new-instance v5, Lcom/applovin/impl/mediation/MediationServiceImpl$b;

    invoke-direct {v5, p0, p4, p6}, Lcom/applovin/impl/mediation/MediationServiceImpl$b;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/mediation/h;->a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/v2;Landroid/app/Activity;Lcom/applovin/impl/mediation/MediationServiceImpl$b;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/q4;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;Lcom/applovin/impl/b5;Landroid/app/Activity;)V
    .locals 3

    .line 41
    invoke-virtual {p1}, Lcom/applovin/impl/q4;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collecting signal for now-initialized adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/applovin/impl/mediation/h;->a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lcom/applovin/impl/b5;Landroid/app/Activity;Lcom/applovin/impl/q4;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/applovin/impl/v2;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    const-string v1, "DID_HIDE"

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/array/ArrayService;->maybeSendAdEvent(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 78
    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->x0()Lcom/applovin/impl/j7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/j7;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->E3:Lcom/applovin/impl/v4;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string/jumbo v2, "{CUID}"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "mclose"

    invoke-direct {p0, v1, v0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/h3;)V

    .line 81
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c2;->e0:Lcom/applovin/impl/c2;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/v2;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    const-string v1, "DID_CLICKED"

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    const-string v1, "DID_CLICK"

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/array/ArrayService;->maybeSendAdEvent(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->N()Ljava/lang/String;

    move-result-object v0

    const-string v1, "click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;)V

    .line 87
    invoke-static {p2, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdRevenueListener;Lcom/applovin/mediation/MaxAd;)V

    .line 88
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->x0()Lcom/applovin/impl/j7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/j7;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/v4;->E3:Lcom/applovin/impl/v4;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const-string/jumbo v1, "{CUID}"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "mclick"

    invoke-direct {p0, v0, p2, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/h3;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;Ljava/lang/String;)V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": adapter init failed with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 20
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "MediationService"

    invoke-virtual {v0, v1, p3}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    new-instance p3, Lcom/applovin/impl/mediation/MaxErrorImpl;

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->NOT_INITIALIZED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getErrorCode()I

    move-result v0

    const-string v1, "Adapter initialization failed"

    invoke-direct {p3, v0, v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p3, p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->l()Lcom/applovin/impl/sdk/g;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/g$c;->h:Lcom/applovin/impl/sdk/g$c;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/v2;Lcom/applovin/impl/sdk/g$c;)V

    .line 58
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    const-string v1, "DID_FAIL_DISPLAY"

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/array/ArrayService;->maybeSendAdEvent(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p2, p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/v2;Z)V

    .line 61
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p3, p1, p2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/impl/z2;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_0

    .line 13
    new-instance v0, Lcom/applovin/impl/r6;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/r6;-><init>(Lcom/applovin/impl/z2;Lcom/applovin/impl/sdk/k;)V

    .line 14
    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Z)V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/z2;Lcom/applovin/mediation/MaxAdListener;)V

    .line 17
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "MediationService"

    const-string v2, "Scheduling impression for ad manually..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->processRawAdImpression(Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/z2;)V

    .line 7
    invoke-virtual {p2, p1, p3}, Lcom/applovin/impl/mediation/h;->b(Lcom/applovin/impl/v2;Landroid/app/Activity;)V

    .line 8
    invoke-direct {p0, p1, p4}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/z2;)V

    .line 10
    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/applovin/impl/mediation/h;->a(Lcom/applovin/impl/v2;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V

    .line 11
    invoke-direct {p0, p1, p6}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/z2;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/o3;->L7:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v1, Lcom/applovin/impl/mediation/p;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/applovin/impl/mediation/p;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/z2;Ljava/lang/Long;Lcom/applovin/mediation/MaxAdListener;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 50
    invoke-static {v1, p1, p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/z2;Ljava/lang/Long;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/h3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has not been displayed after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "ms. Failing ad display..."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 53
    const-string v0, "MediationService"

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 55
    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V

    .line 56
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/n;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/v2;)V
    .locals 6

    .line 63
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 64
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->G()J

    move-result-wide v1

    .line 65
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{LOAD_TIME_MS}"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v3

    invoke-virtual {p2}, Lcom/applovin/impl/h3;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/n;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/n$a;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n$a;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{SHOW_ATTEMPT_COUNT}"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n$a;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{SHOW_ATTEMPT_TIMESTAMP_MS}"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    const-string v3, "mlerr"

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;)V

    .line 71
    invoke-static {p2}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/v2;)Ljava/util/Map;

    move-result-object p2

    .line 72
    invoke-static {p1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/mediation/MaxError;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 73
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duration_ms"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/c2;->Y:Lcom/applovin/impl/c2;

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/v2;Z)V
    .locals 6

    .line 92
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    instance-of v0, p2, Lcom/applovin/impl/z2;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p2

    check-cast v0, Lcom/applovin/impl/z2;

    .line 95
    invoke-virtual {v0}, Lcom/applovin/impl/z2;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{PREVIOUS_FAILED_NETWORK_NAME}"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    const-string v1, "mierr"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;Z)V

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 97
    iget-object p3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    move-result-object p3

    sget-object v0, Lcom/applovin/impl/c2;->d0:Lcom/applovin/impl/c2;

    invoke-virtual {p3, v0, p2, p1}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;Z)V
    .locals 11

    move-object v0, p0

    .line 119
    new-instance v10, Lcom/applovin/impl/z5;

    iget-object v8, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/applovin/impl/z5;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;Lcom/applovin/impl/sdk/k;Z)V

    .line 120
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    invoke-virtual {v1, v10, v2}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/h3;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;Z)V
    .locals 8

    .line 112
    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 113
    const-string p2, ""

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lcom/applovin/impl/h3;->getPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const-string/jumbo v1, "{PLACEMENT}"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1

    .line 114
    invoke-virtual {p4}, Lcom/applovin/impl/h3;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    const-string/jumbo v1, "{CUSTOM_DATA}"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    instance-of v0, p4, Lcom/applovin/impl/v2;

    if-eqz v0, :cond_3

    .line 116
    move-object v0, p4

    check-cast v0, Lcom/applovin/impl/v2;

    if-eqz p5, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/applovin/impl/v2;->getCreativeId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string/jumbo v0, "{CREATIVE_ID}"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 118
    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;Z)V

    return-void
.end method

.method private a(J)Z
    .locals 2

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 122
    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object p2, Lcom/applovin/impl/v4;->C2:Lcom/applovin/impl/v4;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 123
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/applovin/impl/z2;)Lcom/applovin/impl/mediation/h;
    .locals 4

    .line 5
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->A()Lcom/applovin/impl/mediation/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Z)V

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    const-string v1, "MediationService"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": adapter not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There may be an integration problem with the adapter for Ad Unit ID \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/h3;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Please check if you have a supported version of that SDK integrated into your project."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find adapter for provided ad"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method public static synthetic b(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/q4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/q4;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/v2;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/v2;)V
    .locals 7

    .line 13
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    const-string v1, "DID_LOAD"

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/array/ArrayService;->maybeSendAdEvent(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->N()Ljava/lang/String;

    move-result-object v0

    const-string v1, "load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;)V

    .line 17
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 18
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->G()J

    move-result-wide v2

    .line 19
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{LOAD_TIME_MS}"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    iget-object v4, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v4

    invoke-virtual {p1}, Lcom/applovin/impl/h3;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/n;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/n$a;

    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/n$a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "{SHOW_ATTEMPT_COUNT}"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/n$a;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{SHOW_ATTEMPT_TIMESTAMP_MS}"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    invoke-direct {p0, v1, v0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/h3;)V

    .line 25
    invoke-static {p1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/v2;)Ljava/util/Map;

    move-result-object p1

    .line 26
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration_ms"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c2;->X:Lcom/applovin/impl/c2;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/v2;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lcom/applovin/mediation/MaxAd;)V

    .line 12
    invoke-virtual {p1}, Lcom/applovin/impl/h3;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public static synthetic c(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/q4;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;Lcom/applovin/impl/b5;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/q4;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;Lcom/applovin/impl/b5;Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/h;Ljava/lang/String;Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;Lcom/applovin/impl/v2;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/h;Ljava/lang/String;Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;Lcom/applovin/impl/v2;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/z2;Ljava/lang/Long;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/z2;Ljava/lang/Long;Lcom/applovin/mediation/MaxAdListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/applovin/impl/mediation/MediationServiceImpl;JLcom/applovin/impl/mediation/h;Ljava/lang/String;Lcom/applovin/impl/b5;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/a5$a;ZLjava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(JLcom/applovin/impl/mediation/h;Ljava/lang/String;Lcom/applovin/impl/b5;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/a5$a;ZLjava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public collectSignal(Lcom/applovin/impl/b5;Landroid/content/Context;Lcom/applovin/impl/a5$a;)V
    .locals 17

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    if-eqz v10, :cond_9

    .line 10
    .line 11
    if-eqz v11, :cond_8

    .line 12
    .line 13
    if-eqz v8, :cond_7

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/b5;->u()Lcom/applovin/impl/x2;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    .line 24
    .line 25
    .line 26
    move-result-object v13

    .line 27
    iget-object v0, v9, Lcom/applovin/impl/mediation/MediationServiceImpl;->c:Lcom/applovin/impl/z4;

    .line 28
    .line 29
    invoke-virtual {v0, v10, v12, v13}, Lcom/applovin/impl/z4;->b(Lcom/applovin/impl/b5;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/a5;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {v0}, Lcom/applovin/impl/a5;->a(Lcom/applovin/impl/a5;)Lcom/applovin/impl/a5;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v8, v0}, Lcom/applovin/impl/a5$a;->a(Lcom/applovin/impl/a5;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/b5;->A()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, v9, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->T()Lcom/applovin/impl/mediation/g;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v10, v0}, Lcom/applovin/impl/mediation/g;->a(Lcom/applovin/impl/h3;Z)Lcom/applovin/impl/mediation/h;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    if-eqz v14, :cond_6

    .line 58
    .line 59
    new-instance v15, Lcom/applovin/impl/q4;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "SignalCollection:"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v15, v0}, Lcom/applovin/impl/q4;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    sget-object v7, Lcom/applovin/impl/q4;->i:Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    new-instance v6, Lcom/applovin/impl/mediation/j;

    .line 92
    .line 93
    move-object v0, v6

    .line 94
    move-object/from16 v1, p0

    .line 95
    .line 96
    move-object v4, v14

    .line 97
    move-object v5, v12

    .line 98
    move-object/from16 v16, v14

    .line 99
    .line 100
    move-object v14, v6

    .line 101
    move-object/from16 v6, p1

    .line 102
    .line 103
    move-object v10, v7

    .line 104
    move-object v7, v13

    .line 105
    move-object/from16 v8, p3

    .line 106
    .line 107
    invoke-direct/range {v0 .. v8}, Lcom/applovin/impl/mediation/j;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;JLcom/applovin/impl/mediation/h;Ljava/lang/String;Lcom/applovin/impl/b5;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/a5$a;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v15, v10, v14}, Lcom/applovin/impl/q4;->a(Ljava/util/concurrent/Executor;Lcom/applovin/impl/q4$b;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/h3;->m()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    new-instance v3, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 118
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v4, "The adapter ("

    .line 125
    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v4, ") timed out collecting signal"

    .line 137
    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const/16 v4, -0x145a

    .line 146
    .line 147
    invoke-direct {v3, v4, v2}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v5, v9, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 151
    .line 152
    const-string v4, "MediationService"

    .line 153
    .line 154
    move-object v2, v15

    .line 155
    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/g6;->a(JLcom/applovin/impl/q4;Ljava/lang/Object;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 156
    .line 157
    .line 158
    instance-of v0, v11, Landroid/app/Activity;

    .line 159
    .line 160
    if-eqz v0, :cond_1

    .line 161
    .line 162
    move-object v0, v11

    .line 163
    check-cast v0, Landroid/app/Activity;

    .line 164
    .line 165
    :goto_0
    move-object/from16 v5, p1

    .line 166
    .line 167
    move-object v6, v0

    .line 168
    move-object v7, v10

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    iget-object v0, v9, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->v0()Landroid/app/Activity;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_0

    .line 177
    :goto_1
    invoke-static {v5, v12, v13}, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->a(Lcom/applovin/impl/b5;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/b5;->w()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    .line 187
    iget-object v0, v9, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, v5, v6}, Lcom/applovin/impl/mediation/f;->a(Lcom/applovin/impl/h3;Landroid/app/Activity;)Lcom/applovin/impl/q4;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    new-instance v10, Lcom/applovin/impl/mediation/k;

    .line 198
    .line 199
    move-object v0, v10

    .line 200
    move-object/from16 v1, p0

    .line 201
    .line 202
    move-object v2, v15

    .line 203
    move-object/from16 v3, v16

    .line 204
    .line 205
    move-object/from16 v5, p1

    .line 206
    .line 207
    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/k;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/q4;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;Lcom/applovin/impl/b5;Landroid/app/Activity;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v7, v10}, Lcom/applovin/impl/q4;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lcom/applovin/impl/mediation/l;

    .line 214
    .line 215
    move-object/from16 v1, v16

    .line 216
    .line 217
    invoke-direct {v0, v9, v1, v15}, Lcom/applovin/impl/mediation/l;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/q4;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v7, v0}, Lcom/applovin/impl/q4;->a(Ljava/util/concurrent/Executor;Lcom/applovin/impl/q4$a;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_2
    move-object/from16 v1, v16

    .line 226
    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/b5;->x()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    const-string v2, "MediationService"

    .line 232
    .line 233
    if-eqz v0, :cond_4

    .line 234
    .line 235
    iget-object v0, v9, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0, v5, v6}, Lcom/applovin/impl/mediation/f;->a(Lcom/applovin/impl/h3;Landroid/app/Activity;)Lcom/applovin/impl/q4;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/applovin/impl/q4;->d()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_4

    .line 250
    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/b5;->z()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-nez v3, :cond_4

    .line 256
    .line 257
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_3

    .line 262
    .line 263
    iget-object v3, v9, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 264
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v5, "Skip collecting signal for failed-initialized adapter: "

    .line 271
    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/h;->g()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v3, v2, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_3
    new-instance v1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 290
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string v3, "Could not initialize adapter: "

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/applovin/impl/q4;->a()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-direct {v1, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v15, v1}, Lcom/applovin/impl/q4;->a(Ljava/lang/Object;)Lcom/applovin/impl/q4;

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_5

    .line 326
    .line 327
    iget-object v0, v9, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 328
    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v7, "Collecting signal for adapter: "

    .line 335
    .line 336
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/h;->g()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_5
    invoke-virtual {v1, v4, v5, v6, v15}, Lcom/applovin/impl/mediation/h;->a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lcom/applovin/impl/b5;Landroid/app/Activity;Lcom/applovin/impl/q4;)V

    .line 354
    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_6
    move-object v5, v10

    .line 358
    new-instance v0, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 359
    .line 360
    const-string v1, "Could not load adapter"

    .line 361
    .line 362
    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-static {v5, v0}, Lcom/applovin/impl/a5;->a(Lcom/applovin/impl/b5;Lcom/applovin/mediation/MaxError;)Lcom/applovin/impl/a5;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-interface {v8, v0}, Lcom/applovin/impl/a5$a;->a(Lcom/applovin/impl/a5;)V

    .line 370
    .line 371
    .line 372
    :goto_2
    return-void

    .line 373
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 374
    .line 375
    const-string v1, "No callback specified"

    .line 376
    .line 377
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 382
    .line 383
    const-string v1, "No context specified"

    .line 384
    .line 385
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 390
    .line 391
    const-string v1, "No spec specified"

    .line 392
    .line 393
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw v0
.end method

.method public destroyAd(Lcom/applovin/mediation/MaxAd;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/applovin/impl/v2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Destroying "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "MediationService"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    check-cast p1, Lcom/applovin/impl/v2;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->A()Lcom/applovin/impl/mediation/h;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/h;->a()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->t()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->j()Lcom/applovin/impl/j;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->P()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/applovin/impl/j;->c(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->l()Lcom/applovin/impl/sdk/g;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lcom/applovin/impl/sdk/g$c;->g:Lcom/applovin/impl/sdk/g$c;

    .line 70
    .line 71
    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/v2;Lcom/applovin/impl/sdk/g$c;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public getAndResetCustomPostBodyData()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    return-object v0
.end method

.method public loadAd(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/i;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/applovin/mediation/MaxAdFormat;",
            "Lcom/applovin/impl/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/applovin/impl/mediation/ads/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    if-eqz p7, :cond_a

    .line 12
    .line 13
    if-eqz v9, :cond_9

    .line 14
    .line 15
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->V()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v3, "AppLovinSdk"

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v1, "Mediation provider is null. Please set the mediation provider in the AppLovinSdkInitializationConfiguration.Builder when initializing the AppLovinSDK."

    .line 30
    .line 31
    invoke-static {v3, v1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->C0()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener)."

    .line 43
    .line 44
    invoke-static {v3, v1}, Lcom/applovin/impl/sdk/o;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->K()Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->K()Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;->getAdUnitIds()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x0

    .line 67
    :goto_0
    const-string v3, "test_mode"

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const-string v4, "MediationService"

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-lez v5, :cond_5

    .line 82
    .line 83
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    if-nez v3, :cond_5

    .line 90
    .line 91
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/applovin/impl/k7;->c(Lcom/applovin/impl/sdk/k;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v5, "Ad Unit ID "

    .line 105
    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v5, " has not been initialized. When you use selective init, any ad units that you do not explicitly specify are excluded from serving ads for the current session. For more information visit our docs: https://developers.applovin.com/en/max/android/overview/advanced-settings#selective-init"

    .line 113
    .line 114
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-object v5, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 122
    .line 123
    sget-object v6, Lcom/applovin/impl/v4;->p6:Lcom/applovin/impl/v4;

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-nez v5, :cond_3

    .line 136
    .line 137
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_4

    .line 142
    .line 143
    iget-object v5, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 144
    .line 145
    invoke-virtual {v5, v4, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    .line 150
    .line 151
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v2

    .line 155
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string/jumbo v5, "uninitialized_ad_unit_id"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v6, "ad_unit_id"

    .line 174
    .line 175
    invoke-static {v6, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    iget-object v7, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 180
    .line 181
    invoke-virtual {v7}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    sget-object v8, Lcom/applovin/impl/c2;->E0:Lcom/applovin/impl/c2;

    .line 186
    .line 187
    invoke-virtual {v7, v8, v5, v6, v1}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->c()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    const/16 v5, 0x10

    .line 200
    .line 201
    if-eq v1, v5, :cond_6

    .line 202
    .line 203
    if-nez v3, :cond_6

    .line 204
    .line 205
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->j0()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v3, "05TMD"

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_6

    .line 218
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v3, "Ad unit ID provided for "

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v3, " is invalid ("

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v3, "). Expected length: "

    .line 245
    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v3, " characters.\n\nStack trace:\n"

    .line 253
    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    new-instance v3, Ljava/lang/Throwable;

    .line 258
    .line 259
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v4, v1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_6
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 277
    .line 278
    move-object v5, p3

    .line 279
    invoke-virtual {v1, p3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/mediation/MaxAdFormat;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_7

    .line 284
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v3, "Ad load failed due to disabled ad format "

    .line 291
    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v4, v1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    new-instance v1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 310
    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v4, "Disabled ad format "

    .line 317
    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    const/4 v4, -0x1

    .line 333
    invoke-direct {v1, v4, v3}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v9, p1, v1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :cond_7
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->W0()V

    .line 343
    .line 344
    .line 345
    const/4 v1, 0x1

    .line 346
    invoke-static {v9, p1, v1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdRequestListener;Ljava/lang/String;Z)V

    .line 347
    .line 348
    .line 349
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->R()Lcom/applovin/impl/mediation/e;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    if-eqz v1, :cond_8

    .line 356
    .line 357
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 358
    .line 359
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->R()Lcom/applovin/impl/mediation/e;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    move-object v2, p1

    .line 364
    move-object v3, p2

    .line 365
    move-object v4, p3

    .line 366
    move-object v5, p4

    .line 367
    move-object v6, p5

    .line 368
    move-object/from16 v7, p6

    .line 369
    .line 370
    move-object/from16 v8, p7

    .line 371
    .line 372
    move-object/from16 v9, p8

    .line 373
    .line 374
    invoke-virtual/range {v1 .. v9}, Lcom/applovin/impl/mediation/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/i;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 375
    .line 376
    .line 377
    goto :goto_2

    .line 378
    :cond_8
    iget-object v1, v0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 379
    .line 380
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->Q()Lcom/applovin/impl/mediation/d;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    move-object v2, p1

    .line 385
    move-object v3, p2

    .line 386
    move-object v4, p3

    .line 387
    move-object v5, p4

    .line 388
    move-object v6, p5

    .line 389
    move-object/from16 v7, p6

    .line 390
    .line 391
    move-object/from16 v8, p7

    .line 392
    .line 393
    move-object/from16 v9, p8

    .line 394
    .line 395
    invoke-virtual/range {v1 .. v9}, Lcom/applovin/impl/mediation/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/i;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 396
    .line 397
    .line 398
    :goto_2
    return-void

    .line 399
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 400
    .line 401
    const-string v2, "No listener specified"

    .line 402
    .line 403
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw v1

    .line 407
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 408
    .line 409
    const-string v2, "No context specified"

    .line 410
    .line 411
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw v1

    .line 415
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 416
    .line 417
    const-string v2, "No Ad Unit ID specified"

    .line 418
    .line 419
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v1
.end method

.method public loadThirdPartyMediatedAd(Ljava/lang/String;Lcom/applovin/impl/v2;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 13

    .line 1
    move-object v8, p0

    .line 2
    move-object v0, p2

    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "MediationService"

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "Loading "

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, "..."

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v1, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v3, Lcom/applovin/impl/c2;->W:Lcom/applovin/impl/c2;

    .line 51
    .line 52
    invoke-virtual {v1, v3, p2}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/v2;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->l()Lcom/applovin/impl/sdk/g;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v3, Lcom/applovin/impl/sdk/g$c;->b:Lcom/applovin/impl/sdk/g$c;

    .line 62
    .line 63
    invoke-virtual {v1, p2, v3}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/v2;Lcom/applovin/impl/sdk/g$c;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v3, "WILL_LOAD"

    .line 73
    .line 74
    invoke-virtual {v1, p2, v3}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1, p2, v3}, Lcom/applovin/impl/sdk/array/ArrayService;->maybeSendAdEvent(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->T()Lcom/applovin/impl/mediation/g;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, p2}, Lcom/applovin/impl/mediation/g;->a(Lcom/applovin/impl/h3;)Lcom/applovin/impl/mediation/h;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    invoke-static {p2}, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->a(Lcom/applovin/impl/v2;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->W()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    .line 108
    iget-object v1, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1, p2, v6}, Lcom/applovin/impl/mediation/f;->a(Lcom/applovin/impl/h3;Landroid/app/Activity;)Lcom/applovin/impl/q4;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_0
    move-object v9, v1

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->X()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    iget-object v1, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1, p2, v6}, Lcom/applovin/impl/mediation/f;->a(Lcom/applovin/impl/h3;Landroid/app/Activity;)Lcom/applovin/impl/q4;

    .line 133
    .line 134
    .line 135
    :cond_2
    const/4 v1, 0x0

    .line 136
    goto :goto_0

    .line 137
    :goto_1
    invoke-virtual {p2, v3}, Lcom/applovin/impl/v2;->a(Lcom/applovin/impl/mediation/h;)Lcom/applovin/impl/v2;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    move-object v10, p1

    .line 142
    invoke-virtual {v3, p1, v5}, Lcom/applovin/impl/mediation/h;->a(Ljava/lang/String;Lcom/applovin/impl/v2;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Lcom/applovin/impl/v2;->Z()V

    .line 146
    .line 147
    .line 148
    if-eqz v9, :cond_3

    .line 149
    .line 150
    sget-object v11, Lcom/applovin/impl/q4;->i:Ljava/util/concurrent/Executor;

    .line 151
    .line 152
    new-instance v1, Lcom/applovin/impl/mediation/m;

    .line 153
    .line 154
    invoke-direct {v1, p0, p2, v7}, Lcom/applovin/impl/mediation/m;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v11, v1}, Lcom/applovin/impl/q4;->a(Ljava/util/concurrent/Executor;Lcom/applovin/impl/q4$a;)V

    .line 158
    .line 159
    .line 160
    new-instance v12, Lcom/applovin/impl/mediation/n;

    .line 161
    .line 162
    move-object v0, v12

    .line 163
    move-object v1, p0

    .line 164
    move-object v2, v3

    .line 165
    move-object v3, p1

    .line 166
    move-object/from16 v6, p3

    .line 167
    .line 168
    move-object/from16 v7, p4

    .line 169
    .line 170
    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/mediation/n;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/h;Ljava/lang/String;Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;Lcom/applovin/impl/v2;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9, v11, v12}, Lcom/applovin/impl/q4;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_3
    new-instance v9, Lcom/applovin/impl/mediation/MediationServiceImpl$b;

    .line 178
    .line 179
    invoke-direct {v9, p0, v5, v7}, Lcom/applovin/impl/mediation/MediationServiceImpl$b;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 180
    .line 181
    .line 182
    move-object v0, v3

    .line 183
    move-object v1, p1

    .line 184
    move-object v2, v4

    .line 185
    move-object v3, v5

    .line 186
    move-object/from16 v4, p3

    .line 187
    .line 188
    move-object v5, v9

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/mediation/h;->a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/v2;Landroid/app/Activity;Lcom/applovin/impl/mediation/MediationServiceImpl$b;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v3, "Failed to load "

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v3, ": adapter not loaded"

    .line 207
    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 219
    .line 220
    const/16 v3, -0x1389

    .line 221
    .line 222
    invoke-direct {v2, v3, v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-direct {p0, p2, v2, v7}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V

    .line 226
    .line 227
    .line 228
    :goto_2
    return-void

    .line 229
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    const-string v1, "No mediated ad specified"

    .line 232
    .line 233
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0
.end method

.method public maybeFireAppKilledWhilePlayingMediatedAdPostback()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/impl/x4;->Q:Lcom/applovin/impl/x4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->b(Lcom/applovin/impl/x4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->jsonObjectFromJsonString(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v1, "timestamp_ms"

    .line 28
    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(J)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 44
    .line 45
    sget-object v2, Lcom/applovin/impl/x4;->R:Lcom/applovin/impl/x4;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->b(Lcom/applovin/impl/x4;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Long;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string v1, ""

    .line 61
    .line 62
    :goto_0
    const-string v2, "ad_info"

    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->tryToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    const-string v3, "duration_ms"

    .line 82
    .line 83
    invoke-static {v3, v1, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    sget-object v4, Lcom/applovin/impl/c2;->u0:Lcom/applovin/impl/c2;

    .line 93
    .line 94
    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "app_killed_urls"

    .line 102
    .line 103
    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 120
    .line 121
    const-string v1, "MediationService"

    .line 122
    .line 123
    const-string v2, "Unable to track app killed during mediated ad from previous run. Missing app killed tracking URLs."

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    return-void

    .line 129
    :cond_5
    const-string/jumbo v2, "user_info"

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->tryToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_2
    move-object v7, v0

    .line 143
    goto :goto_3

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/applovin/impl/t3;->c(Lcom/applovin/impl/sdk/k;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_2

    .line 151
    :goto_3
    const-string/jumbo v0, "{IMP_DURATION_MS}"

    .line 152
    .line 153
    .line 154
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v11, 0x1

    .line 159
    const-string v5, "mappk"

    .line 160
    .line 161
    const/4 v8, 0x0

    .line 162
    const/4 v9, 0x0

    .line 163
    move-object v4, p0

    .line 164
    invoke-direct/range {v4 .. v11}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;Z)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "com.applovin.render_process_gone"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->a()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of p2, p1, Lcom/applovin/impl/v2;

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    check-cast p1, Lcom/applovin/impl/v2;

    .line 28
    .line 29
    sget-object p2, Lcom/applovin/mediation/adapter/MaxAdapterError;->WEBVIEW_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p2, p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/v2;Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public processAdDisplayErrorPostbackForUserError(Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/v2;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/v2;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public processAdapterInitializationPostback(Lcom/applovin/impl/h3;JLcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string/jumbo v2, "{INIT_STATUS}"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string/jumbo v2, "{INIT_TIME_MS}"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 32
    .line 33
    invoke-direct {v1, p5}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "minit"

    .line 37
    .line 38
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/h3;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p4}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "adapter_init_status"

    .line 54
    .line 55
    invoke-static {v1, v0, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "error_message"

    .line 59
    .line 60
    invoke-static {v0, p5, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string p3, "duration_ms"

    .line 68
    .line 69
    invoke-static {p3, p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    sget-object p2, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:[I

    .line 73
    .line 74
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    aget p2, p2, p3

    .line 79
    .line 80
    packed-switch p2, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_0
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_0

    .line 94
    .line 95
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string p3, "MediationService"

    .line 102
    .line 103
    const-string p4, "Adapter init postback called while the adapter is not fully initialized."

    .line 104
    .line 105
    invoke-virtual {p2, p3, p4}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    sget-object p3, Lcom/applovin/impl/c2;->d:Lcom/applovin/impl/c2;

    .line 115
    .line 116
    const-string p4, "adapterNotInitializedForPostback"

    .line 117
    .line 118
    invoke-virtual {p2, p3, p4, p1}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_1
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    sget-object p3, Lcom/applovin/impl/c2;->Q:Lcom/applovin/impl/c2;

    .line 129
    .line 130
    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_2
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    sget-object p3, Lcom/applovin/impl/c2;->P:Lcom/applovin/impl/c2;

    .line 141
    .line 142
    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processCallbackAdImpressionPostback(Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->N()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "cimp"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdRevenueListener;Lcom/applovin/mediation/MaxAd;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    .line 30
    .line 31
    instance-of v0, p1, Lcom/applovin/impl/z2;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/applovin/impl/z2;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/applovin/impl/z2;->o0()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string/jumbo v1, "{PREVIOUS_FAILED_NETWORK_NAME}"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->x0()Lcom/applovin/impl/j7;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/applovin/impl/j7;->e()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 67
    .line 68
    sget-object v2, Lcom/applovin/impl/v4;->E3:Lcom/applovin/impl/v4;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string v0, ""

    .line 84
    .line 85
    :goto_0
    const-string/jumbo v1, "{CUID}"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v0, "mcimp"

    .line 92
    .line 93
    invoke-direct {p0, v0, p2, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/h3;)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    sget-object v0, Lcom/applovin/impl/c2;->b0:Lcom/applovin/impl/c2;

    .line 103
    .line 104
    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/v2;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public processRawAdImpression(Lcom/applovin/impl/v2;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WILL_DISPLAY"

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/array/ArrayService;->maybeSendAdEvent(Lcom/applovin/impl/v2;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->N()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "mimp"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdRevenueListener;Lcom/applovin/mediation/MaxAd;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 46
    .line 47
    sget-object v0, Lcom/applovin/impl/v4;->C4:Lcom/applovin/impl/v4;

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->Y()Lcom/applovin/impl/r3;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    sget-object v0, Lcom/applovin/impl/p3;->g:Lcom/applovin/impl/p3;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/applovin/impl/q3;->a(Lcom/applovin/impl/v2;)Lcom/applovin/impl/q3;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    iget-object v5, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/k;->L()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    sub-long/2addr v3, v5

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p2, v0, v2, v3}, Lcom/applovin/impl/r3;->a(Lcom/applovin/impl/p3;Lcom/applovin/impl/q3;Ljava/lang/Long;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    .line 92
    .line 93
    const/4 v0, 0x3

    .line 94
    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 95
    .line 96
    .line 97
    instance-of v0, p1, Lcom/applovin/impl/z2;

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/applovin/impl/z2;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/applovin/impl/z2;->j0()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string/jumbo v3, "{TIME_TO_SHOW_MS}"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/applovin/impl/z2;->o0()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string/jumbo v2, "{PREVIOUS_FAILED_NETWORK_NAME}"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->x0()Lcom/applovin/impl/j7;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/applovin/impl/j7;->e()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 147
    .line 148
    sget-object v3, Lcom/applovin/impl/v4;->E3:Lcom/applovin/impl/v4;

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_3

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_3
    const-string v0, ""

    .line 164
    .line 165
    :goto_0
    const-string/jumbo v2, "{CUID}"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v1, p2, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/h3;)V

    .line 172
    .line 173
    .line 174
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    sget-object v0, Lcom/applovin/impl/c2;->a0:Lcom/applovin/impl/c2;

    .line 181
    .line 182
    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/v2;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public processViewabilityAdImpressionPostback(Lcom/applovin/impl/e3;JLcom/applovin/impl/mediation/ads/a$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->N()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "vimp"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/v2;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p4, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdRevenueListener;Lcom/applovin/mediation/MaxAd;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance p4, Ljava/util/HashMap;

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-direct {p4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string/jumbo p3, "{VIEWABILITY_FLAGS}"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/applovin/impl/e3;->k0()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string/jumbo p3, "{USED_VIEWABILITY_TIMER}"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->x0()Lcom/applovin/impl/j7;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2}, Lcom/applovin/impl/j7;->e()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-object p3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 71
    .line 72
    sget-object v0, Lcom/applovin/impl/v4;->E3:Lcom/applovin/impl/v4;

    .line 73
    .line 74
    invoke-virtual {p3, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string p2, ""

    .line 88
    .line 89
    :goto_0
    const-string/jumbo p3, "{CUID}"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string p2, "mvimp"

    .line 96
    .line 97
    invoke-direct {p0, p2, p4, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/h3;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    sget-object p3, Lcom/applovin/impl/c2;->c0:Lcom/applovin/impl/c2;

    .line 107
    .line 108
    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/v2;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public processWaterfallInfoPostback(Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;Lcom/applovin/mediation/MaxError;JJ)V
    .locals 15
    .param p2    # Lcom/applovin/mediation/MaxError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;->getRequestParameters()Lcom/applovin/impl/x2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "ad_format"

    .line 23
    .line 24
    invoke-static {v5, v4, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    const-string v4, "ad_unit_id"

    .line 28
    .line 29
    invoke-static {v4, v1, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const-string v7, "duration_ms"

    .line 37
    .line 38
    invoke-static {v7, v6, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;->getEventId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const-string v7, "ad_event_id"

    .line 46
    .line 47
    invoke-static {v7, v6, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    invoke-static/range {p2 .. p2}, Lcom/applovin/impl/e2;->a(Lcom/applovin/mediation/MaxError;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    move-object v6, p0

    .line 60
    iget-object v7, v6, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 61
    .line 62
    invoke-virtual {v7}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    sget-object v8, Lcom/applovin/impl/c2;->Z:Lcom/applovin/impl/c2;

    .line 67
    .line 68
    invoke-virtual {v7, v8, v3}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;->getPostbackUrls()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    .line 83
    .line 84
    const/16 v3, 0x8

    .line 85
    .line 86
    invoke-direct {v11, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;->getMCode()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v7, "mcode"

    .line 94
    .line 95
    invoke-static {v7, v3, v11}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v1, v11}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v5, v1, v11}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "name"

    .line 113
    .line 114
    invoke-static {v2, v1, v11}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v3, "request_latency_ms"

    .line 122
    .line 123
    invoke-static {v3, v1, v11}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v3, "request_start_timestamp_ms"

    .line 131
    .line 132
    invoke-static {v3, v1, v11}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;->getLatencyMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string/jumbo v3, "wf_latency_ms"

    .line 144
    .line 145
    .line 146
    invoke-static {v3, v1, v11}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->f()Lcom/applovin/impl/h;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/applovin/impl/h;->e()Ljava/util/Map;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "arn_info"

    .line 158
    .line 159
    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;->getNetworkResponses()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_3

    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Lcom/applovin/mediation/MaxNetworkResponseInfo;

    .line 190
    .line 191
    invoke-interface {v3}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getMediatedNetwork()Lcom/applovin/mediation/MaxMediatedNetworkInfo;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    new-instance v5, Ljava/util/HashMap;

    .line 196
    .line 197
    const/4 v7, 0x5

    .line 198
    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 199
    .line 200
    .line 201
    move-object v7, v3

    .line 202
    check-cast v7, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;

    .line 203
    .line 204
    invoke-virtual {v7}, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;->getBCode()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    const-string v8, "bcode"

    .line 209
    .line 210
    invoke-static {v8, v7, v5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v4}, Lcom/applovin/mediation/MaxMediatedNetworkInfo;->getName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-interface {v3}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getLatencyMillis()J

    .line 221
    .line 222
    .line 223
    move-result-wide v7

    .line 224
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    const-string v7, "latency_ms"

    .line 229
    .line 230
    invoke-static {v7, v4, v5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v3}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getAdLoadState()Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    const-string v7, "load_state"

    .line 246
    .line 247
    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    invoke-interface {v3}, Lcom/applovin/mediation/MaxNetworkResponseInfo;->getError()Lcom/applovin/mediation/MaxError;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 255
    .line 256
    if-eqz v3, :cond_2

    .line 257
    .line 258
    new-instance v4, Ljava/util/HashMap;

    .line 259
    .line 260
    const/4 v7, 0x4

    .line 261
    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getCode()I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    const-string v8, "error_code"

    .line 273
    .line 274
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getMessage()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    const-string v8, "error_message"

    .line 282
    .line 283
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getMediatedNetworkErrorCode()I

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    const-string v8, "third_party_sdk_error_code"

    .line 295
    .line 296
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getMediatedNetworkErrorMessage()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    const-string v7, "third_party_sdk_error_message"

    .line 304
    .line 305
    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    const-string v3, "error_info"

    .line 309
    .line 310
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_3
    const-string v0, "ads_info"

    .line 319
    .line 320
    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;->getPostbackUrls()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    sget-object v10, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 328
    .line 329
    const/4 v13, 0x0

    .line 330
    const/4 v14, 0x0

    .line 331
    const-string v8, "mwf_info"

    .line 332
    .line 333
    const/4 v12, 0x0

    .line 334
    move-object v7, p0

    .line 335
    invoke-direct/range {v7 .. v14}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/mediation/MaxError;Lcom/applovin/impl/h3;Z)V

    .line 336
    .line 337
    .line 338
    return-void
.end method

.method public setCustomPostBodyData(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showFullscreenAd(Lcom/applovin/impl/z2;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 9

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    .line 1
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->APP_OPEN:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {p1}, Lcom/applovin/impl/v2;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No activity specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/z2;)Lcom/applovin/impl/mediation/h;

    move-result-object v5

    .line 4
    invoke-virtual {p1}, Lcom/applovin/impl/z2;->l0()J

    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Showing ad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/h3;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with delay of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediationService"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    new-instance v8, Lcom/applovin/impl/mediation/i;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/mediation/i;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    invoke-static {v8, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showFullscreenAd(Lcom/applovin/impl/z2;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 12

    move-object v8, p0

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    .line 8
    iget-object v0, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Z)V

    .line 9
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/z2;)Lcom/applovin/impl/mediation/h;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/applovin/impl/z2;->l0()J

    move-result-wide v9

    .line 11
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/applovin/impl/mediation/MediationServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/h3;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with delay of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    new-instance v11, Lcom/applovin/impl/mediation/o;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/mediation/o;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    invoke-static {v11, v9, v10}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
