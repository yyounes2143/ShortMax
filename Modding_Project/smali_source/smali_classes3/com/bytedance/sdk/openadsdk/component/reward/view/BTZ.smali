.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field BTZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;

.field private Id:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

.field Pfn:Landroid/widget/ImageView;

.field protected PiB:I

.field private QSm:I

.field private final RZ:Ljava/lang/String;

.field private final Ry:Z

.field protected final WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final ZYk:Landroid/app/Activity;

.field public awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

.field ba:Landroid/widget/FrameLayout;

.field cFZ:Landroid/view/View;

.field private cY:Lcom/bytedance/sdk/openadsdk/core/widget/dLZ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field dLZ:Landroid/widget/RelativeLayout;

.field eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

.field final ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field jFA:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field kkU:Landroid/widget/ImageView;

.field oJ:I

.field private oq:Z

.field si:Ljava/lang/Runnable;

.field so:Landroid/view/View;

.field protected final tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->PiB:I

    .line 9
    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ$2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->si:Ljava/lang/Runnable;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk:Landroid/app/Activity;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->RZ:Ljava/lang/String;

    .line 37
    .line 38
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 39
    .line 40
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Ry:Z

    .line 41
    .line 42
    return-void
.end method

.method private Ry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 4
    .line 5
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->BTZ:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 23
    .line 24
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Uf:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/dLZ;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cY:Lcom/bytedance/sdk/openadsdk/core/widget/dLZ;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 49
    .line 50
    const v1, 0x1f00003d

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->jFA:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 64
    .line 65
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->JC:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU:Landroid/widget/ImageView;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 78
    .line 79
    const v1, 0x1f00000c

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/ImageView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn:Landroid/widget/ImageView;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 93
    .line 94
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->dLZ:I

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/FrameLayout;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 107
    .line 108
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->si:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ:Landroid/view/View;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 119
    .line 120
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SCr:I

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so:Landroid/view/View;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 131
    .line 132
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->eGo:I

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->dLZ:Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;

    .line 143
    .line 144
    if-eqz v0, :cond_1

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ex()Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->dLZ:Landroid/widget/RelativeLayout;

    .line 153
    .line 154
    if-eqz v0, :cond_1

    .line 155
    .line 156
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ex()Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 163
    .line 164
    const/4 v3, -0x1

    .line 165
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ZYk()V

    .line 174
    .line 175
    .line 176
    :cond_1
    return-void
.end method

.method private oJ(Ljava/lang/String;)I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->RZ:Ljava/lang/String;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mVideoNativeFrame"

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->tB()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->dLZ:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void

    .line 16
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->dLZ:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method Pfn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zGT()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->WcQ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ex;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/tB;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(I)V

    :cond_1
    return-void
.end method

.method public Pfn(I)V
    .locals 2

    .line 6
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(I)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so()V

    :cond_0
    return-void
.end method

.method public PiB()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 4
    .line 5
    const-string v1, "tt_fade_out"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/cY;->jFA(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ$3;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public WcQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ba()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn:Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->si:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public ZYk()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oq:Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->QSm:I

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->oJ()V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Ry()V

    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->RZ:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Landroid/view/View;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ()V

    return-void
.end method

.method public ZYk(I)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/awB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method ZYk(Z)V
    .locals 2

    .line 10
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->QSm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 13
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 14
    const-string v0, "navigation_bar_height"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 15
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-le v0, v1, :cond_0

    .line 16
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ex;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/tB;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(I)V

    :cond_1
    return-void
.end method

.method public awB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->cFZ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ba()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public ba(I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    sub-long v4, v2, v4

    const-string v2, "show_close_button"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_0
    return-void
.end method

.method public cFZ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/16 v3, 0xb

    .line 21
    .line 22
    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public dLZ()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    .line 2
    .line 3
    return-object v0
.end method

.method public eZI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->so()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nYE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cY:Lcom/bytedance/sdk/openadsdk/core/widget/dLZ;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(I)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->jFA:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->dLZ:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method public ex(I)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->jFA:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method public jFA()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    return v1
.end method

.method public kkU()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(F)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;F)V

    return-void
.end method

.method public oJ(I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    .line 10
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x78

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 11
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    const-string v1, "tt_video_loading_progress_bar"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public oJ(II)V
    .locals 1

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->EP()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk:Landroid/app/Activity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result p1

    .line 20
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 p1, p1, 0x9

    .line 22
    div-int/lit8 p1, p1, 0x10

    .line 23
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk:Landroid/app/Activity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->PiB:I

    :cond_0
    return-void
.end method

.method public oJ(ILcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(ILcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mVideoNativeFrame"

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method public oJ(Landroid/view/animation/Animation;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->dLZ:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->YQ()Lcom/bytedance/sdk/openadsdk/core/model/dLZ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->YQ()Lcom/bytedance/sdk/openadsdk/core/model/dLZ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->ba:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->EP()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->YQ()Lcom/bytedance/sdk/openadsdk/core/model/dLZ;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 33
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 35
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->PiB:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 36
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->YQ()Lcom/bytedance/sdk/openadsdk/core/model/dLZ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->ZYk:Z

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->YQ()Lcom/bytedance/sdk/openadsdk/core/model/dLZ;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 43
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->PiB:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 46
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->YQ()Lcom/bytedance/sdk/openadsdk/core/model/dLZ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/dLZ;->ex:Z

    if-eqz v0, :cond_4

    .line 48
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 50
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->so:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->jFA:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    if-eqz p1, :cond_6

    .line 52
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/content/Context;FZ)F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_7
    return-void
.end method

.method public oJ(Z)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->jFA:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Ry()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(Z)V

    .line 6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Ry:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn()V

    :cond_2
    return-void
.end method

.method protected oJ()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public si()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->Pfn()Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;->onClick(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected so()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;->oJ()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public tB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public tB(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nYE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cY:Lcom/bytedance/sdk/openadsdk/core/widget/dLZ;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
