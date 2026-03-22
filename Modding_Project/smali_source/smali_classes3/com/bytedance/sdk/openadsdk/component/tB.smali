.class public Lcom/bytedance/sdk/openadsdk/component/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/tB$ZYk;,
        Lcom/bytedance/sdk/openadsdk/component/tB$oJ;
    }
.end annotation


# instance fields
.field protected final BTZ:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

.field private HL:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

.field private IUZ:Landroid/view/View;

.field private Id:F

.field protected final Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

.field private PiB:Landroid/widget/RelativeLayout;

.field private QSm:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field private RZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field private Ry:Lcom/bytedance/sdk/openadsdk/core/widget/si;

.field private WcQ:Landroid/widget/ImageView;

.field private Xe:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field protected final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private awB:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field protected final ba:I

.field protected cFZ:I

.field private final cY:Lcom/bytedance/sdk/openadsdk/component/jFA/so;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field private eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field protected final ex:Landroid/widget/FrameLayout;

.field protected jFA:Landroid/view/View;

.field private jr:Lcom/bytedance/sdk/openadsdk/component/so/tB;

.field protected kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

.field protected final oJ:Landroid/app/Activity;

.field private oq:F

.field private si:Landroid/widget/ImageView;

.field protected so:Landroid/widget/FrameLayout;

.field protected final tB:Z

.field private tb:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/oJ;IZLcom/bytedance/sdk/openadsdk/component/so/oJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/jFA/so;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/so;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->cY:Lcom/bytedance/sdk/openadsdk/component/jFA/so;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ex:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ:I

    .line 18
    .line 19
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->tB:Z

    .line 20
    .line 21
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ba:I

    .line 28
    .line 29
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->BTZ:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 30
    .line 31
    return-void
.end method

.method private ZYk(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->so:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method private jFA()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->RZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->RZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->RZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->RZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->QSm:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->QSm:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->QSm:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Ry:Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Ry:Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 172
    .line 173
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 174
    .line 175
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/oJ;->tB()V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method private kkU()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ/oJ;->ZYk(Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/bytedance/sdk/openadsdk/Ry/oJ;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/Ry/oJ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/tB$ZYk;

    .line 63
    .line 64
    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/component/tB$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/component/tB;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const/16 v7, 0x19

    .line 72
    .line 73
    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/si;->oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ;IILcom/bytedance/sdk/openadsdk/utils/si$oJ;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/tB;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(Ljava/lang/Object;)V

    return-void
.end method

.method private oJ(Ljava/lang/Object;)V
    .locals 2

    .line 44
    :try_start_0
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->si:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    .line 47
    :catchall_0
    const-string p1, "open_ad"

    const-string v0, "bindBackGroundImage error"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "AppOpenAdNativeManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private so()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->cY:Lcom/bytedance/sdk/openadsdk/component/jFA/so;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/so;->oJ()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/tB;->jFA()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->tB:Z

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->so:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(Landroid/widget/FrameLayout;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/oJ;->tB()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/oJ;->ex()V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    .line 63
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/tB$oJ;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    .line 66
    .line 67
    invoke-direct {v3, v4, p0}, Lcom/bytedance/sdk/openadsdk/component/tB$oJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/tB;)V

    .line 68
    .line 69
    .line 70
    const/16 v4, 0x19

    .line 71
    .line 72
    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/ba$tB;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/tB;->kkU()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/oJ;->tB()V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Xe:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Xe:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 108
    .line 109
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    move v0, v3

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Xe:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 129
    .line 130
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move v0, v2

    .line 145
    :goto_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->tb:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 146
    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->tb:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 160
    .line 161
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 162
    .line 163
    invoke-virtual {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 167
    .line 168
    if-eqz v4, :cond_7

    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 172
    .line 173
    invoke-static {v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/eZI;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 174
    .line 175
    .line 176
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    if-eqz v4, :cond_6

    .line 183
    .line 184
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 185
    .line 186
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ex()D

    .line 191
    .line 192
    .line 193
    move-result-wide v4

    .line 194
    const-wide/16 v6, 0x0

    .line 195
    .line 196
    cmpg-double v4, v4, v6

    .line 197
    .line 198
    if-gez v4, :cond_8

    .line 199
    .line 200
    :cond_6
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 201
    .line 202
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    :cond_7
    move v3, v0

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->IUZ:Landroid/view/View;

    .line 207
    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    if-eqz v3, :cond_9

    .line 211
    .line 212
    move v1, v2

    .line 213
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    :cond_a
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 0

    .line 1
    return-void
.end method

.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/tB;->so()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/oJ;->tB()V

    return-void
.end method

.method protected ba()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->jFA:Landroid/view/View;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/tB$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/tB$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/tB;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 12
    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/tB$5;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/tB$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/tB;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->jr:Lcom/bytedance/sdk/openadsdk/component/so/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->awB:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/tB$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/tB$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/tB;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/tB;->ba()V

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->BTZ:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/so/oJ;)Lcom/bytedance/sdk/openadsdk/component/oJ/oJ;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/tB$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/tB$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/tB;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->jr:Lcom/bytedance/sdk/openadsdk/component/so/tB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;)V

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Yg()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->PiB:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->PiB:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public oJ(FF)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Id:F

    .line 63
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oq:F

    return-void
.end method

.method oJ(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->WcQ:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return-void
.end method

.method public oJ(IZ)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 69
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public oJ(Landroid/view/ViewGroup;)V
    .locals 9

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/jFA/ex;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/jFA/ex;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->lY()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/jFA/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/jFA/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 7
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->PiB:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getBackImage()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->si:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getVideoContainer()Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->so:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getImageView()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->WcQ:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getClickButton()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->eZI:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getAdLogo()Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->awB:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Xe:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getAdIconView()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->tb:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->HL:Lcom/bytedance/sdk/openadsdk/core/widget/eZI;

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getOverlayLayout()Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->IUZ:Landroid/view/View;

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getIconOnlyView()Lcom/bytedance/sdk/openadsdk/core/widget/si;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Ry:Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getTitle()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->RZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getContent()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->QSm:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/tB;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/tB;

    move-result-object p1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/tB;->oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    move-result p1

    if-nez p1, :cond_4

    .line 25
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->cY:Lcom/bytedance/sdk/openadsdk/component/jFA/so;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Id:F

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oq:F

    iget-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->tB:Z

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/jFA/so;->oJ(Lcom/bytedance/sdk/openadsdk/component/jFA/tB;Lcom/bytedance/sdk/openadsdk/core/model/cY;FFZ)V

    .line 26
    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getTopDisLike()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->jFA:Landroid/view/View;

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getTopSkip()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 29
    instance-of p1, v0, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;

    if-eqz p1, :cond_5

    .line 30
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/tB$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/tB;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;->setRenderListener(Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn$oJ;)V

    :cond_5
    return-void
.end method

.method oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->ZYk()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->WcQ:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->ZYk()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->ex()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->WcQ:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_1

    .line 53
    invoke-static {v0}, Lai/turbolink/sdk/campaign/b;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-static {v0}, Lai/turbolink/sdk/campaign/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p1

    invoke-static {p1}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->WcQ:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk()I

    move-result v0

    .line 58
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->tB()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/si;->oJ([BI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->WcQ:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->WcQ:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method protected oJ(Landroid/widget/FrameLayout;)Z
    .locals 3

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/so/tB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/so/tB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->jr:Lcom/bytedance/sdk/openadsdk/component/so/tB;

    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    return p1
.end method

.method public tB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->jr:Lcom/bytedance/sdk/openadsdk/component/so/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->BTZ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
