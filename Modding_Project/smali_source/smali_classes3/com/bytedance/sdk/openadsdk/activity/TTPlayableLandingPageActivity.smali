.class public Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;
.implements Lcom/bytedance/sdk/openadsdk/core/ZYk/ex;


# static fields
.field private static final cdg:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;


# instance fields
.field private BTZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

.field private HL:Z

.field private HyG:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

.field private IUZ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

.field private Id:Ljava/lang/String;

.field private final Jc:Ljava/util/concurrent/atomic/AtomicInteger;

.field private Jm:Z

.field private final Ln:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private LpP:Ljava/lang/String;

.field protected Pfn:Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

.field private PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

.field private QSm:I

.field private Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

.field private RZ:Lcom/bytedance/sdk/openadsdk/core/UN;

.field private Rl:I

.field private Ry:Lcom/bytedance/sdk/openadsdk/core/UN;

.field private final UN:Ljava/util/concurrent/atomic/AtomicInteger;

.field private WcQ:Landroid/content/Context;

.field private XAo:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private final Xe:Lcom/bytedance/sdk/component/utils/IUZ;

.field ZYk:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

.field private awB:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

.field private ba:Lcom/bytedance/sdk/component/jFA/ba;

.field private cFZ:Z

.field private final cY:Ljava/lang/String;

.field private dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

.field private eZI:Ljava/lang/String;

.field ex:I

.field private jFA:Z

.field private jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private kkU:Z

.field private mu:Lcom/bytedance/sdk/openadsdk/QSm/so;

.field private final nke:Ljava/util/concurrent/atomic/AtomicInteger;

.field oJ:Lcom/bytedance/sdk/openadsdk/core/Ln;

.field private ofl:Z

.field private oq:Ljava/lang/String;

.field private si:Ljava/lang/String;

.field final tB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private tb:Z

.field private wd:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->cdg:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->cFZ:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jFA:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->kkU:Z

    .line 11
    .line 12
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const-string v2, "embeded_ad"

    .line 20
    .line 21
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->cY:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Xe:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 33
    .line 34
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Ln:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->nke:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Jc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->UN:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ofl:Z

    .line 63
    .line 64
    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ex:I

    .line 66
    .line 67
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$8;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Pfn:Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

    .line 73
    .line 74
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Rl:I

    .line 75
    .line 76
    return-void
.end method

.method private BTZ()Landroid/view/View;
    .locals 9

    .line 1
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    .line 2
    .line 3
    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    new-instance v8, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->WcQ:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Rl:I

    .line 22
    .line 23
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ofl:Z

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    move-object v0, v8

    .line 27
    move-object v5, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;IZLandroid/widget/FrameLayout;Z)V

    .line 29
    .line 30
    .line 31
    iput-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 32
    .line 33
    const/high16 v0, 0x40a00000    # 5.0f

    .line 34
    .line 35
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 45
    .line 46
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    const/high16 v2, 0x41e00000    # 28.0f

    .line 49
    .line 50
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const/high16 v3, 0x42600000    # 56.0f

    .line 62
    .line 63
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 68
    .line 69
    const/high16 v3, 0x41a00000    # 20.0f

    .line 70
    .line 71
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 76
    .line 77
    const v4, 0x800035

    .line 78
    .line 79
    .line 80
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    .line 82
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 83
    .line 84
    invoke-virtual {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 88
    .line 89
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 93
    .line 94
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/ex;->oJ()Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 102
    .line 103
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 104
    .line 105
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 109
    .line 110
    const-string v6, "tt_unmute_wrapper"

    .line 111
    .line 112
    invoke-static {p0, v6}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 125
    .line 126
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 130
    .line 131
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 135
    .line 136
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/ex;->oJ()Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 144
    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const-string v6, "tt_reward_full_feedback"

    .line 150
    .line 151
    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/cY;->ex(Landroid/content/Context;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    .line 157
    .line 158
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    .line 160
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    .line 170
    .line 171
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    .line 173
    const/high16 v4, 0x41800000    # 16.0f

    .line 174
    .line 175
    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 180
    .line 181
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 186
    .line 187
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 188
    .line 189
    invoke-virtual {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 193
    .line 194
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 198
    .line 199
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .line 201
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-direct {v1, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    const v2, 0x800033

    .line 213
    .line 214
    .line 215
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    .line 217
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    .line 223
    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 228
    .line 229
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 235
    .line 236
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 240
    .line 241
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 247
    .line 248
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/ex;->oJ()Landroid/graphics/drawable/Drawable;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 256
    .line 257
    const-string v1, "tt_white_lefterbackicon_titlebar"

    .line 258
    .line 259
    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 267
    .line 268
    const/4 v1, 0x0

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 273
    .line 274
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 278
    .line 279
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 283
    .line 284
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    return-object v7
.end method

.method private Id()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeTip()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    return-object p0
.end method

.method private PiB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->WcQ:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "interaction"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->IUZ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private QSm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$2;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$3;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$4;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method private Ry()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->si:I

    .line 20
    .line 21
    if-ltz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Xe:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 24
    .line 25
    int-to-long v2, v0

    .line 26
    const-wide/16 v4, 0x3e8

    .line 27
    .line 28
    mul-long/2addr v2, v4

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private Xe()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Xe:Lcom/bytedance/sdk/component/utils/IUZ;

    return-object p0
.end method

.method private ZYk(Landroid/os/Bundle;)V
    .locals 5

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5
    const-string v1, "TTPWPActivity"

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oq:Ljava/lang/String;

    .line 8
    const-string v3, "source"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->QSm:I

    .line 9
    const-string v3, "ad_pending_download"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->tb:Z

    .line 10
    const-string v3, "multi_process_materialmeta"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 12
    const-string v4, "TTPlayableLandingPageActivity - onCreate MultiGlobalInfo : "

    invoke-static {v1, v4, v3}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_0
    :goto_0
    const-string v3, "adid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->eZI:Ljava/lang/String;

    .line 14
    const-string v3, "log_extra"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->si:Ljava/lang/String;

    .line 15
    const-string v3, "gecko_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->LpP:Ljava/lang/String;

    .line 16
    const-string v3, "web_title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Id:Ljava/lang/String;

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oq:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->QSm:I

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BTZ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->tb:Z

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->eZI:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->si:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PQw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->LpP:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Id:Ljava/lang/String;

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 25
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v0

    const-string v3, "meta_index"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->eZI:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->si:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PQw()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->LpP:Ljava/lang/String;

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Id:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oq:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->QSm:I

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BTZ()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->tb:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez p1, :cond_4

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    return-void

    .line 35
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->eZI(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ofl:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->tb:Z

    return p1
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ofl:Z

    return p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->cY()V

    return-void
.end method

.method private cY()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeSendTip()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oq:Ljava/lang/String;

    return-object p0
.end method

.method private jr()V
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$6;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    const-string v4, "embeded_ad"

    .line 6
    .line 7
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->QSm:I

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p0

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->IUZ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 16
    .line 17
    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private oJ(II)Landroid/os/Message;
    .locals 2

    .line 11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 14
    iput p2, v0, Landroid/os/Message;->arg2:I

    :cond_0
    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;II)Landroid/os/Message;
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oJ(II)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oJ(Ljava/lang/String;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const-string v3, "embeded_ad"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ofl:Z

    return p1
.end method

.method private oq()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/tB;->so()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Xe()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/QSm/so;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/QSm/so;

    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->HL:Z

    return p1
.end method


# virtual methods
.method public IUZ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public Pfn()V
    .locals 2

    .line 8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/app/Activity;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public Pfn(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->tb:Z

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->HL:Z

    if-nez p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->WcQ:Landroid/content/Context;

    const-string v0, "Download later"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :catchall_0
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->HL:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->IUZ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_1
    return-void
.end method

.method public RZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public WcQ()V
    .locals 0

    .line 1
    return-void
.end method

.method protected ZYk()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oq()V

    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public awB()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public ba()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Xe()V

    return-void
.end method

.method protected ba(Z)V
    .locals 2

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ofl:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->WcQ:Landroid/content/Context;

    const-string v1, "tt_mute_wrapper"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->WcQ:Landroid/content/Context;

    const-string v1, "tt_unmute_wrapper"

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 10
    :goto_1
    const-string v0, "TTPWPActivity"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cFZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public dLZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public eZI()V
    .locals 0

    .line 1
    return-void
.end method

.method public e_()V
    .locals 0

    .line 1
    return-void
.end method

.method ex()V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    .line 4
    new-instance v7, Lcom/bytedance/sdk/openadsdk/tB/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rJ()Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/tB/tB;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/Ln;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    const v0, 0x1020002

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public ex(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public f_()V
    .locals 0

    .line 1
    return-void
.end method

.method public jFA()V
    .locals 0

    .line 1
    return-void
.end method

.method public mu()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 4

    .line 16
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_4

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->ex()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 18
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    :try_start_0
    const-string v2, "remove_loading_page_type"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_2

    .line 21
    const-string v2, "remove_loading_page_reason"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 22
    :cond_2
    :goto_0
    const-string p1, "playable_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oq:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz p1, :cond_3

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->getDisplayDuration()J

    move-result-wide v2

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    .line 25
    :goto_1
    const-string p1, "duration"

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 26
    :goto_2
    const-string v2, "TTPWPActivity"

    const-string v3, "handleMsg json error"

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const-string v2, "embeded_ad"

    const-string v3, "remove_loading_page"

    invoke-static {p1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Xe:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->tB()V

    :cond_4
    :goto_4
    return-void

    .line 31
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 4
    return-void
.end method

.method protected oJ()Z
    .locals 1

    .line 5
    const/4 v0, 0x1

    return v0
.end method

.method public oJ(JZ)Z
    .locals 0

    .line 6
    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oq()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const/4 v2, 0x1

    .line 19
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/16 v4, 0x400

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/high16 v4, 0x1000000

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Pfn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :catchall_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ZYk(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wHC()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Jm:Z

    .line 59
    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->eZI(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v3, 0x0

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    if-eq p1, v2, :cond_3

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    if-eq p1, v2, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 76
    .line 77
    .line 78
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Rl:I

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const/16 p1, 0xe

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->WcQ:Landroid/content/Context;

    .line 91
    .line 92
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->BTZ()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->QSm()V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->PiB()V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr()V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 109
    .line 110
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(ZLcom/bytedance/sdk/openadsdk/BTZ/ba;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Ry()V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    sub-long v4, v2, v0

    .line 127
    .line 128
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 129
    .line 130
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->XAo:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 131
    .line 132
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->LpP:Ljava/lang/String;

    .line 133
    .line 134
    const-string v7, "embeded_ad"

    .line 135
    .line 136
    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 140
    .line 141
    if-eqz p1, :cond_5

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ()V

    .line 144
    .line 145
    .line 146
    :cond_5
    return-void

    .line 147
    :catchall_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ex()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;->oJ(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;->BTZ()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Xe:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :catchall_0
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->LpP:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Jc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->nke:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 79
    .line 80
    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;->oJ(IILcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->XAo:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ofl;->oJ(Landroid/webkit/WebView;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V

    .line 106
    .line 107
    .line 108
    :cond_4
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Ry:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ()V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 118
    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ()V

    .line 122
    .line 123
    .line 124
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->XAo()V

    .line 129
    .line 130
    .line 131
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->HyG:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ex(Z)V

    .line 136
    .line 137
    .line 138
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/Ln;

    .line 139
    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Ln;->ZYk()V

    .line 143
    .line 144
    .line 145
    :cond_9
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Ry:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Ry:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->dLZ()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Ry:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->dLZ()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->HyG:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->cFZ()V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->cFZ()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ofl:Z

    .line 58
    .line 59
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ofl:Z

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ba(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Qu:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk()V

    .line 69
    .line 70
    .line 71
    :cond_6
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, -0x1

    .line 24
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ex:I

    .line 25
    .line 26
    const-string v1, "meta_index"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ex:I

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ex:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ex:I

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/tB;->kkU()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/tB;->jFA()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->HyG:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->so()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public si()V
    .locals 0

    .line 1
    return-void
.end method

.method protected tB()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->jr:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->Id()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/Ln;

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->ex()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/Ln;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ln;->oJ(Lcom/bytedance/sdk/openadsdk/core/Ln$oJ;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/Ln;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Ln;->oJ()V

    :cond_3
    :goto_0
    return-void
.end method
