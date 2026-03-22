.class public Lcom/bytedance/sdk/openadsdk/core/so/cFZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/Id;

.field private ba:I

.field private final cFZ:Lcom/bytedance/sdk/openadsdk/utils/wd;

.field private ex:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

.field private oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final tB:Landroid/content/Context;


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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ba:I

    .line 14
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->tB()Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->cFZ:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 20
    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/Id;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->tB:Landroid/content/Context;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->tB:Landroid/content/Context;

    .line 41
    .line 42
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;
    .locals 3

    .line 40
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mse()Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v1

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    move-result v2

    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    :goto_0
    if-lez v2, :cond_1

    int-to-float v2, v2

    goto :goto_1

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    :goto_1
    if-lez v0, :cond_2

    int-to-float v1, v0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setExpressViewAccepted(FF)V

    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->tB:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method public static oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/so/cFZ;
    .locals 1

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private oJ(ILjava/lang/String;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ex:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/HL;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HL;-><init>()V

    const/4 v1, 0x2

    .line 15
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/Id;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ba:I

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$1;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/QSm;)V

    return-void

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/Id;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ba:I

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$2;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;J)V
    .locals 9

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ex:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    if-eqz v0, :cond_1

    .line 48
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    move-result-object v0

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->cFZ:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    move-result-wide v3

    .line 51
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;J)V

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ex:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    .line 54
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JJJ)V

    :cond_1
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JJJ)V
    .locals 15

    .line 55
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->bgF()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->ex()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    move-object v0, p0

    :try_start_1
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ba:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BnM()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BnM()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ()Lorg/json/JSONObject;

    move-result-object v3

    .line 59
    const-string v1, "tag"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-string v13, "load_ad_time"

    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$4;

    move-object v1, v14

    move-object v2, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;Lorg/json/JSONObject;JJJ)V

    move-wide/from16 p2, v11

    move-object/from16 p4, p1

    move-object/from16 p5, v10

    move-object/from16 p6, v13

    move-object/from16 p7, v14

    invoke-static/range {p2 .. p7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-object v0, p0

    :catchall_1
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 3

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BnM()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v1

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ex(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Yg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->tB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    move-result-object v1

    .line 37
    const-string v2, "material_meta"

    invoke-virtual {v1, v2, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v0, "ad_slot"

    invoke-virtual {v1, v0, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 39
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/Pfn/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/oJ$oJ;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->dLZ()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/component/utils/awB;->ex()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onAdLoad: net work response duration = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->cFZ:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "run in  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExpressAdLoadManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 25
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 p1, -0x3

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(ILjava/lang/String;)V

    .line 27
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    const/16 p1, 0x8

    .line 28
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 29
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    :cond_2
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;Lcom/bytedance/sdk/openadsdk/core/model/cY;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;J)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/common/ba;)V
    .locals 1
    .param p3    # Lcom/bytedance/sdk/openadsdk/common/ba;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->cFZ:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->Pfn()V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ba:I

    .line 9
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 11
    instance-of p2, p3, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    if-eqz p2, :cond_1

    .line 12
    check-cast p3, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->ex:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method
