.class public Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/oJ;
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/RZ$ZYk;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/Ry$oJ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/oJ;",
        "Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk<",
        "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
        ">;",
        "Lcom/bytedance/sdk/component/utils/IUZ$oJ;",
        "Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;",
        "Lcom/bytedance/sdk/openadsdk/core/widget/RZ$ZYk;",
        "Lcom/bytedance/sdk/openadsdk/core/widget/Ry$oJ;"
    }
.end annotation


# instance fields
.field BTZ:Landroid/view/View;

.field HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

.field IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

.field Id:Z

.field Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

.field Ln:Z

.field LpP:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

.field Pfn:Landroid/widget/ImageView;

.field PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

.field QSm:I

.field RZ:I

.field Ry:I

.field UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

.field WcQ:Landroid/widget/TextView;

.field private XAo:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;

.field Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field protected final ZYk:I

.field awB:Landroid/widget/TextView;

.field ba:Landroid/view/View;

.field cFZ:Landroid/view/View;

.field cY:I

.field dLZ:Landroid/widget/ImageView;

.field eZI:Landroid/widget/TextView;

.field ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

.field jFA:Landroid/view/View;

.field jr:I

.field kkU:Landroid/view/View;

.field mu:Z

.field nke:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

.field protected final oJ:I

.field private ofl:J

.field oq:Z

.field si:I

.field so:Landroid/widget/ImageView;

.field tB:Landroid/view/ViewGroup;

.field tb:Landroid/content/Context;

.field private final wd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 20
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe4

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ:I

    const/16 v0, 0xa0

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ln:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->mu:Z

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->wd:Ljava/lang/String;

    .line 8
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 10
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(Z)V

    .line 11
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    .line 12
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 13
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    .line 14
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->nke:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 15
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/16 p2, 0x8

    .line 16
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(I)V

    .line 17
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Landroid/content/Context;Landroid/view/View;)V

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex()V

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ()V

    return-void
.end method

.method private Pfn(I)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->RZ:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->QSm:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const/high16 v1, 0x43640000    # 228.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    .line 5
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->RZ:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 6
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->QSm:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private Xe()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uvK()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    :goto_0
    move v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jXJ()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ne v0, v2, :cond_2

    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    return v1
.end method

.method private ba(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->XAo:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;

    return-object p0
.end method

.method private oJ(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 7

    .line 118
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$7;

    const-string v2, "load_vast_icon_fail"

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method


# virtual methods
.method BTZ()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ln:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "embeded_ad"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "embeded_ad_landingpage"

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v0, "rewarded_video"

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    :goto_1
    move-object v7, v0

    .line 23
    move v8, v1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uZd()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const-string v0, "fullscreen_interstitial_ad"

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nip()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const-string v0, "banner_ad"

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v7, v0

    .line 50
    move v8, v2

    .line 51
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x4

    .line 58
    if-ne v0, v1, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->LpP:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 67
    .line 68
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 73
    .line 74
    invoke-direct {v0, v1, v3, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ZYk(Z)V

    .line 85
    .line 86
    .line 87
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ln:Z

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->tB(Z)V

    .line 106
    .line 107
    .line 108
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->nke:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->Pfn(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 121
    .line 122
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$1;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->LpP:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 135
    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_8

    .line 146
    .line 147
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$2;

    .line 148
    .line 149
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 150
    .line 151
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 152
    .line 153
    move-object v3, v0

    .line 154
    move-object v4, p0

    .line 155
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 159
    .line 160
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$3;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ZYk(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 174
    .line 175
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ln:Z

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->nke:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->Pfn(Z)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->LpP:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 193
    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 197
    .line 198
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 202
    .line 203
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    return-void
.end method

.method public Id()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Id:Z

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()V
    .locals 0

    .line 1
    return-void
.end method

.method public PiB()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public QSm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method RZ()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->kkU:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ:Landroid/view/View;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    return-void
.end method

.method public Ry()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->getView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method WcQ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;->oJ(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/core/widget/RZ$ZYk;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public ZYk()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->cFZ:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public ZYk(II)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-lez p1, :cond_2

    .line 8
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_3

    if-lez p2, :cond_4

    .line 9
    :cond_3
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public ZYk(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->nke:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public ZYk(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Id:Z

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public ZYk(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public ZYk(ZZ)V
    .locals 1

    .line 4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string v0, "tt_play_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string v0, "tt_stop_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public ZYk(I)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public awB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;->oJ(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public ba()V
    .locals 0

    .line 1
    return-void
.end method

.method public cFZ()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ba(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->cFZ:Landroid/view/View;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ba(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ba(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 77
    .line 78
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 79
    .line 80
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void
.end method

.method public cY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;->oJ()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public dLZ()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method eZI()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/oJ;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public ex(I)V
    .locals 1

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->cY:I

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method public ex(Z)V
    .locals 1

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ln:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    :cond_3
    return-void
.end method

.method public getVideoProgress()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ofl:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double/2addr v0, v2

    .line 35
    double-to-long v0, v0

    .line 36
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ofl:J

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->nke:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->jFA()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ofl:J

    .line 47
    .line 48
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ofl:J

    .line 49
    .line 50
    return-wide v0
.end method

.method public jFA()V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->kkU:Landroid/view/View;

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ:Landroid/view/View;

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;->oJ(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method jr()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public kkU()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public oJ()V
    .locals 2

    const/4 v0, 0x0

    .line 52
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(ZZ)V

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->RZ()V

    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result p1

    :cond_0
    if-gtz p1, :cond_1

    return-void

    .line 47
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->si:I

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->kkU()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ry:I

    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ry:I

    .line 51
    :goto_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->si:I

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ry:I

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(II)V

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(JJ)V
    .locals 0

    .line 3
    return-void
.end method

.method oJ(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sXx()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nip()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->eXp()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->nke:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->awB()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    new-instance p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ex;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ex;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 21
    :cond_3
    new-instance p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/tB;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/tB;-><init>(Landroid/content/Context;)V

    .line 22
    :goto_0
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 23
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    move-object v1, p2

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/16 v0, 0x8

    .line 26
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    .line 28
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->NX:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    .line 29
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->oo:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba:Landroid/view/View;

    .line 30
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ZMY:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->cFZ:Landroid/view/View;

    .line 31
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->rg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 32
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->MVA:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jFA:Landroid/view/View;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public oJ(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x1

    .line 125
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Id:Z

    .line 126
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    invoke-interface {p2, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 0

    .line 4
    return-void
.end method

.method public oJ(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Id:Z

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public oJ(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 123
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    invoke-interface {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    if-eq p1, p2, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI()Z

    return-void
.end method

.method oJ(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jFA:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->kkU:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jFA:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->kkU:Landroid/view/View;

    .line 36
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Zzm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    .line 37
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->sQ:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ:Landroid/view/View;

    .line 38
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->cdg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 39
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Rl:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    .line 40
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Jm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    .line 41
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Qu:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Landroid/view/View;Z)V
    .locals 0

    .line 5
    return-void
.end method

.method public oJ(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 6
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;)V
    .locals 1

    .line 43
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ()V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->XAo:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/ref/WeakReference;Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(ZZ)V

    .line 56
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Landroid/view/View;Landroid/content/Context;)V

    .line 57
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->kkU:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 58
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 59
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 60
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 62
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB()I

    move-result v2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 69
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 70
    :cond_6
    const-string p2, ""

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    const v1, 0x22000001

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;

    invoke-direct {v5, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-direct {v2, p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->ZYk(J)V

    goto :goto_1

    .line 78
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    invoke-virtual {v0, v2, v4, p1}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 79
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    const-string v2, "VAST_ICON"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catchall_0
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    if-eqz v2, :cond_a

    .line 84
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$6;

    invoke-direct {v4, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 90
    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 94
    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->UN:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 98
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    const-string v0, "VAST_TITLE"

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    :cond_f
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 104
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 105
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 107
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result p1

    const/4 p2, 0x2

    const-string p3, "tt_video_mobile_go_detail"

    if-eq p1, p2, :cond_12

    const/4 p2, 0x3

    if-eq p1, p2, :cond_12

    if-eq p1, v3, :cond_11

    const/4 p2, 0x5

    if-eq p1, p2, :cond_10

    const/16 p2, 0x8

    if-eq p1, p2, :cond_12

    .line 108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 109
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string p2, "tt_video_dial_phone"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 110
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string p2, "tt_video_download_apk"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 111
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 112
    :cond_13
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    :cond_14
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->mu:Z

    if-nez p1, :cond_15

    .line 117
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba(I)V

    :cond_15
    return-void
.end method

.method public bridge synthetic oJ(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 10
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 7
    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->mu:Z

    return-void
.end method

.method public oJ(ZZ)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method public oJ(ZZZ)V
    .locals 0

    .line 131
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method public oJ(ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;Z)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;->oJ(ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public oJ(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Id:Z

    .line 129
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public oq()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 2
    .line 3
    return v0
.end method

.method public si()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ba(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->cFZ:Landroid/view/View;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ba(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public so()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tB()Landroid/view/View;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public tB(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public tB(II)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->RZ:I

    .line 6
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->QSm:I

    return-void
.end method

.method public tB(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(I)V

    return-void
.end method

.method public tB(Z)V
    .locals 0

    .line 1
    return-void
.end method
