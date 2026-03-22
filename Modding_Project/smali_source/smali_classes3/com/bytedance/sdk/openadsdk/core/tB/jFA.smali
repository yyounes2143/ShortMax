.class public Lcom/bytedance/sdk/openadsdk/core/tB/jFA;
.super Lcom/bytedance/sdk/openadsdk/core/so/oJ;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;
    }
.end annotation


# instance fields
.field private PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

.field private Ry:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

.field private WcQ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

.field private awB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

.field private eZI:Ljava/lang/String;

.field public oJ:Z

.field private si:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->oJ:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method private Pfn()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/ZYk;->oJ(II)Lcom/bytedance/sdk/openadsdk/core/so/Ry;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressWidth()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->cFZ:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressHeight()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->so:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->cFZ:I

    .line 71
    .line 72
    int-to-float v1, v1

    .line 73
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/so/Ry;->ZYk:F

    .line 74
    .line 75
    div-float/2addr v1, v2

    .line 76
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->so:I

    .line 85
    .line 86
    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->cFZ:I

    .line 87
    .line 88
    if-lez v1, :cond_1

    .line 89
    .line 90
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-le v1, v2, :cond_1

    .line 97
    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    int-to-float v1, v1

    .line 105
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->cFZ:I

    .line 106
    .line 107
    int-to-float v2, v2

    .line 108
    div-float/2addr v1, v2

    .line 109
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->cFZ:I

    .line 116
    .line 117
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->so:I

    .line 118
    .line 119
    int-to-float v2, v2

    .line 120
    mul-float/2addr v2, v1

    .line 121
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->so:I

    .line 130
    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-nez v1, :cond_2

    .line 136
    .line 137
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 138
    .line 139
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->cFZ:I

    .line 140
    .line 141
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->so:I

    .line 142
    .line 143
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 144
    .line 145
    .line 146
    :cond_2
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->cFZ:I

    .line 147
    .line 148
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    .line 150
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->so:I

    .line 151
    .line 152
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    .line 154
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    move-object v2, v1

    .line 159
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .line 161
    const/16 v3, 0x11

    .line 162
    .line 163
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    .line 165
    :cond_3
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/Ry;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/jFA;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    return-object p0
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/core/so/Ry;)Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;
    .locals 5

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/jFA$1;)V

    .line 3
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->oJ:Landroid/widget/FrameLayout;

    .line 4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v3, -0x1

    .line 5
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->oJ:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;

    .line 9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 10
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->oJ:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    if-eqz p1, :cond_0

    .line 14
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/so/Ry;->oJ:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ba;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ba;->ZYk(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 17
    :goto_0
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    const v3, 0x1f000001

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 18
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v3, 0x800005

    .line 19
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 21
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->oJ:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 24
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800053

    .line 25
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 26
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 27
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->oJ:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ZYk:Landroid/content/Context;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    .line 31
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p1, 0x800055

    .line 32
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 34
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 35
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->oJ:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/tB/jFA;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/jFA;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->Ry:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/so/Ry;)V
    .locals 9

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_b

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    move-result v0

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/Ry;)Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 17
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->oJ:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 20
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->ex:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 21
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 22
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Ry()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 23
    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v6, v7, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/content/Context;FZ)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5, v6, v3, v7}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->getVideoView()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 26
    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->awB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 27
    invoke-virtual {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setVideoAdLoadListener(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;)V

    .line 28
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->awB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setVideoAdInteractionListener(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;)V

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-direct {v7, v1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-direct {v7, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->awB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 34
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->awB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$1;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/jFA;)V

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 35
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/jFA;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v1, :cond_5

    .line 36
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/jFA;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getClickListener()Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getClickListener()Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ZYk(Landroid/view/View;)V

    .line 40
    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/so/so;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 41
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/so/so;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ZYk(Landroid/view/View;)V

    .line 42
    :cond_5
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/jFA$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;

    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->dLZ()I

    move-result v1

    .line 45
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->BTZ()I

    move-result v2

    int-to-float v2, v2

    if-lez v1, :cond_6

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    int-to-float v0, v1

    div-float/2addr v0, v2

    .line 46
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;->setRatio(F)V

    goto :goto_0

    :cond_6
    const/16 v1, 0xf

    if-ne v0, v1, :cond_7

    const/high16 v0, 0x3f100000    # 0.5625f

    .line 47
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;->setRatio(F)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    const v0, 0x3fe38e39

    .line 48
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;->setRatio(F)V

    goto :goto_0

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/BTZ;->setRatio(F)V

    .line 50
    :cond_9
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz v5, :cond_a

    if-eqz p1, :cond_a

    .line 51
    invoke-virtual {p1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x1f000042

    invoke-virtual {v5, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    :cond_a
    invoke-virtual {p0, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->oJ(Landroid/view/View;Z)V

    .line 54
    invoke-virtual {p0, p0, v4}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->oJ(Landroid/view/View;Z)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->oJ(Landroid/view/View;)V

    :cond_b
    :goto_1
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/tB/jFA;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public g_()V
    .locals 0

    .line 1
    return-void
.end method

.method public getVideoProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->si:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public h_()V
    .locals 0

    .line 1
    return-void
.end method

.method public i_()V
    .locals 0

    .line 1
    return-void
.end method

.method public j_()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ex:Lcom/bytedance/sdk/openadsdk/tB/tB;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ()V

    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->eZI:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    return-void
.end method

.method public oJ(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(JJ)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->si:J

    return-void
.end method

.method protected oJ(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/model/eZI;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->awB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->awB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->wd()V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V
    .locals 1

    const/high16 v0, -0x1000000

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 10
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->WcQ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 11
    const-string p1, "banner_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->ba:Ljava/lang/String;

    .line 12
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->Pfn()V

    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->Ry:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 2
    .line 3
    return-void
.end method

.method public setClosedListenerKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->eZI:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
