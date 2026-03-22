.class public Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;
.super Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
.source "SourceFile"


# instance fields
.field private BHY:Landroid/content/res/ColorStateList;

.field private Dex:I

.field private final EP:Landroid/view/View$OnTouchListener;

.field private HyG:Landroid/widget/TextView;

.field private Jm:Landroid/widget/ImageView;

.field private LS:Landroid/widget/ImageView;

.field private MoK:I

.field private final NO:Lcom/bytedance/sdk/component/utils/IUZ;

.field private Qu:Landroid/view/View;

.field private Rl:Landroid/widget/TextView;

.field private SCr:Landroid/content/res/ColorStateList;

.field private SWT:F

.field private TA:I

.field private UF:I

.field private final UK:Landroid/graphics/Rect;

.field private Uf:F

.field private final VJm:I

.field private VSB:Landroid/content/res/ColorStateList;

.field private Wek:F

.field private XAo:Landroid/widget/TextView;

.field private YQ:F

.field private Yg:Landroid/view/View;

.field private final bD:I

.field private bgF:Landroid/widget/TextView;

.field private cdg:Landroid/widget/TextView;

.field private final eXp:Landroid/graphics/Rect;

.field private jB:Z

.field private jXJ:F

.field private lY:Landroid/widget/SeekBar;

.field private mwH:Landroid/widget/TextView;

.field private nQI:Landroid/widget/ImageView;

.field private final oCU:Lcom/bytedance/sdk/openadsdk/core/widget/Ry;

.field private oIC:I

.field private oTd:Landroid/widget/TextView;

.field private ofl:Landroid/widget/ImageView;

.field private sH:I

.field private final uvK:Landroid/graphics/Rect;

.field private wd:Landroid/view/View;

.field private final yQF:Landroid/graphics/Rect;

.field private yz:Z

.field private final zGT:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;Z)V
    .locals 2

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;Z)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->NO:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->yz:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->sH:I

    .line 17
    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Dex:I

    .line 19
    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oIC:I

    .line 21
    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->MoK:I

    .line 23
    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->TA:I

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->UK:Landroid/graphics/Rect;

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->uvK:Landroid/graphics/Rect;

    .line 39
    .line 40
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->UF:I

    .line 41
    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$7;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->EP:Landroid/view/View$OnTouchListener;

    .line 48
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->zGT:Landroid/graphics/Rect;

    .line 55
    .line 56
    new-instance v0, Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->yQF:Landroid/graphics/Rect;

    .line 62
    .line 63
    new-instance v0, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->eXp:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(Z)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    .line 84
    .line 85
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 86
    .line 87
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/Ry;

    .line 88
    .line 89
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Ry;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Ry$oJ;)V

    .line 90
    .line 91
    .line 92
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oCU:Lcom/bytedance/sdk/openadsdk/core/widget/Ry;

    .line 93
    .line 94
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 95
    .line 96
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Ry;->oJ(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    .line 111
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->VJm:I

    .line 112
    .line 113
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 114
    .line 115
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->bD:I

    .line 116
    .line 117
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    .line 118
    .line 119
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->nke:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 120
    .line 121
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 122
    .line 123
    const/16 p2, 0x8

    .line 124
    .line 125
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(I)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    .line 129
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oJ(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ex()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ()V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method private Pfn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Xe()V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->tb()V

    return-void
.end method

.method private Xe()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 12
    .line 13
    const/high16 v2, 0x41800000    # 16.0f

    .line 14
    .line 15
    const-string v3, "tt_b2000000"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x2

    .line 19
    const v6, 0x3f59999a    # 0.85f

    .line 20
    .line 21
    .line 22
    const/4 v7, -0x1

    .line 23
    const/high16 v8, 0x3f000000    # 0.5f

    .line 24
    .line 25
    const/high16 v9, 0x41600000    # 14.0f

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->YQ:F

    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v1, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->BHY:Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->SWT:F

    .line 63
    .line 64
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v11, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    int-to-float v11, v11

    .line 78
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v12, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    int-to-float v12, v12

    .line 85
    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v13, v3}, Lcom/bytedance/sdk/component/utils/cY;->cFZ(Landroid/content/Context;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    invoke-virtual {v1, v4, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    instance-of v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    .line 102
    if-eqz v11, :cond_1

    .line 103
    .line 104
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 105
    .line 106
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->zGT:Landroid/graphics/Rect;

    .line 107
    .line 108
    iget v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 109
    .line 110
    iget v13, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 111
    .line 112
    iget v14, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 113
    .line 114
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 115
    .line 116
    invoke-virtual {v11, v12, v13, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    float-to-int v11, v11

    .line 126
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->zGT:Landroid/graphics/Rect;

    .line 127
    .line 128
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 129
    .line 130
    invoke-static {v10, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    float-to-int v13, v13

    .line 135
    iget-object v14, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->zGT:Landroid/graphics/Rect;

    .line 136
    .line 137
    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 138
    .line 139
    invoke-static {v1, v11, v12, v13, v14}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 143
    .line 144
    if-eqz v1, :cond_3

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Uf:F

    .line 151
    .line 152
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v1, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->SCr:Landroid/content/res/ColorStateList;

    .line 164
    .line 165
    if-eqz v1, :cond_2

    .line 166
    .line 167
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    .line 171
    .line 172
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Wek:F

    .line 179
    .line 180
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 186
    .line 187
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {v5, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    int-to-float v5, v5

    .line 194
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 195
    .line 196
    invoke-static {v11, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    int-to-float v8, v8

    .line 201
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {v11, v3}, Lcom/bytedance/sdk/component/utils/cY;->cFZ(Landroid/content/Context;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-virtual {v1, v4, v5, v8, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 217
    .line 218
    if-eqz v3, :cond_3

    .line 219
    .line 220
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    .line 222
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->yQF:Landroid/graphics/Rect;

    .line 223
    .line 224
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 225
    .line 226
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 227
    .line 228
    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 229
    .line 230
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 231
    .line 232
    invoke-virtual {v3, v4, v5, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 236
    .line 237
    invoke-static {v10, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    float-to-int v3, v3

    .line 242
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->yQF:Landroid/graphics/Rect;

    .line 243
    .line 244
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 245
    .line 246
    iget v8, v4, Landroid/graphics/Rect;->right:I

    .line 247
    .line 248
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 249
    .line 250
    invoke-static {v1, v3, v5, v8, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 251
    .line 252
    .line 253
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    .line 254
    .line 255
    if-eqz v1, :cond_4

    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    .line 263
    if-eqz v3, :cond_4

    .line 264
    .line 265
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 266
    .line 267
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->eXp:Landroid/graphics/Rect;

    .line 268
    .line 269
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 270
    .line 271
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 272
    .line 273
    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 274
    .line 275
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 276
    .line 277
    invoke-virtual {v3, v4, v5, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 278
    .line 279
    .line 280
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    .line 281
    .line 282
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->eXp:Landroid/graphics/Rect;

    .line 283
    .line 284
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 285
    .line 286
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 287
    .line 288
    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    float-to-int v2, v2

    .line 293
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->eXp:Landroid/graphics/Rect;

    .line 294
    .line 295
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 296
    .line 297
    invoke-static {v1, v4, v3, v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 298
    .line 299
    .line 300
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    .line 301
    .line 302
    if-eqz v1, :cond_5

    .line 303
    .line 304
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 305
    .line 306
    const-string v3, "tt_shrink_fullscreen"

    .line 307
    .line 308
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    .line 314
    .line 315
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 316
    .line 317
    if-eqz v1, :cond_7

    .line 318
    .line 319
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->VSB:Landroid/content/res/ColorStateList;

    .line 324
    .line 325
    if-eqz v1, :cond_6

    .line 326
    .line 327
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 328
    .line 329
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    .line 331
    .line 332
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 333
    .line 334
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jXJ:F

    .line 339
    .line 340
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 343
    .line 344
    .line 345
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 352
    .line 353
    if-eqz v2, :cond_7

    .line 354
    .line 355
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 356
    .line 357
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->uvK:Landroid/graphics/Rect;

    .line 358
    .line 359
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 360
    .line 361
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 362
    .line 363
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 364
    .line 365
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 366
    .line 367
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 368
    .line 369
    .line 370
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 371
    .line 372
    const/high16 v2, 0x3f800000    # 1.0f

    .line 373
    .line 374
    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    float-to-int v2, v2

    .line 379
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->yQF:Landroid/graphics/Rect;

    .line 380
    .line 381
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 382
    .line 383
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 384
    .line 385
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 386
    .line 387
    invoke-static {v1, v2, v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 388
    .line 389
    .line 390
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    .line 391
    .line 392
    if-eqz v1, :cond_8

    .line 393
    .line 394
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 399
    .line 400
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->UF:I

    .line 401
    .line 402
    const/high16 v2, 0x42440000    # 49.0f

    .line 403
    .line 404
    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    float-to-int v0, v0

    .line 409
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 410
    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    .line 415
    .line 416
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    .line 417
    .line 418
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 419
    .line 420
    const-string v2, "tt_shadow_fullscreen_top"

    .line 421
    .line 422
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/cY;->ex(Landroid/content/Context;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 427
    .line 428
    .line 429
    :cond_8
    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, v0, v10}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    .line 431
    .line 432
    .line 433
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    return p0
.end method

.method private tb()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "tt_72000000"

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->YQ:F

    .line 12
    .line 13
    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->BHY:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 26
    .line 27
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->SWT:F

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    int-to-float v5, v5

    .line 41
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v6, v1}, Lcom/bytedance/sdk/component/utils/cY;->cFZ(Landroid/content/Context;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {v0, v5, v4, v4, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->zGT:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 61
    .line 62
    invoke-static {v0, v6, v7, v8, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Uf:F

    .line 70
    .line 71
    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->SCr:Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 84
    .line 85
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Wek:F

    .line 86
    .line 87
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    int-to-float v2, v2

    .line 99
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v5, v1}, Lcom/bytedance/sdk/component/utils/cY;->cFZ(Landroid/content/Context;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v2, v4, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->yQF:Landroid/graphics/Rect;

    .line 111
    .line 112
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 113
    .line 114
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 117
    .line 118
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 119
    .line 120
    invoke-static {v0, v2, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->eXp:Landroid/graphics/Rect;

    .line 128
    .line 129
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 130
    .line 131
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 132
    .line 133
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 134
    .line 135
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 136
    .line 137
    invoke-static {v0, v2, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 138
    .line 139
    .line 140
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 145
    .line 146
    const-string v2, "tt_enlarge_video"

    .line 147
    .line 148
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->VSB:Landroid/content/res/ColorStateList;

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 167
    .line 168
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jXJ:F

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->yQF:Landroid/graphics/Rect;

    .line 176
    .line 177
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 178
    .line 179
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 180
    .line 181
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 182
    .line 183
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 184
    .line 185
    invoke-static {v0, v2, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 186
    .line 187
    .line 188
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    .line 189
    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->UF:I

    .line 197
    .line 198
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    .line 200
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 208
    .line 209
    const-string v2, "tt_video_black_desc_gradient"

    .line 210
    .line 211
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    .line 217
    .line 218
    :cond_8
    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    .line 220
    .line 221
    .line 222
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->NO:Lcom/bytedance/sdk/component/utils/IUZ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->NO:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->NO:Lcom/bytedance/sdk/component/utils/IUZ;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public ZYk(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oIC:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 16
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->MoK:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 17
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Dex:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->sH:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 21
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_2

    .line 22
    move-object v2, v1

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x3

    .line 23
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->TA:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_2
    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->UK:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    :cond_3
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ZYk(Z)V

    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string v3, "tt_enlarge_video"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string v3, "tt_seek_thumb_normal"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(Landroid/view/View;Z)V

    .line 32
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Pfn(Z)V

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 34
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_4

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->XAo:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public ZYk(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->kkU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->bD:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->si:I

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->kkU()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->VJm:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ry:I

    .line 3
    :goto_1
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->QSm:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->RZ:I

    if-gtz v2, :cond_2

    goto :goto_4

    :cond_2
    if-gtz v0, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->kkU()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const/high16 v2, 0x43640000    # 228.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    :cond_5
    :goto_2
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    .line 6
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->RZ:I

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 7
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->QSm:I

    int-to-float v6, v5

    mul-float/2addr v6, v2

    float-to-int v2, v6

    if-le v2, v1, :cond_6

    int-to-float v0, v1

    mul-float/2addr v0, v3

    int-to-float v2, v5

    div-float/2addr v0, v2

    int-to-float v2, v4

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    if-nez p1, :cond_7

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->kkU()Z

    move-result p1

    if-nez p1, :cond_7

    .line 9
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->si:I

    .line 10
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ry:I

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->oJ(II)V

    :cond_8
    :goto_4
    return-void
.end method

.method public ZYk(I)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ba()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->NO:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Qu:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ba(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 82
    .line 83
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 84
    .line 85
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    .line 97
    .line 98
    const/16 v1, 0x8

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 101
    .line 102
    .line 103
    :cond_1
    return-void
.end method

.method public dLZ()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oJ(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected ex()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oCU:Lcom/bytedance/sdk/openadsdk/core/widget/Ry;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Ry;->oJ(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    and-int/2addr v1, v4

    .line 24
    if-ne v1, v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v1, v2

    .line 30
    :goto_1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    .line 34
    .line 35
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->XAo:Landroid/widget/TextView;

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    and-int/2addr v1, v4

    .line 53
    if-eq v1, v4, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v2, v3

    .line 57
    :goto_2
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->XAo:Landroid/widget/TextView;

    .line 61
    .line 62
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$2;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Jm:Landroid/widget/ImageView;

    .line 71
    .line 72
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$3;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->nQI:Landroid/widget/ImageView;

    .line 81
    .line 82
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$4;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    .line 91
    .line 92
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$5;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    .line 106
    .line 107
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$6;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->EP:Landroid/view/View$OnTouchListener;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public jFA()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 15
    .line 16
    const-string v2, "tt_00_00"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->so:Landroid/widget/ImageView;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Yg:Landroid/view/View;

    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->kkU:Landroid/view/View;

    .line 69
    .line 70
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ:Landroid/view/View;

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 84
    .line 85
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/RZ;

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/RZ;->oJ(Z)V

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method public kkU()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    .line 2
    .line 3
    return v0
.end method

.method public oJ()V
    .locals 2

    const/4 v0, 0x0

    .line 31
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oJ(ZZ)V

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->RZ()V

    return-void
.end method

.method public oJ(I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Yg:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public oJ(J)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public oJ(JJ)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(JJ)I

    move-result p1

    .line 30
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected oJ(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 3
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Wd:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->XAo:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->yB:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    .line 6
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->uaj:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    .line 7
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->LE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Jm:Landroid/widget/ImageView;

    .line 8
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->uq:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->HyG:Landroid/widget/TextView;

    .line 9
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->WGj:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    .line 10
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Amz:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Rl:Landroid/widget/TextView;

    .line 11
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Zjw:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Qu:Landroid/view/View;

    .line 12
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->XSu:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->nQI:Landroid/widget/ImageView;

    .line 13
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Oof:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->bgF:Landroid/widget/TextView;

    .line 14
    const-string v1, "tt_video_retry_des_txt"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->edj:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    .line 16
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->eW:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    .line 17
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SB:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    .line 18
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ypD:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Yg:Landroid/view/View;

    .line 19
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->dZS:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    .line 20
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->MVA:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jFA:Landroid/view/View;

    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 1

    .line 109
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->dLZ()V

    :goto_0
    return-void
.end method

.method public oJ(Landroid/view/View;Z)V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->kkU()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 137
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 138
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oJ(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Rl:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_1
    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oJ(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Rl:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ln:Z

    if-nez p2, :cond_4

    .line 145
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->tB(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 147
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-interface {p2, p0, p1, v1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;ZZ)V

    :cond_4
    return-void
.end method

.method public oJ(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    .line 76
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Dex:I

    .line 78
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->sH:I

    .line 79
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oIC:I

    .line 80
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->MoK:I

    const/4 v2, -0x1

    .line 81
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 82
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, 0x0

    .line 83
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 84
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 85
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 87
    instance-of v3, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_3

    .line 88
    move-object v3, v1

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    .line 90
    array-length v5, v4

    const/4 v6, 0x3

    if-lez v5, :cond_2

    aget v4, v4, v6

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->TA:I

    .line 91
    invoke-virtual {v3, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 92
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :cond_3
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_4

    .line 94
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 95
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->UK:Landroid/graphics/Rect;

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    invoke-static {p1, v2, v2, v2, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;IIII)V

    .line 97
    :cond_4
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ZYk(Z)V

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->LS:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string v3, "tt_shrink_video"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string v3, "tt_seek_thumb_fullscreen_selector"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-static {p1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(Landroid/view/View;Z)V

    .line 102
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Pfn(Z)V

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 104
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    if-nez p1, :cond_5

    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->XAo:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void

    .line 107
    :cond_5
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_6

    .line 108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    :cond_6
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

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Landroid/view/View;Landroid/content/Context;)V

    .line 35
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oJ(ZZ)V

    .line 36
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->kkU:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 37
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 38
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->BTZ:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 39
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->dLZ:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 40
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

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 47
    :cond_4
    const-string p2, ""

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x4

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    if-eqz v0, :cond_6

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    invoke-virtual {v0, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 55
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    .line 59
    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->WcQ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_7
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 65
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result p1

    if-eq p1, v1, :cond_9

    const/4 p2, 0x5

    if-eq p1, p2, :cond_8

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string p2, "tt_video_mobile_go_detail"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 68
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string p2, "tt_video_dial_phone"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 69
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tb:Landroid/content/Context;

    const-string p2, "tt_video_download_apk"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    :goto_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    .line 71
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->eZI:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Jc:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic oJ(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->HyG:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public oJ(ZZ)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Yg:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 127
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 129
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->XAo:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    goto :goto_0

    .line 131
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 134
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->XAo:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    :cond_2
    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->tB(Z)V

    return-void
.end method

.method public oJ(ZZZ)V
    .locals 2

    .line 111
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Yg:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 112
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 113
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 114
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->cdg:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 115
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->wd:Landroid/view/View;

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 116
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 117
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->jB:Z

    if-nez p1, :cond_5

    .line 118
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jr:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eq p1, p2, :cond_3

    if-nez p3, :cond_3

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->ofl:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->XAo:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->mwH:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->oTd:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->lY:Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->Qu:Landroid/view/View;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public tB(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;->HyG:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oq:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 15
    .line 16
    :goto_1
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    :cond_2
    return-void
.end method
