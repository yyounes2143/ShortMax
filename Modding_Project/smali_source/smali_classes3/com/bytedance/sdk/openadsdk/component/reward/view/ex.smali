.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;
.super Lcom/bytedance/sdk/openadsdk/core/so/QSm;
.source "SourceFile"


# static fields
.field public static oJ:F = 100.0f


# instance fields
.field private final Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

.field private ba:F

.field private cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

.field public ex:I

.field tB:Lcom/bytedance/sdk/openadsdk/core/so/si;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    iget-boolean v5, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 8
    .line 9
    const/4 v7, 0x1

    .line 10
    xor-int/lit8 v6, v0, 0x1

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p3

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V

    .line 16
    .line 17
    .line 18
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ex:I

    .line 19
    .line 20
    const/high16 p2, -0x40800000    # -1.0f

    .line 21
    .line 22
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ba:F

    .line 23
    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setVideoBusiness(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private PiB()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/ZYk/tB;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    return-object p0
.end method

.method private ex(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->Pfn()D

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ba()D

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->cFZ()D

    move-result-wide v4

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->so()D

    move-result-wide v6

    .line 5
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {v8, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    double-to-float v8, v6

    invoke-static {v3, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    const/16 v7, 0xa

    const/4 v10, 0x7

    if-eqz v6, :cond_1

    cmpl-double v4, v4, v8

    if-nez v4, :cond_2

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v4

    if-eq v4, v10, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v4

    if-eq v4, v7, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v4

    if-eq v4, v10, :cond_3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v4

    if-ne v4, v7, :cond_5

    :cond_3
    instance-of v4, p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    if-eqz v4, :cond_5

    .line 11
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;->awB()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 13
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_6

    .line 16
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17
    :cond_6
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 18
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 19
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 20
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 22
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ex(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    return-void
.end method

.method private tB(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 9

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;->eZI()Landroid/widget/FrameLayout;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v6

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Ry()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v6

    :cond_2
    :goto_1
    move v7, v0

    goto :goto_2

    :cond_3
    move v7, v0

    move p1, v6

    .line 7
    :goto_2
    new-instance v8, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    move-object v0, v8

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;IZLandroid/widget/FrameLayout;)V

    iput-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(ZLcom/bytedance/sdk/openadsdk/BTZ/ba;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ()V

    .line 11
    const-string v0, "TTAD.FRExpressView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initPlayable success mute = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isCurrentScene->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isMute = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ex()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Pfn()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->Pfn()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ(I)V

    .line 10
    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public ZYk()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ZYk()V

    :cond_0
    return-void
.end method

.method public ZYk(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ZYk(I)V

    :cond_0
    return-void
.end method

.method public ZYk(Lorg/json/JSONObject;)Z
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)Z

    move-result p1

    return p1
.end method

.method public ba()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ba()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected cFZ()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->awB:Z

    .line 3
    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getWebView()Lcom/bytedance/sdk/component/jFA/ba;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->PiB()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$1;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public dLZ()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dLZ()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->jFA()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ba:F

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ba:F

    .line 38
    .line 39
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(FFLandroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public ex()J
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ex()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBackupContainerBackgroundView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oq()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->tB:Lcom/bytedance/sdk/openadsdk/core/so/si;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/si;->getBackupContainerBackgroundView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getVideoFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oq()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->tB:Lcom/bytedance/sdk/openadsdk/core/so/si;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/si;->getVideoContainer()Landroid/widget/FrameLayout;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    return-object v0
.end method

.method protected jFA()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public kkU()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Ry()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ()V

    :cond_0
    return-void
.end method

.method public oJ(I)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(I)V

    :cond_0
    return-void
.end method

.method public oJ(ILcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(ILcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    :cond_0
    return-void
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(JJ)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(JJ)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ba()V

    return-void

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/ZYk/ex<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;",
            ")V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)Lcom/bytedance/sdk/openadsdk/core/UN;

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    .line 10
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ex:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->tB(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    .line 13
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 15
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public oJ(ZLjava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(ZLjava/lang/String;)V

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->setSoundMute(Z)V

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)Z
    .locals 1

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public setExpressVideoListenerProxy(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    .line 2
    .line 3
    return-void
.end method

.method public setSoundMute(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setSoundMute(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected so()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 18
    .line 19
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public tB()J
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->tB()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected tB(I)Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;
    .locals 2

    .line 14
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tB(I)Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 16
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;->ZYk:I

    :cond_0
    return-object p1
.end method
