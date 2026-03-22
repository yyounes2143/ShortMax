.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;
.super Lcom/bytedance/sdk/openadsdk/core/so/oJ;
.source "SourceFile"


# instance fields
.field private PiB:Z

.field private QSm:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

.field private RZ:Landroid/widget/FrameLayout;

.field private Ry:Landroid/view/View;

.field private WcQ:I

.field private awB:I

.field private eZI:I

.field private oJ:F

.field private si:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->eZI:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method private BTZ()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/cFZ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/cFZ;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ex()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private Pfn()V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/tB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/tB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ex()V

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ba()V

    return-void
.end method

.method private PiB()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/jFA;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/jFA;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ex()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ba()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private ZYk()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->WcQ:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->cFZ:I

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->awB:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->so:I

    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->oJ:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->eZI:I

    const/4 v2, 0x1

    const/16 v3, 0x5dc

    const/16 v4, 0x3e8

    const/16 v5, 0x29a

    if-ne v1, v2, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/16 v1, 0x6f1

    if-eq v0, v1, :cond_0

    const v0, 0x3f0fdf3b    # 0.562f

    .line 6
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->oJ(F)V

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->BTZ()V

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->PiB()V

    return-void

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->dLZ()V

    return-void

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB()V

    return-void

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->Pfn()V

    return-void

    :cond_4
    const/16 v1, 0x232

    if-eq v0, v1, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    const v0, 0x3fe374bc    # 1.777f

    .line 12
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->oJ(F)V

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->kkU()V

    return-void

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->so()V

    return-void

    .line 15
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB()V

    return-void

    .line 16
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->cFZ()V

    return-void

    .line 17
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->jFA()V

    return-void
.end method

.method private ZYk(Landroid/view/View;)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 21
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ba:Ljava/lang/String;

    return-object p0
.end method

.method private ba()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->BWx:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private cFZ()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/ZYk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/ZYk;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ex()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ba()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private dLZ()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/Pfn;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/Pfn;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 14
    .line 15
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->hwh:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->RZ:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 26
    .line 27
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ib:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 36
    .line 37
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Qzd:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 46
    .line 47
    const v3, 0x1f00002b

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->RZ:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-direct {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->oJ(Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->getDescription()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->RZ:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    instance-of v0, v2, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 78
    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    move-object v0, v2

    .line 82
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->initData(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB$2;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    return-object p0
.end method

.method private ex()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->hwh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->RZ:Landroid/widget/FrameLayout;

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->JJ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->yQF:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->YF:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->eXp:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    const v3, 0x1f00002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->RZ:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->oJ(Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB()I

    move-result v5

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->RZ:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    .line 15
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    .line 16
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    .line 17
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    .line 18
    invoke-direct {p0, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->tB(Landroid/view/View;)V

    .line 19
    instance-of v0, v10, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    if-eqz v0, :cond_2

    .line 20
    move-object v0, v10

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->initData(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 21
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getHeightDp()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->BTZ(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    return v0
.end method

.method private getWidthDp()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->PiB(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    return v0
.end method

.method private jFA()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/ba;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/ba;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ex()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ba()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private kkU()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/so;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/so;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ex()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 25
    new-instance p1, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ba:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method private oJ(F)V
    .locals 9

    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->getHeightDp()F

    move-result v0

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->getWidthDp()F

    move-result v1

    .line 28
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->eZI:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 33
    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->eZI:I

    if-eq v1, v3, :cond_1

    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ()F

    move-result v4

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 36
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->eZI:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/16 v7, 0x14

    const/4 v8, 0x0

    if-eq v1, v3, :cond_2

    cmpl-float v1, p1, v8

    if-eqz v1, :cond_3

    cmpl-float v1, p1, v5

    if-eqz v1, :cond_3

    sub-float/2addr v2, v6

    sub-float/2addr v2, v6

    div-float/2addr v2, p1

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    .line 37
    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v0, v7

    move v1, v0

    move v7, p1

    goto :goto_1

    :cond_2
    cmpl-float v1, p1, v8

    if-eqz v1, :cond_3

    cmpl-float v1, p1, v5

    if-eqz v1, :cond_3

    sub-float/2addr v0, v6

    sub-float/2addr v0, v6

    mul-float/2addr v0, p1

    sub-float/2addr v2, v0

    div-float/2addr v2, v4

    .line 38
    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v0, p1

    move v1, v0

    move p1, v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    move p1, v7

    move v0, p1

    move v1, v0

    .line 39
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    int-to-float v3, v7

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    .line 40
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    .line 41
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    .line 42
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    .line 43
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private oJ(Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p2, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 15
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void

    .line 16
    :cond_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->oJ(Landroid/widget/ImageView;)V

    .line 17
    invoke-static {p2, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 18
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method private oJ(Landroid/widget/ImageView;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    if-eqz v0, :cond_1

    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/jFA/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/Pfn/eZI;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    :cond_1
    return-void
.end method

.method private so()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/ex;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/ex;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ex()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ba:Ljava/lang/String;

    return-object p0
.end method

.method private tB()V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/oJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WcQ/oJ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->si:Landroid/view/View;

    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ex()V

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ba()V

    return-void
.end method

.method private tB(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->QSm:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ba:Ljava/lang/String;

    .line 8
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 11
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getInteractionStyleRootView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getVideoContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->RZ:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method protected oJ(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/model/eZI;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;FIII)V
    .locals 0

    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->oJ:F

    .line 4
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->eZI:I

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    const-string p1, "fullscreen_interstitial_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ba:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->WcQ:I

    .line 8
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->awB:I

    .line 9
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->jFA:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->oJ(I)V

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->ZYk()V

    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->QSm:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 2
    .line 3
    return-void
.end method

.method public setIsMute(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->PiB:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->Ry:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 13
    .line 14
    const-string v1, "interactionStyle"

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
