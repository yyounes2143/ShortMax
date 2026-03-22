.class public Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;
.super Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Z

.field protected ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ba:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

.field private cFZ:Z

.field private dLZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/tB/oJ;",
            ">;"
        }
    .end annotation
.end field

.field private ex:Z

.field private jFA:I

.field private final kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected oJ:Landroid/content/Context;

.field private so:I

.field protected tB:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->so:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->jFA:I

    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->so:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    float-to-int p1, p1

    .line 36
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->jFA:I

    .line 37
    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->cFZ:Z

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->cFZ()Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ:Landroid/content/Context;

    .line 35
    .line 36
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->so:I

    .line 37
    .line 38
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->jFA:I

    .line 39
    .line 40
    invoke-direct {p1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/Id;Landroid/content/Context;II)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ba:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    :goto_0
    if-ge p1, v1, :cond_1

    .line 47
    .line 48
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->so:I

    .line 49
    .line 50
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->cFZ()Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->Pfn()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    int-to-float v4, v4

    .line 61
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    sub-int/2addr v2, v3

    .line 66
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->cFZ()Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ba()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    int-to-float v4, v4

    .line 77
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    sub-int/2addr v2, v3

    .line 82
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->cFZ()Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->cFZ()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    int-to-float v4, v4

    .line 93
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    mul-int/lit8 v3, v3, 0x2

    .line 98
    .line 99
    sub-int/2addr v2, v3

    .line 100
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 101
    .line 102
    int-to-float v2, v2

    .line 103
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->jFA:I

    .line 104
    .line 105
    int-to-float v4, v4

    .line 106
    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setExpressViewAccepted(FF)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v5, v2

    .line 118
    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 119
    .line 120
    if-eqz p1, :cond_0

    .line 121
    .line 122
    invoke-direct {p0, p1, v5}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 126
    .line 127
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 130
    .line 131
    const/4 v8, 0x1

    .line 132
    move-object v3, v2

    .line 133
    move-object v7, p0

    .line 134
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(I)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    add-int/lit8 p1, p1, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ba:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(Ljava/util/List;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 157
    .line 158
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ:Landroid/content/Context;

    .line 161
    .line 162
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 163
    .line 164
    const/4 v6, 0x0

    .line 165
    move-object v1, v7

    .line 166
    move-object v3, p1

    .line 167
    move-object v5, p0

    .line 168
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;Z)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    :cond_3
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VJm()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "0"

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    const-string p2, "price"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->cFZ:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->cFZ:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ba:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :catchall_0
    :cond_1
    return-void
.end method

.method public getBannerSize()Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 6
    .line 7
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->so:I

    .line 8
    .line 9
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->jFA:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->cFZ:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ba:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return-object v0

    .line 36
    :catchall_0
    :cond_1
    new-instance v0, Landroid/view/View;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->oJ:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    const-string v0, "PAGBannerAdImpl"

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

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

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->Pfn:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/nke;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->Pfn:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->cFZ:Z

    return v0
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 27
    .line 28
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$1;

    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionCallback;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionCallback;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->dLZ:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 27
    .line 28
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$2;

    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ex:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/nke;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/Double;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ;->ex:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
