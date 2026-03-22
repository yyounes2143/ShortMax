.class public Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;
.super Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field public HL:F

.field private HyG:Z

.field public IUZ:F

.field public Jc:I

.field private Jm:Z

.field public Ln:I

.field public LpP:F

.field private Qu:Z

.field private Rl:Z

.field public UN:I

.field public XAo:I

.field private cdg:Z

.field public mu:I

.field public nke:I

.field public ofl:F

.field public tb:I

.field private wd:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/ZYk/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;-><init>(Lcom/bytedance/adsdk/ugeno/ZYk/oJ;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->tb:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->HL:F

    .line 9
    .line 10
    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->IUZ:F

    .line 13
    .line 14
    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/oJ;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/oJ;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/oJ;->oJ()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Ln:I

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->LpP:F

    .line 25
    .line 26
    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/PiB;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/PiB;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/PiB;->oJ()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->nke:I

    .line 33
    .line 34
    return-void
.end method

.method private ex()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ;->LS()Lcom/bytedance/adsdk/ugeno/yoga/Pfn;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/Pfn;->tB:Lcom/bytedance/adsdk/ugeno/yoga/Pfn;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/high16 v3, -0x40000000    # -2.0f

    .line 17
    .line 18
    const/4 v4, -0x2

    .line 19
    const/high16 v5, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const/high16 v6, -0x40800000    # -1.0f

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XAo()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v4, :cond_0

    .line 32
    .line 33
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ:F

    .line 34
    .line 35
    cmpl-float v0, v0, v6

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Qu()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    iput v3, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ:F

    .line 48
    .line 49
    iput v5, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->IUZ:F

    .line 50
    .line 51
    iput v5, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->HL:F

    .line 52
    .line 53
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->wd:Z

    .line 54
    .line 55
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->LpP:F

    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    .line 58
    .line 59
    check-cast v0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ;->LS()Lcom/bytedance/adsdk/ugeno/yoga/Pfn;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/Pfn;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/Pfn;

    .line 66
    .line 67
    if-ne v0, v1, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ofl()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v4, :cond_1

    .line 76
    .line 77
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->ZYk:F

    .line 78
    .line 79
    cmpl-float v0, v0, v6

    .line 80
    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Qu()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    iput v3, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->ZYk:F

    .line 92
    .line 93
    iput v5, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->IUZ:F

    .line 94
    .line 95
    iput v5, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->HL:F

    .line 96
    .line 97
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->wd:Z

    .line 98
    .line 99
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->LpP:F

    .line 100
    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public ZYk()Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->ex()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;

    .line 5
    .line 6
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ:F

    .line 7
    .line 8
    float-to-int v1, v1

    .line 9
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->ZYk:F

    .line 10
    .line 11
    float-to-int v2, v2

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;-><init>(II)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->QSm:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->ba:F

    .line 20
    .line 21
    :goto_0
    float-to-int v1, v1

    .line 22
    int-to-float v1, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Pfn:F

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->BTZ(F)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oq:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->cFZ:F

    .line 35
    .line 36
    :goto_2
    float-to-int v1, v1

    .line 37
    int-to-float v1, v1

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Pfn:F

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_3
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->WcQ(F)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Id:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->so:F

    .line 50
    .line 51
    :goto_4
    float-to-int v1, v1

    .line 52
    int-to-float v1, v1

    .line 53
    goto :goto_5

    .line 54
    :cond_2
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Pfn:F

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :goto_5
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->dLZ(F)V

    .line 58
    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->cY:Z

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->jFA:F

    .line 65
    .line 66
    :goto_6
    float-to-int v1, v1

    .line 67
    int-to-float v1, v1

    .line 68
    goto :goto_7

    .line 69
    :cond_3
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->Pfn:F

    .line 70
    .line 71
    goto :goto_6

    .line 72
    :goto_7
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->PiB(F)V

    .line 73
    .line 74
    .line 75
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->tb:I

    .line 76
    .line 77
    int-to-float v1, v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ(F)V

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Ln:I

    .line 82
    .line 83
    int-to-float v1, v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->Pfn(F)V

    .line 85
    .line 86
    .line 87
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->HL:F

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ZYk(F)V

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->IUZ:F

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->tB(F)V

    .line 95
    .line 96
    .line 97
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->tB:F

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->eZI(F)V

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->ex:F

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->si(F)V

    .line 105
    .line 106
    .line 107
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->wd:Z

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->LpP:F

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ex(F)V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->nke:I

    .line 117
    .line 118
    int-to-float v1, v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ba(F)V

    .line 120
    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->HyG:Z

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Jc:I

    .line 127
    .line 128
    int-to-float v1, v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->cFZ(F)V

    .line 130
    .line 131
    .line 132
    :cond_5
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->cdg:Z

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->UN:I

    .line 137
    .line 138
    int-to-float v1, v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->jFA(F)V

    .line 140
    .line 141
    .line 142
    :cond_6
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Rl:Z

    .line 143
    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->mu:I

    .line 147
    .line 148
    int-to-float v1, v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->so(F)V

    .line 150
    .line 151
    .line 152
    :cond_7
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Jm:Z

    .line 153
    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->XAo:I

    .line 157
    .line 158
    int-to-float v1, v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->kkU(F)V

    .line 160
    .line 161
    .line 162
    :cond_8
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Qu:Z

    .line 163
    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->tB()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_9

    .line 171
    .line 172
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->ofl:F

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    cmpl-float v3, v1, v2

    .line 176
    .line 177
    if-lez v3, :cond_9

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->awB(F)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->tB(F)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ZYk(F)V

    .line 186
    .line 187
    .line 188
    :cond_9
    return-object v0
.end method

.method public synthetic oJ()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->ZYk()Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;

    move-result-object v0

    return-object v0
.end method

.method public oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "alignSelf"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "flexGrow"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "flexShrink"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "position"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v4, "right"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v4, "ratio"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "order"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v4, "left"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v4, "top"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v4, "bottom"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    move v3, v0

    goto :goto_0

    :sswitch_a
    const-string v4, "flexBasis"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-static {p3}, Lcom/bytedance/adsdk/ugeno/yoga/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/oJ;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/oJ;->oJ()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Ln:I

    return-void

    .line 7
    :pswitch_1
    invoke-static {p3, v2}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->HL:F

    return-void

    :pswitch_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    invoke-static {p3, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->IUZ:F

    return-void

    .line 9
    :pswitch_3
    invoke-static {p3}, Lcom/bytedance/adsdk/ugeno/yoga/PiB;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/PiB;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/PiB;->oJ()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->nke:I

    return-void

    .line 11
    :pswitch_4
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Jm:Z

    .line 12
    invoke-static {p3, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->XAo:I

    return-void

    .line 13
    :pswitch_5
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Qu:Z

    .line 14
    invoke-static {p3, v2}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->ofl:F

    :goto_1
    return-void

    .line 15
    :pswitch_6
    invoke-static {p3, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->tb:I

    return-void

    .line 16
    :pswitch_7
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Rl:Z

    .line 17
    invoke-static {p3, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->mu:I

    return-void

    .line 18
    :pswitch_8
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->HyG:Z

    .line 19
    invoke-static {p3, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Jc:I

    return-void

    .line 20
    :pswitch_9
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->cdg:Z

    .line 21
    invoke-static {p3, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->UN:I

    return-void

    .line 22
    :pswitch_a
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->wd:Z

    const/high16 p2, -0x40800000    # -1.0f

    .line 23
    invoke-static {p3, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->LpP:F

    .line 24
    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->LpP:F

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a52083b -> :sswitch_a
        -0x527265d5 -> :sswitch_9
        0x1c155 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x651874e -> :sswitch_6
        0x674500b -> :sswitch_5
        0x677c21c -> :sswitch_4
        0x2c929929 -> :sswitch_3
        0x3d759362 -> :sswitch_2
        0x67ef5bac -> :sswitch_1
        0x6953cff1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tB()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v2, v0, v1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->ZYk:F

    .line 11
    .line 12
    cmpl-float v1, v2, v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    .line 18
    .line 19
    cmpl-float v0, v0, v1

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->ZYk:F

    .line 24
    .line 25
    cmpl-float v0, v0, v1

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v3

    .line 31
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 32
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LayoutParams{mOrder="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->tb:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mFlexGrow="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->HL:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mFlexShrink="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->IUZ:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mAlignSelf="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Ln:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mFlexBasis="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->LpP:F

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mPosition="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->nke:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", mTop="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->Jc:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", mBottom="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->UN:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", mLeft="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->mu:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", mRight="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/oJ$oJ;->XAo:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 v1, 0x7d

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method
