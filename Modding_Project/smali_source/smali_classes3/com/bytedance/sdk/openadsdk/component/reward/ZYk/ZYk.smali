.class public abstract Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;
.super Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;
    }
.end annotation


# instance fields
.field protected BTZ:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

.field public PiB:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

.field public WcQ:Landroid/widget/LinearLayout;

.field private awB:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

.field protected dLZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected static oJ(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2

    .line 145
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 146
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->dLZ:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/high16 p0, -0x1000000

    .line 147
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 149
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private oJ(JJ)V
    .locals 3

    sub-long p1, p3, p1

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    if-eqz v2, :cond_0

    .line 91
    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ZYk(JJ)V

    return-void

    .line 92
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    if-eqz v1, :cond_1

    .line 93
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(JJ)V

    :cond_1
    return-void
.end method

.method static oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 10

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    iget-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->VSB:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v1, :cond_3

    .line 96
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 97
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->kkU:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 98
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v6

    .line 100
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_0

    .line 101
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 102
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 103
    :cond_0
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 104
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v8, 0x0

    .line 105
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v8

    .line 106
    :cond_1
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 107
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 108
    sget v9, Lcom/bytedance/sdk/openadsdk/utils/eZI;->OP:I

    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 109
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 110
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move-object v7, v3

    .line 112
    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/widget/dLZ;

    invoke-direct {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dLZ;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;-><init>(Landroid/content/Context;)V

    .line 116
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->BTZ:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 117
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x50

    .line 118
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$3;

    invoke-direct {v6, p1, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 121
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 122
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->PiB:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :cond_3
    iget-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Qu:Z

    if-eqz v1, :cond_4

    .line 127
    new-instance v1, Lcom/bytedance/sdk/component/jFA/ba;

    invoke-direct {v1, v0, v4}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;Z)V

    .line 128
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->WcQ:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    const/4 v6, 0x2

    .line 129
    invoke-virtual {v1, v6, v3}, Lcom/bytedance/sdk/component/jFA/ba;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v3, 0x4

    .line 130
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    .line 131
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 133
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->awB:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 134
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 137
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 138
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SYE:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 139
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_4
    new-instance p1, Lcom/bytedance/sdk/component/jFA/ba;

    invoke-direct {p1, v0, v4}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;Z)V

    .line 142
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->eZI:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 143
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    .line 144
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 4
    .line 5
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->PiB:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->WcQ:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 21
    .line 22
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/PiB;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    const-string v4, "landingpage_endcard"

    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/common/PiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->MoK:Lcom/bytedance/sdk/openadsdk/common/PiB;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->MoK:Lcom/bytedance/sdk/openadsdk/common/PiB;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/PiB;->tB()Landroid/widget/ImageView;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$1;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->WcQ:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->MoK:Lcom/bytedance/sdk/openadsdk/common/PiB;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/PiB;->Pfn()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    const/4 v3, -0x1

    .line 64
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->MoK:Lcom/bytedance/sdk/openadsdk/common/PiB;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/common/PiB;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final HL()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->awB()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v1, "reward_endcard"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v1, "fullscreen_endcard"

    .line 29
    .line 30
    :goto_0
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 35
    .line 36
    invoke-virtual {v2, v3, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 40
    .line 41
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->YQ:Z

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 48
    .line 49
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 50
    .line 51
    invoke-virtual {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 59
    .line 60
    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method protected IUZ()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public Id()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ba()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->WcQ()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Jc()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->Pfn()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI()V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    sget v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->cFZ(I)V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ()V

    .line 66
    .line 67
    .line 68
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->tB()V

    .line 75
    .line 76
    .line 77
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->tB()V

    .line 84
    .line 85
    .line 86
    :cond_7
    return-void
.end method

.method public abstract Pfn()Z
.end method

.method public PiB()V
    .locals 0

    .line 1
    return-void
.end method

.method public QSm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->awB()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->eZI()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->eZI()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Id:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->ZYk()V

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public RZ()V
    .locals 0

    .line 1
    return-void
.end method

.method protected Ry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 27
    .line 28
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/16 v2, 0x2bc

    .line 40
    .line 41
    iput v2, v0, Landroid/os/Message;->what:I

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 44
    .line 45
    iget v3, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    .line 46
    .line 47
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 55
    .line 56
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jFA:I

    .line 57
    .line 58
    if-lez v2, :cond_2

    .line 59
    .line 60
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Id:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/16 v1, 0x384

    .line 73
    .line 74
    iput v1, v0, Landroid/os/Message;->what:I

    .line 75
    .line 76
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 77
    .line 78
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jFA:I

    .line 79
    .line 80
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 81
    .line 82
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public WcQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public Xe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB()Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->BTZ:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 10
    .line 11
    return-void
.end method

.method public awB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 29
    .line 30
    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    :cond_2
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public abstract ba()Z
.end method

.method public abstract cFZ()V
.end method

.method public cY()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 6
    .line 7
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->QSm(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_7

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 39
    .line 40
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Ljava/lang/String;Z)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->xwf()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 73
    .line 74
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Ljava/lang/String;Z)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HUl()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->jFA()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    :cond_4
    const/4 v1, -0x1

    .line 141
    if-eq v0, v1, :cond_7

    .line 142
    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 146
    .line 147
    if-eqz v1, :cond_5

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB()J

    .line 150
    .line 151
    .line 152
    move-result-wide v1

    .line 153
    int-to-long v3, v0

    .line 154
    const-wide/16 v5, 0x3e8

    .line 155
    .line 156
    mul-long/2addr v3, v5

    .line 157
    cmp-long v1, v1, v3

    .line 158
    .line 159
    if-gez v1, :cond_6

    .line 160
    .line 161
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 162
    .line 163
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 164
    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex(I)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 174
    .line 175
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 176
    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex()V

    .line 180
    .line 181
    .line 182
    :cond_7
    return-void
.end method

.method public dLZ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->BTZ()V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ()V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->awB()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU()Lcom/bytedance/sdk/component/jFA/ba;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v1, 0x4

    .line 111
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_5

    .line 133
    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 146
    .line 147
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 148
    .line 149
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    .line 150
    .line 151
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->NO:I

    .line 152
    .line 153
    int-to-float v0, v0

    .line 154
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 159
    .line 160
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    .line 161
    .line 162
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jB:I

    .line 163
    .line 164
    int-to-float v2, v2

    .line 165
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(II)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;->oJ()V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const/4 v1, 0x0

    .line 188
    if-eqz v0, :cond_4

    .line 189
    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 193
    .line 194
    const/4 v2, 0x1

    .line 195
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Z)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn()V

    .line 203
    .line 204
    .line 205
    sget v0, Lcom/bytedance/sdk/openadsdk/ex/ZYk$ZYk;->tB:I

    .line 206
    .line 207
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(ZZZI)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 212
    .line 213
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->TA:Z

    .line 214
    .line 215
    if-eqz v2, :cond_5

    .line 216
    .line 217
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(I)V

    .line 220
    .line 221
    .line 222
    :cond_5
    :goto_0
    return-void
.end method

.method public eZI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->kkU:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    const/16 v1, 0x12c

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public jFA()Landroid/view/View;
    .locals 9

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jA:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ba;->ZYk(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x1f00000c

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v3, -0x2

    .line 32
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    const v4, 0x800035

    .line 36
    .line 37
    .line 38
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    .line 40
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 43
    .line 44
    const/high16 v5, 0x41a00000    # 20.0f

    .line 45
    .line 46
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 51
    .line 52
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 55
    .line 56
    const/high16 v5, 0x41800000    # 16.0f

    .line 57
    .line 58
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 70
    .line 71
    const-string v4, "tt_ad_close_text"

    .line 72
    .line 73
    invoke-static {v2, v4}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 88
    .line 89
    const/high16 v4, 0x41600000    # 14.0f

    .line 90
    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_0

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const/4 v2, 0x0

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 107
    .line 108
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 111
    .line 112
    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const v5, 0x1f00003d

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .line 124
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 125
    .line 126
    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 127
    .line 128
    invoke-static {v6, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-direct {v5, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    .line 134
    .line 135
    const v6, 0x800053

    .line 136
    .line 137
    .line 138
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 139
    .line 140
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 144
    .line 145
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 146
    .line 147
    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 148
    .line 149
    invoke-direct {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->JC:I

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 155
    .line 156
    .line 157
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    .line 159
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 160
    .line 161
    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 162
    .line 163
    const/high16 v8, 0x42000000    # 32.0f

    .line 164
    .line 165
    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 170
    .line 171
    iget-object v8, v8, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 172
    .line 173
    invoke-static {v8, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-direct {v6, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .line 179
    .line 180
    const v4, 0x800055

    .line 181
    .line 182
    .line 183
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 189
    .line 190
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 191
    .line 192
    const/high16 v6, 0x41100000    # 9.0f

    .line 193
    .line 194
    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 199
    .line 200
    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 201
    .line 202
    invoke-static {v7, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    const/4 v7, 0x0

    .line 207
    invoke-virtual {v5, v4, v7, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 208
    .line 209
    .line 210
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 211
    .line 212
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 213
    .line 214
    .line 215
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 216
    .line 217
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 218
    .line 219
    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 220
    .line 221
    invoke-direct {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Zwf:I

    .line 225
    .line 226
    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 227
    .line 228
    .line 229
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 230
    .line 231
    const/4 v7, -0x1

    .line 232
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    const/4 v6, 0x1

    .line 239
    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 243
    .line 244
    .line 245
    if-eqz v2, :cond_2

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 257
    .line 258
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wd()Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eqz v2, :cond_3

    .line 265
    .line 266
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 267
    .line 268
    iget-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 269
    .line 270
    if-eqz v4, :cond_3

    .line 271
    .line 272
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ:I

    .line 273
    .line 274
    if-eq v2, v6, :cond_4

    .line 275
    .line 276
    :cond_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 277
    .line 278
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 279
    .line 280
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 281
    .line 282
    invoke-direct {v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;-><init>(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/eZI;->yV:I

    .line 286
    .line 287
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 288
    .line 289
    .line 290
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    .line 292
    invoke-direct {v4, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    .line 303
    .line 304
    return-object v0
.end method

.method public jr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public kkU()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->EP()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->eGo:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public oJ(I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(ZZZI)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->jFA:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    const/16 v0, 0x2710

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->oJ(I)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 12

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_11

    const/16 v2, 0x190

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10

    const/16 v1, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x258

    if-eq v0, v1, :cond_b

    const-wide/16 v4, 0x3e8

    .line 25
    const-string v1, "s"

    const/16 v6, 0x2bc

    if-eq v0, v6, :cond_6

    const/16 v6, 0x320

    if-eq v0, v6, :cond_4

    const/16 v2, 0x384

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Id:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    .line 27
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->XAo()D

    move-result-wide v6

    int-to-long v8, p1

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v6

    double-to-long v10, v10

    .line 29
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(JJ)V

    if-lez p1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ZYk()V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v9, p1, 0x3e8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    .line 33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 34
    iput v2, v0, Landroid/os/Message;->what:I

    add-int/lit16 v1, p1, -0x3e8

    .line 35
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput v1, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jFA:I

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->kkU:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    cmpl-double v1, v6, v1

    if-lez v1, :cond_1

    .line 39
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    div-double/2addr v1, v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    double-to-float p1, v3

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(F)V

    :cond_1
    return-void

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->kkU:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 43
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz p1, :cond_3

    instance-of p1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz p1, :cond_3

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    :cond_3
    return-void

    .line 45
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 47
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(F)V

    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    return-void

    .line 50
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    if-lez p1, :cond_7

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ZYk()V

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v7, p1, 0x3e8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    .line 55
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 56
    iput v6, v0, Landroid/os/Message;->what:I

    add-int/lit16 p1, p1, -0x3e8

    .line 57
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    add-int/lit16 v1, v1, -0x3e8

    iput v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    .line 59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->kkU:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 60
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->kkU:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->cFZ()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 63
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->jr()V

    return-void

    .line 64
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    return-void

    .line 65
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    goto/16 :goto_2

    .line 66
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    return-void

    .line 67
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 69
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->PiB()V

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 73
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(F)V

    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(F)V

    .line 76
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 77
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    return-void

    .line 78
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    const/4 p1, 0x3

    .line 79
    invoke-virtual {p0, v3, v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(ZZZI)V

    return-void

    .line 80
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz v0, :cond_12

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz v0, :cond_12

    .line 81
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Xe()V

    goto :goto_1

    .line 82
    :cond_12
    sget p1, Lcom/bytedance/sdk/openadsdk/ex/ZYk$ZYk;->ZYk:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(I)V

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(II)V

    .line 84
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 86
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;)V

    .line 87
    :cond_13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    if-eqz p1, :cond_14

    .line 88
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->kkU()V

    :cond_14
    :goto_2
    return-void

    .line 89
    :cond_15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->jr()V

    return-void
.end method

.method public abstract oJ(Landroid/widget/FrameLayout;)V
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;)V
    .locals 3

    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->tB()V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->IUZ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->HL()V

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->IUZ()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk()V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->kkU:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v0, 0x1f4

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LS:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->Xe()V

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->cFZ()V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/component/utils/IUZ;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/component/utils/IUZ;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->VSB:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->BTZ()V

    :cond_1
    return-void
.end method

.method public oJ(ZZZI)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p0

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(ZZZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;I)V

    return-void
.end method

.method public oq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->eZI()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;->oJ()I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->cFZ()I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 33
    .line 34
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 39
    .line 40
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$2;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public si()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->wd()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Rl()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->Ry()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ()V

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public so()Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public tb()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ba()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/cFZ;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ZYk()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->jFA:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->WcQ()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->oJ(JZ)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->kkU:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 39
    .line 40
    const/16 v1, 0x12c

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 46
    .line 47
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 52
    .line 53
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Xe()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget v0, Lcom/bytedance/sdk/openadsdk/ex/ZYk$ZYk;->oJ:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    xor-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    const/4 v2, 0x4

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(II)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tb()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method
