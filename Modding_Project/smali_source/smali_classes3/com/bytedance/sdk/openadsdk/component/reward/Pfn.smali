.class public Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$oJ;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$tB;
    }
.end annotation


# static fields
.field private static volatile oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private Pfn:Lcom/bytedance/sdk/component/so/so;

.field private final ZYk:Landroid/content/Context;

.field private final ba:Lcom/bytedance/sdk/component/utils/HL$oJ;

.field private final ex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$tB;",
            ">;"
        }
    .end annotation
.end field

.field private final tB:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ex:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$2;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ba:Lcom/bytedance/sdk/component/utils/HL$oJ;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->tB()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static ZYk()I
    .locals 2

    .line 15
    const-string v0, "ivrv_load_ad_cache_strategy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)Lcom/bytedance/sdk/component/so/so;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->Pfn:Lcom/bytedance/sdk/component/so/so;

    return-object p0
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/HL;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HL;-><init>()V

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->tB:I

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->dLZ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isExpressAd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    :cond_0
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 7
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const/16 v3, 0x8

    invoke-interface {v1, p1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/QSm;)V

    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 9

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/HL;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/model/HL;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, v6, Lcom/bytedance/sdk/openadsdk/core/model/HL;->tB:I

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->dLZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 13
    iput v0, v6, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 14
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object v7

    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    const/16 p2, 0x8

    invoke-interface {v7, p1, v6, p2, v8}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/QSm;)V

    return-void
.end method

.method private ex()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ba:Lcom/bytedance/sdk/component/utils/HL$oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Lcom/bytedance/sdk/component/utils/HL$oJ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private ex(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Ljava/lang/String;)V

    return-void
.end method

.method private ex(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/HL;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/model/HL;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, v6, Lcom/bytedance/sdk/openadsdk/core/model/HL;->tB:I

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->dLZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 6
    iput v0, v6, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 7
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object v7

    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$8;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    const/16 p2, 0x8

    invoke-interface {v7, p1, v6, p2, v8}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/component/so/so;)Lcom/bytedance/sdk/component/so/so;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->Pfn:Lcom/bytedance/sdk/component/so/so;

    return-object p1
.end method

.method public static oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;
    .locals 2

    .line 6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    if-nez v0, :cond_1

    .line 7
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 11
    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 10

    .line 20
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    .line 21
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 22
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    if-nez v3, :cond_0

    .line 23
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->ZYk()V

    :cond_2
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 27
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result v2

    if-nez v2, :cond_3

    .line 29
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V

    .line 30
    :cond_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$oJ;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    const/4 v8, 0x1

    move-object v3, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Z)V

    const/4 p3, 0x0

    invoke-direct {v2, v9, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;)V

    move p3, v0

    .line 31
    :goto_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_4

    .line 32
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 33
    invoke-direct {p0, v3, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;)V

    .line 34
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 35
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 36
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object p3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)V

    invoke-virtual {p3, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V
    .locals 2

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;

    invoke-direct {v1, p0, p5, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p3, :cond_0

    .line 39
    invoke-interface {p3, p4}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$tB;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ex:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ex(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 41
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    move-result-object v1

    .line 43
    const-string v2, "material_meta"

    invoke-virtual {v1, v2, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string p1, "ad_slot"

    invoke-virtual {v1, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;

    invoke-direct {p1, p0, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;)V

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/Pfn/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/oJ$oJ;)V

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 5

    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ()Lcom/bytedance/sdk/openadsdk/core/model/jr;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->eZI()I

    move-result v1

    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-ge v0, v1, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$9;

    invoke-direct {v4, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;I)V

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 14

    if-nez p4, :cond_0

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/PiB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/PiB/oJ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/PiB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 48
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$oJ;

    move-object v9, p0

    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Z)V

    const/4 v1, 0x0

    move-object v10, p1

    invoke-direct {v0, v7, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    const/4 v1, 0x0

    move v11, v1

    .line 50
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 51
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 52
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v2

    const/16 v13, 0x2b

    if-nez v11, :cond_1

    if-ne v2, v13, :cond_1

    .line 53
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba(I)V

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object v8, v0

    .line 54
    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;)V

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v2

    if-ne v2, v13, :cond_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 62
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object v1

    .line 64
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ex:I

    if-ne v1, v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Ry;->ex(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$tB;

    invoke-direct {p3, p2, p4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$tB;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$tB;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p6, :cond_1

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 68
    :goto_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 69
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    move-result-object v0

    .line 72
    const-string v2, "material_meta"

    invoke-virtual {v0, v2, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string p2, "ad_slot"

    invoke-virtual {v0, p2, p4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$10;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v5, p5

    move-object v6, p4

    move-object v7, p1

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$10;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;)V

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/Pfn/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/oJ$oJ;)V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_3
    if-eqz p5, :cond_5

    .line 75
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object p2

    invoke-virtual {p2, p4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    goto :goto_2

    :cond_4
    if-eqz p5, :cond_5

    .line 76
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object p2

    invoke-virtual {p2, p4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ex:Ljava/util/List;

    return-object p0
.end method

.method private tB()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ba:Lcom/bytedance/sdk/component/utils/HL$oJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Lcom/bytedance/sdk/component/utils/HL$oJ;Landroid/content/Context;)V

    return-void
.end method

.method private tB(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->ZYk(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/HL;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HL;-><init>()V

    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->tB:I

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->dLZ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isExpressAd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    :cond_1
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 8
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$3;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const/16 v3, 0x8

    invoke-interface {v1, p1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    return-void
.end method

.method private tB(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 3

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->ZYk(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ex(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->Pfn:Lcom/bytedance/sdk/component/so/so;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->oJ()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->Pfn:Lcom/bytedance/sdk/component/so/so;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->Pfn:Lcom/bytedance/sdk/component/so/so;

    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ex()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    .line 16
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->tB(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    return-void

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->tB(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method
