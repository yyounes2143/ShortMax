.class public Lcom/bytedance/sdk/openadsdk/core/tB/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/tB/oJ$oJ;
    }
.end annotation


# instance fields
.field private BTZ:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;

.field private Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

.field private final PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private RZ:J

.field private final Ry:Landroid/view/View$OnAttachStateChangeListener;

.field private WcQ:Z

.field protected ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final awB:I

.field private final ba:Landroid/content/Context;

.field private cFZ:J

.field private dLZ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

.field private final eZI:I

.field private ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private jFA:Z

.field private kkU:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

.field protected oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

.field private si:I

.field private final so:Z

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "banner_ad"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->WcQ:Z

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->awB:I

    .line 24
    .line 25
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->eZI:I

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->si:I

    .line 29
    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Ry:Landroid/view/View$OnAttachStateChangeListener;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ba:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->BTZ:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;

    .line 44
    .line 45
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->WcQ:Z

    .line 46
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 48
    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->so:Z

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->jFA:Z

    .line 53
    .line 54
    return-void
.end method

.method private BTZ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->Pfn()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    return-object p0
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 6

    .line 10
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 13
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 15
    :goto_1
    const-string v0, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ZYk(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method

.method private ZYk(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 9
    :goto_0
    const-string p2, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->jFA:Z

    return p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->kkU()V

    return-void
.end method

.method private dLZ()Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V

    return-object v0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->WcQ:Z

    return p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Lcom/bytedance/sdk/openadsdk/core/so/QSm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    return-object p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ba:Landroid/content/Context;

    return-object p0
.end method

.method private kkU()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->BTZ()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->si:I

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->si:I

    return p1
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ba:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private oJ(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/cFZ;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 80
    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/core/cFZ;

    if-eqz v3, :cond_1

    .line 81
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/cFZ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 17
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->WcQ:Z

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/tB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Ry:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->WcQ:Z

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Ry:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    .line 28
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_0

    .line 29
    const-string p5, "dynamic_show_type"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getDynamicShowType()I

    move-result v0

    invoke-virtual {p4, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_1

    .line 31
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    const-string p5, "width"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    const-string p5, "height"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string p5, "alpha"

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2, p5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catchall_0
    :try_start_2
    const-string p5, "root_view"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    invoke-static {p3, p2, p4}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 37
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    const-string p2, "PAGBannerAdImpl"

    const-string p4, "onShowFun json error"

    invoke-static {p2, p4}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    if-eqz p2, :cond_2

    .line 40
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result p4

    invoke-interface {p2, p1, p4}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onAdShow(Landroid/view/View;I)V

    .line 41
    :cond_2
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->JC()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 42
    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 9
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/so/QSm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 45
    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 46
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Xe;->oJ()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ()Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    move-result-object v5

    .line 50
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setClosedListenerKey(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$2;

    invoke-direct {v0, p0, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/ZYk/tB;)V

    .line 53
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->so:Z

    const/4 v6, 0x1

    if-nez v0, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/cFZ;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cFZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ba:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->BTZ:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ()Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/cFZ;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    move-object v7, v0

    .line 57
    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->setAdType(I)V

    .line 58
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->setCallback(Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->BTZ:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ()Z

    move-result v7

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move v3, v7

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/Rl;->oJ(Landroid/view/ViewGroup;ZIZLcom/bytedance/sdk/openadsdk/utils/Rl$ZYk;Ljava/util/List;)V

    const/4 v7, 0x0

    .line 60
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ba:Landroid/content/Context;

    .line 62
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v0, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/so/jFA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;)V

    .line 64
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 66
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 67
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/so/jFA;)V

    .line 68
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/so;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ba:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/so/so;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;)V

    .line 70
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V

    .line 71
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    if-eqz v2, :cond_4

    .line 73
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->getVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;)V

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 75
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/so/so;)V

    .line 76
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->so:Z

    if-nez v0, :cond_5

    .line 77
    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->setNeedCheckingShow(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method

.method private oJ(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tjr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Id()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(Z)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PLU()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/wd;)V

    .line 25
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$oJ;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$oJ;-><init>(ZLcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->jFA:Z

    return p1
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method


# virtual methods
.method public Pfn()V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    return-void
.end method

.method public ZYk()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    return v0
.end method

.method public ba()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->si:I

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ex()V

    return-void
.end method

.method public cFZ()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ba()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Ry:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public ex()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ:J

    return-void
.end method

.method public jFA()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->oJ()V

    :cond_0
    return-void
.end method

.method public oJ()Landroid/view/View;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ba:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    return-object v0
.end method

.method public oJ(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->setCurrentIndex(I)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionCallback;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/so;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/so;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/so;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/so;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;)V
    .locals 6

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->RZ:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 84
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->RZ:J

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$8;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public so()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->ZYk()V

    :cond_0
    return-void
.end method

.method public tB()Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
