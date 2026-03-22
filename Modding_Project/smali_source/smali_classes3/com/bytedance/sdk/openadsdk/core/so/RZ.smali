.class public Lcom/bytedance/sdk/openadsdk/core/so/RZ;
.super Lcom/bytedance/sdk/openadsdk/core/so/QSm;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;


# instance fields
.field private Jc:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;

.field private Ln:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

.field private LpP:J

.field Pfn:I

.field private UN:Z

.field ZYk:I

.field ba:Z

.field cFZ:Z

.field ex:Z

.field private mu:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

.field private nke:J

.field private oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

.field so:I

.field tB:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Z)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->tB:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ba:Z

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->cFZ:Z

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->so:I

    .line 25
    .line 26
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->UN:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->WcQ()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private Xe()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Ln:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 7
    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Xe:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 17
    .line 18
    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->UN:Z

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->setShouldCheckNetChange(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 31
    .line 32
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/RZ$2;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/RZ;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$ZYk;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setVideoAdLoadListener(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setVideoAdInteractionListener(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "embeded_ad"

    .line 51
    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v1, 0x1

    .line 59
    const-string v2, "open_ad"

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->tB:Z

    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dLZ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    .line 77
    .line 78
    :goto_0
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setIsAutoPlay(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setIsAutoPlay(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 97
    .line 98
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setIsAutoPlay(Z)V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    const-string v2, "initVideo"

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZLjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Pfn:I

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 134
    .line 135
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 136
    .line 137
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->ex()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catch_0
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 148
    .line 149
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/so/RZ;)Lcom/bytedance/sdk/openadsdk/core/so/eZI;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    return-object p0
.end method

.method private ZYk(JJ)V
    .locals 5

    .line 3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 4
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry:I

    if-ltz v1, :cond_2

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-long v3, v1

    cmp-long p3, v3, p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_2

    .line 5
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->QSm:Ljava/util/HashSet;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 6
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry:I

    int-to-long p3, p3

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/so/RZ$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/RZ;)V

    int-to-long p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->setCanInterruptVideoPlay(Z)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 10
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk(ILjava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->QSm:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/RZ;)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Ln:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/RZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/RZ;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/RZ;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->tB(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;Z)Z
    .locals 11

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->Pfn()D

    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ba()D

    move-result-wide v2

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->cFZ()D

    move-result-wide v4

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->so()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v4, v8

    if-eqz v10, :cond_0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_1

    .line 18
    :cond_0
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->so:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    const/16 v9, 0x9

    if-eq v8, v9, :cond_1

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_1
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {v8, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    .line 22
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    double-to-float v4, v6

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v3

    .line 23
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->dLZ()F

    move-result v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    .line 24
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->BTZ()F

    move-result v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 25
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->PiB()F

    move-result v7

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 26
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->WcQ()F

    move-result p1

    invoke-static {v7, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 28
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_2

    .line 29
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    :cond_2
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 31
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 32
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 33
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 34
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 35
    iget v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/view/View;F)V

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 39
    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->oJ(II)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/RZ;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;Z)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;Z)Z

    move-result p0

    return p0
.end method

.method private setShowAdInteractionView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->setShowAdInteractionView(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private tB(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 6
    .param p1    # Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    if-eqz v1, :cond_7

    .line 4
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->so:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_3

    :cond_1
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    if-eqz v1, :cond_3

    .line 5
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;->awB()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->so:I

    if-ne v1, v4, :cond_2

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->cFZ:Z

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ;->ba:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->cFZ:Z

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(JZZ)Z

    .line 18
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Pfn:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex(I)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Ry;->ex(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ba:Z

    if-eqz p1, :cond_6

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->Pfn()V

    .line 21
    :cond_6
    const-string p1, "embeded_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 22
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->setShowAdInteractionView(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public Pfn()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->ex()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->WcQ()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 29
    .line 30
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ(I)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 36
    .line 37
    return v0
.end method

.method public PiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->UN:Z

    .line 2
    .line 3
    return v0
.end method

.method protected WcQ()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Pfn:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Xe()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v3, -0x1

    .line 34
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getWebView()Lcom/bytedance/sdk/component/jFA/ba;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getWebView()Lcom/bytedance/sdk/component/jFA/ba;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ$1;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/RZ;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public ZYk()V
    .locals 0

    .line 1
    return-void
.end method

.method public awB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->mu:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->PiB()Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->PiB()Z

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public ba()V
    .locals 0

    .line 1
    return-void
.end method

.method public eZI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->mu:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public ex()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->LpP:J

    return-wide v0
.end method

.method ex(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->tB:Z

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v2, p1, :cond_1

    .line 4
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->tB:Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    move-result v2

    if-ne v3, p1, :cond_2

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->tB:Z

    .line 7
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v4, p1, :cond_4

    .line 8
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->tB:Z

    .line 10
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-ne v4, p1, :cond_6

    .line 11
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    :cond_5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->tB:Z

    .line 13
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    .line 14
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ex:Z

    if-nez p1, :cond_7

    .line 15
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    :cond_7
    return-void
.end method

.method public g_()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ba:Z

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Jc:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected getExpressVideoView()Lcom/bytedance/sdk/openadsdk/core/so/eZI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoAdListener()Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Jc:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Ln:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public h_()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ba:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->WcQ:Z

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Jc:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public i_()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ba:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->WcQ:Z

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 8
    .line 9
    return-void
.end method

.method public j_()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ba:Z

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex;->onvideoComplate()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Jc:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;->tB(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 35
    .line 36
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->onvideoComplate()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public oJ()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(I)V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-eq p1, v5, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(JZZ)Z

    :goto_0
    return-void

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Pfn()V

    return-void

    .line 47
    :cond_3
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->setCanInterruptVideoPlay(Z)V

    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 49
    :cond_4
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(JZZ)Z

    return-void
.end method

.method public oJ(II)V
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->nke:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->LpP:J

    const/4 v0, 0x4

    .line 68
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Jc:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;->oJ(II)V

    :cond_0
    return-void
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry:I

    .line 72
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ:Ljava/lang/String;

    return-void
.end method

.method public oJ(JJ)V
    .locals 3

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ba:Z

    .line 57
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->LpP:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk:I

    .line 59
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->LpP:J

    .line 60
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->nke:J

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    move-result-object v0

    sub-long v1, p3, p1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex;->setTimeUpdate(I)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    if-eqz v1, :cond_2

    .line 64
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    sub-long v1, p3, p1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->setTimeUpdate(I)V

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(JJ)V

    .line 66
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk(JJ)V

    return-void
.end method

.method public oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p2, v0, :cond_2

    .line 50
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 51
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->setCanInterruptVideoPlay(Z)V

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 53
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->WcQ:Z

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    sget p2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->NX:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V

    :cond_3
    :goto_0
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

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->so:I

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)Lcom/bytedance/sdk/openadsdk/core/UN;

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    .line 12
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    return-void
.end method

.method public oJ(ZLjava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZLjava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setSoundMute(Z)V

    :cond_0
    return-void
.end method

.method public setBackupVideoView(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->mu:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->Jc:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;

    .line 2
    .line 3
    return-void
.end method

.method public si()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->getVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(IZ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public tB()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->LpP:J

    return-wide v0
.end method
