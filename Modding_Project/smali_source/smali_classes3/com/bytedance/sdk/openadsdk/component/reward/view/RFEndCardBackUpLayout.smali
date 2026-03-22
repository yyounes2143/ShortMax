.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
.super Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$oJ;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTAD.RFEndCardBackUpL"


# instance fields
.field private adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private adLogo:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field private ivIcon:Lcom/bytedance/sdk/openadsdk/core/widget/si;

.field private mInit:Z

.field private rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

.field private shownAdCount:I

.field private tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field private tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->zGT:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    return-object p0
.end method

.method private bindDescData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method private bindIconData(Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private bindTitleData(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method private initData(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/Pfn/so;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->ivIcon:Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 6
    .line 7
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindIconData(Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/eZI;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 31
    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_2

    .line 79
    .line 80
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 96
    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-nez p2, :cond_4

    .line 108
    .line 109
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adLogo:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 121
    .line 122
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$1;

    .line 123
    .line 124
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method private initOneSlotMultipleAdsLayout()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "#C2FFFFFF"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v3, -0x1

    .line 26
    const/4 v4, -0x2

    .line 27
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/high16 v5, 0x41800000    # 16.0f

    .line 31
    .line 32
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-virtual {v2, v6, v7, v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 42
    .line 43
    .line 44
    const/16 v5, 0x11

    .line 45
    .line 46
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    .line 48
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 52
    .line 53
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    if-ne v2, v5, :cond_0

    .line 57
    .line 58
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->shownAdCount:I

    .line 75
    .line 76
    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initOneSlotMultipleAdsLayoutLandscape(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->shownAdCount:I

    .line 81
    .line 82
    if-ne v0, v5, :cond_1

    .line 83
    .line 84
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initOneSlotMultipleAdsLayoutForTwoAdVertical(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initOneSlotMultipleAdsLayoutForThreeAdVertical(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 92
    .line 93
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 96
    .line 97
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const v2, 0x1f00003d

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$2;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private initOneSlotMultipleAdsLayoutForThreeAdVertical(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    .line 31
    invoke-direct {p0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initSingleCardInThreeCardStyle(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method private initOneSlotMultipleAdsLayoutForTwoAdVertical(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    .line 31
    invoke-direct {p0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initSingleCardInTwoCardStyle(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method private initOneSlotMultipleAdsLayoutLandscape(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    if-ge v1, p2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 32
    .line 33
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initSingleCardInTwoCardStyleLandscape(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;II)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private initSingleCardInThreeCardStyle(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setGravity(I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, -0x2

    .line 21
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    if-lez p3, :cond_0

    .line 26
    .line 27
    const/high16 v7, 0x41400000    # 12.0f

    .line 28
    .line 29
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v7, v6

    .line 35
    :goto_0
    invoke-virtual {v3, v6, v7, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$oJ;

    .line 39
    .line 40
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$oJ;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setGravity(I)V

    .line 60
    .line 61
    .line 62
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .line 64
    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    const/high16 v8, 0x41a00000    # 20.0f

    .line 68
    .line 69
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 74
    .line 75
    const/high16 v9, 0x41880000    # 17.0f

    .line 76
    .line 77
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 82
    .line 83
    const/high16 v9, 0x41f00000    # 30.0f

    .line 84
    .line 85
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 90
    .line 91
    invoke-virtual {v1, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 95
    .line 96
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/si;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .line 101
    const/high16 v10, 0x428c0000    # 70.0f

    .line 102
    .line 103
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    const/high16 v11, 0x427c0000    # 63.0f

    .line 108
    .line 109
    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v7, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindIconData(Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 120
    .line 121
    .line 122
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 123
    .line 124
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    .line 129
    .line 130
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    .line 132
    invoke-direct {v9, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .line 134
    .line 135
    const/high16 v10, 0x40e00000    # 7.0f

    .line 136
    .line 137
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 142
    .line 143
    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 147
    .line 148
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 152
    .line 153
    .line 154
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 155
    .line 156
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 157
    .line 158
    .line 159
    const/high16 v10, 0x41900000    # 18.0f

    .line 160
    .line 161
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    .line 163
    .line 164
    const-string v10, "#161823"

    .line 165
    .line 166
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    .line 172
    .line 173
    const v10, 0x800003

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v10}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 177
    .line 178
    .line 179
    const/4 v10, 0x0

    .line 180
    invoke-virtual {p1, v10, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 181
    .line 182
    .line 183
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    .line 185
    invoke-direct {v10, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-direct {p0, p1, p2, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindTitleData(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 199
    .line 200
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 207
    .line 208
    .line 209
    const/high16 v2, 0x41800000    # 16.0f

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    .line 213
    .line 214
    const-string v9, "#80161823"

    .line 215
    .line 216
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    .line 225
    invoke-direct {v10, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindDescData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 232
    .line 233
    .line 234
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 235
    .line 236
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setGravity(I)V

    .line 243
    .line 244
    .line 245
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .line 247
    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .line 252
    .line 253
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 254
    .line 255
    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 259
    .line 260
    .line 261
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    .line 267
    .line 268
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 269
    .line 270
    invoke-direct {v6, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 277
    .line 278
    invoke-direct {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/eZI;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    .line 283
    invoke-direct {v7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 284
    .line 285
    .line 286
    const/high16 v5, 0x41000000    # 8.0f

    .line 287
    .line 288
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 293
    .line 294
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .line 296
    .line 297
    const/16 p1, 0x12

    .line 298
    .line 299
    invoke-static {v3, v6, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/eZI;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 300
    .line 301
    .line 302
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 303
    .line 304
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 305
    .line 306
    .line 307
    const/16 v3, 0x11

    .line 308
    .line 309
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 310
    .line 311
    .line 312
    const v3, 0x1f00000b

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 316
    .line 317
    .line 318
    const-string v3, "tt_video_download_apk"

    .line 319
    .line 320
    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    .line 329
    .line 330
    const/4 v3, 0x2

    .line 331
    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    .line 333
    .line 334
    const-string v2, "tt_reward_full_video_backup_btn_bg"

    .line 335
    .line 336
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    .line 342
    .line 343
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 344
    .line 345
    const/high16 v3, 0x42100000    # 36.0f

    .line 346
    .line 347
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 352
    .line 353
    .line 354
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    const/high16 v4, 0x41b00000    # 22.0f

    .line 359
    .line 360
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 379
    .line 380
    .line 381
    return-void
.end method

.method private initSingleCardInTwoCardStyle(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setGravity(I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, -0x2

    .line 21
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/high16 v6, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    if-lez p3, :cond_0

    .line 28
    .line 29
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v8, v7

    .line 35
    :goto_0
    invoke-virtual {v3, v7, v8, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$oJ;

    .line 39
    .line 40
    invoke-direct {v8, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$oJ;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/si;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .line 56
    const/high16 v8, 0x428c0000    # 70.0f

    .line 57
    .line 58
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/high16 v9, 0x427c0000    # 63.0f

    .line 63
    .line 64
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    invoke-direct {v3, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    const/high16 v8, 0x41c00000    # 24.0f

    .line 72
    .line 73
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v3, v7, v8, v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindIconData(Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 91
    .line 92
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 96
    .line 97
    .line 98
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 101
    .line 102
    .line 103
    const/high16 v6, 0x41900000    # 18.0f

    .line 104
    .line 105
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    .line 107
    .line 108
    const-string v6, "#161823"

    .line 109
    .line 110
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    const/16 v6, 0x11

    .line 118
    .line 119
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 120
    .line 121
    .line 122
    const/4 v8, 0x0

    .line 123
    invoke-virtual {p1, v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 124
    .line 125
    .line 126
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    const/high16 v9, 0x42600000    # 56.0f

    .line 132
    .line 133
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    invoke-virtual {v8, v10, v7, v11, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-direct {p0, p1, p2, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindTitleData(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 155
    .line 156
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 163
    .line 164
    .line 165
    const/high16 v2, 0x41800000    # 16.0f

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    .line 169
    .line 170
    const-string v3, "#80161823"

    .line 171
    .line 172
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    .line 178
    .line 179
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    .line 181
    invoke-direct {v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    const/high16 v11, 0x40800000    # 4.0f

    .line 189
    .line 190
    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-virtual {v8, v10, v11, v9, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindDescData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 205
    .line 206
    .line 207
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 208
    .line 209
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    .line 214
    .line 215
    const/16 v7, 0x10

    .line 216
    .line 217
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setGravity(I)V

    .line 218
    .line 219
    .line 220
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    .line 222
    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .line 227
    .line 228
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 229
    .line 230
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 234
    .line 235
    .line 236
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    .line 242
    .line 243
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 244
    .line 245
    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .line 250
    .line 251
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 252
    .line 253
    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/eZI;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 257
    .line 258
    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    const/high16 v5, 0x41000000    # 8.0f

    .line 262
    .line 263
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 268
    .line 269
    invoke-virtual {p1, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    const/16 p1, 0x12

    .line 273
    .line 274
    invoke-static {v7, v3, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/eZI;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 275
    .line 276
    .line 277
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 278
    .line 279
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 283
    .line 284
    .line 285
    const v3, 0x1f00000b

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 289
    .line 290
    .line 291
    const-string v3, "tt_video_download_apk"

    .line 292
    .line 293
    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    .line 302
    .line 303
    const/4 v3, 0x2

    .line 304
    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    .line 306
    .line 307
    const-string v2, "tt_reward_full_video_backup_btn_bg"

    .line 308
    .line 309
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    .line 315
    .line 316
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    .line 318
    const/high16 v3, 0x42100000    # 36.0f

    .line 319
    .line 320
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 325
    .line 326
    .line 327
    const/high16 v4, 0x41a00000    # 20.0f

    .line 328
    .line 329
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    invoke-virtual {v2, v5, v3, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 352
    .line 353
    .line 354
    return-void
.end method

.method private initSingleCardInTwoCardStyleLandscape(Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 3
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setGravity(I)V

    .line 5
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 6
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v9, 0x41400000    # 12.0f

    if-lez v2, :cond_0

    .line 7
    invoke-static {v3, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v6, v10, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8
    :cond_0
    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$oJ;

    invoke-direct {v10, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$oJ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v10, p1

    .line 9
    invoke-virtual {v10, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x30

    .line 12
    invoke-virtual {v6, v10}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setGravity(I)V

    .line 13
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41a00000    # 20.0f

    .line 14
    invoke-static {v3, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v13, 0x41880000    # 17.0f

    .line 15
    invoke-static {v3, v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v13, 0x41f00000    # 30.0f

    .line 16
    invoke-static {v3, v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 17
    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance v13, Lcom/bytedance/sdk/openadsdk/core/widget/si;

    invoke-direct {v13, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/si;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v15, 0x42300000    # 44.0f

    invoke-static {v3, v15}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v3, v15}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v14, v12, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-direct {v0, v13, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindIconData(Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 21
    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v12, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v14, 0x40e00000    # 7.0f

    .line 24
    invoke-static {v3, v14}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v14

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 25
    invoke-virtual {v6, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 28
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v14, 0x41900000    # 18.0f

    .line 29
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 30
    const-string v14, "#161823"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const v14, 0x800003

    .line 31
    invoke-virtual {v6, v14}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    const/4 v14, 0x0

    .line 32
    invoke-virtual {v6, v14, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 33
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v6, v1, v14}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindTitleData(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 35
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x10

    .line 37
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setGravity(I)V

    .line 38
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 40
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    const-string v14, "#80161823"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v15, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    invoke-direct {v15, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/eZI;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41000000    # 8.0f

    .line 45
    invoke-static {v3, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v8

    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 46
    invoke-virtual {v6, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x12

    .line 47
    invoke-static {v7, v15, v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/eZI;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 48
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    move/from16 v8, p4

    if-ne v8, v7, :cond_1

    .line 49
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 51
    :goto_0
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v5, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v8, 0x41400000    # 12.0f

    .line 56
    invoke-static {v3, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 57
    invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-direct {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindDescData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 59
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x11

    .line 60
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    const v6, 0x1f00000b

    .line 61
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 62
    const-string v6, "tt_video_download_apk"

    invoke-static {v3, v6}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    invoke-virtual {v5, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    const-string v6, "tt_reward_full_video_backup_btn_bg"

    invoke-static {v3, v6}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41a00000    # 20.0f

    .line 67
    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v3, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v6, v8, v9, v10, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 68
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-direct {v0, v5, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    return-void
.end method

.method private initViews()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->mInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->mInit:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wd()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->shownAdCount:I

    .line 32
    .line 33
    if-le v1, v0, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initOneSlotMultipleAdsLayout()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initViewsForVast()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initViewsDefault()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 57
    .line 58
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initData(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/Pfn/so;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private initViewsDefault()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    const/high16 v4, -0x1000000

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    .line 35
    .line 36
    const/4 v5, -0x2

    .line 37
    const/4 v6, -0x1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    invoke-direct {v7, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    const v8, 0x43a38000    # 327.0f

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-direct {v7, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    :goto_1
    const/16 v8, 0x11

    .line 59
    .line 60
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    .line 62
    const/high16 v9, 0x41c00000    # 24.0f

    .line 63
    .line 64
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 69
    .line 70
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 71
    .line 72
    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 76
    .line 77
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/si;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->ivIcon:Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 81
    .line 82
    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    .line 87
    const/high16 v7, 0x42a00000    # 80.0f

    .line 88
    .line 89
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-direct {v2, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    const/high16 v7, 0x41400000    # 12.0f

    .line 101
    .line 102
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 107
    .line 108
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->ivIcon:Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 109
    .line 110
    invoke-virtual {v4, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 119
    .line 120
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 121
    .line 122
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 131
    .line 132
    const/4 v11, 0x2

    .line 133
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 137
    .line 138
    const/high16 v12, 0x43340000    # 180.0f

    .line 139
    .line 140
    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v2, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    .line 159
    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {v4, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 173
    .line 174
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 178
    .line 179
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 180
    .line 181
    .line 182
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 183
    .line 184
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 188
    .line 189
    const-string v10, "#BFFFFFFF"

    .line 190
    .line 191
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 199
    .line 200
    const/high16 v10, 0x41800000    # 16.0f

    .line 201
    .line 202
    invoke-virtual {v2, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 203
    .line 204
    .line 205
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    .line 207
    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .line 209
    .line 210
    const/high16 v12, 0x41000000    # 8.0f

    .line 211
    .line 212
    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 217
    .line 218
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 219
    .line 220
    invoke-virtual {v4, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 224
    .line 225
    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/eZI;-><init>(Landroid/content/Context;Z)V

    .line 226
    .line 227
    .line 228
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 229
    .line 230
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    .line 232
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    .line 245
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 246
    .line 247
    const/16 v7, 0x8

    .line 248
    .line 249
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 253
    .line 254
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 258
    .line 259
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 263
    .line 264
    const v3, 0x1f00000b

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 271
    .line 272
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 273
    .line 274
    .line 275
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 276
    .line 277
    const-string v3, "tt_video_download_apk"

    .line 278
    .line 279
    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 287
    .line 288
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    .line 290
    .line 291
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 292
    .line 293
    invoke-virtual {v2, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    .line 295
    .line 296
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 297
    .line 298
    const-string v3, "tt_reward_full_video_backup_btn_bg"

    .line 299
    .line 300
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    .line 306
    .line 307
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 308
    .line 309
    const/high16 v3, 0x42300000    # 44.0f

    .line 310
    .line 311
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 316
    .line 317
    .line 318
    const/high16 v3, 0x42580000    # 54.0f

    .line 319
    .line 320
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 325
    .line 326
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 327
    .line 328
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .line 330
    .line 331
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 332
    .line 333
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 334
    .line 335
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adLogo:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 340
    .line 341
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .line 343
    const/high16 v3, 0x41600000    # 14.0f

    .line 344
    .line 345
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 350
    .line 351
    .line 352
    const v3, 0x800053

    .line 353
    .line 354
    .line 355
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 356
    .line 357
    const/high16 v3, 0x41900000    # 18.0f

    .line 358
    .line 359
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 364
    .line 365
    if-eqz v1, :cond_2

    .line 366
    .line 367
    const/high16 v1, 0x42740000    # 61.0f

    .line 368
    .line 369
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_2
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 381
    .line 382
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adLogo:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 383
    .line 384
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .line 386
    .line 387
    return-void
.end method

.method private initViewsForVast()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, -0x1000000

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->so:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v4, -0x1

    .line 28
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/bytedance/sdk/component/jFA/ba;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v1, v0, v3}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jFA:I

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/Pfn/so;Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 4
    .line 5
    invoke-virtual {v1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq p3, v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    add-int/lit8 p3, p3, 0x1

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "ad_show_order"

    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string p3, "pag_json_data"

    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :catchall_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_1

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public init(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initViews()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setShownAdCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->shownAdCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initViews()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
