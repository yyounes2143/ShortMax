.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BHY:J

.field public final BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public Dex:Z

.field public EP:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

.field public final HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

.field public final HyG:Landroid/app/Activity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

.field public final Id:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

.field public final Jm:Lcom/bytedance/sdk/component/utils/IUZ;

.field public LS:F

.field public final Ln:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

.field public final LpP:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

.field public MoK:Lcom/bytedance/sdk/openadsdk/common/PiB;

.field public NO:I

.field public final Pfn:Ljava/lang/String;

.field public final PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final Qu:Z

.field public final RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final Rl:Landroid/content/Context;

.field public final Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private SWT:J

.field public TA:Z

.field public UF:Z

.field public UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

.field public final UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

.field public VJm:Z

.field public VSB:Z

.field public final WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

.field public final Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

.field public YQ:Z

.field public Yg:Z

.field public ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field public final awB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public bD:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

.field public final ba:I

.field public bgF:Z

.field public final cFZ:Z

.field public final cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

.field public final dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ex:Z

.field public jB:I

.field public jFA:I

.field public jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

.field public final jr:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

.field public final kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public lY:I

.field public final mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public mwH:Z

.field public nQI:Ljava/lang/String;

.field public nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

.field public oCU:Lcom/bytedance/sdk/openadsdk/activity/so;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public oIC:J

.field public final oJ:I

.field public oTd:I

.field public final ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

.field public final oq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sH:Z

.field public final si:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public so:I

.field public final tB:Z

.field public final tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

.field public uvK:Z

.field public final wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

.field public yz:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/IUZ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;I)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jFA:I

    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->si:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Id:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    .line 104
    .line 105
    const-wide/16 v2, 0x0

    .line 106
    .line 107
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 111
    .line 112
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->YQ:Z

    .line 113
    .line 114
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 115
    .line 116
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 117
    .line 118
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    .line 123
    .line 124
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 125
    .line 126
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ:I

    .line 127
    .line 128
    if-eqz p5, :cond_1

    .line 129
    .line 130
    if-ne p5, v1, :cond_0

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_0
    move v2, v0

    .line 134
    goto :goto_1

    .line 135
    :cond_1
    :goto_0
    move v2, v1

    .line 136
    :goto_1
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->VSB:Z

    .line 137
    .line 138
    const/4 v2, 0x2

    .line 139
    if-eqz p5, :cond_3

    .line 140
    .line 141
    if-ne p5, v2, :cond_2

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    move v3, v0

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    :goto_2
    move v3, v1

    .line 147
    :goto_3
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Qu:Z

    .line 148
    .line 149
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 150
    .line 151
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    const/4 v3, 0x7

    .line 160
    if-ne p2, v3, :cond_4

    .line 161
    .line 162
    move v0, v1

    .line 163
    :cond_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 164
    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    const-string p2, "rewarded_video"

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_5
    const-string p2, "fullscreen_interstitial_ad"

    .line 171
    .line 172
    :goto_4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->TA:Z

    .line 179
    .line 180
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    .line 185
    .line 186
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 191
    .line 192
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->eZI(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 205
    .line 206
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->PiB(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    .line 219
    .line 220
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    .line 221
    .line 222
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 223
    .line 224
    .line 225
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    .line 226
    .line 227
    if-ne p5, v2, :cond_6

    .line 228
    .line 229
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/PiB;

    .line 230
    .line 231
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/PiB;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_6
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-eqz p2, :cond_7

    .line 240
    .line 241
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 242
    .line 243
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_7
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/dLZ;

    .line 248
    .line 249
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/dLZ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 250
    .line 251
    .line 252
    :goto_5
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 253
    .line 254
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 255
    .line 256
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 257
    .line 258
    .line 259
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 260
    .line 261
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 262
    .line 263
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 264
    .line 265
    .line 266
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 267
    .line 268
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

    .line 269
    .line 270
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 271
    .line 272
    .line 273
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

    .line 274
    .line 275
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 276
    .line 277
    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 278
    .line 279
    .line 280
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 281
    .line 282
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 283
    .line 284
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 285
    .line 286
    .line 287
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 288
    .line 289
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 290
    .line 291
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 292
    .line 293
    .line 294
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 295
    .line 296
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 297
    .line 298
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 299
    .line 300
    .line 301
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 302
    .line 303
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 304
    .line 305
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 306
    .line 307
    .line 308
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 309
    .line 310
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    .line 311
    .line 312
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 313
    .line 314
    .line 315
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    .line 316
    .line 317
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 318
    .line 319
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 320
    .line 321
    .line 322
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 323
    .line 324
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 325
    .line 326
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 327
    .line 328
    .line 329
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 330
    .line 331
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 332
    .line 333
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 334
    .line 335
    .line 336
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LpP:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 337
    .line 338
    new-instance p2, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    .line 339
    .line 340
    invoke-direct {p2, p4}, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;-><init>(Landroid/content/Context;)V

    .line 341
    .line 342
    .line 343
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    .line 344
    .line 345
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ$1;

    .line 346
    .line 347
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 348
    .line 349
    .line 350
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/jFA;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/jFA$oJ;)Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 355
    .line 356
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BHY:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BHY:J

    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->SWT:J

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BHY:J

    .line 22
    .line 23
    sub-long/2addr v2, v4

    .line 24
    add-long/2addr v0, v2

    .line 25
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->SWT:J

    .line 26
    .line 27
    return-void
.end method

.method public ex()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0
.end method

.method public oJ()V
    .locals 2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BHY:J

    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->sH:Z

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    return-void
.end method

.method public tB()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->SWT:J

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BHY:J

    .line 8
    .line 9
    sub-long/2addr v2, v4

    .line 10
    add-long/2addr v0, v2

    .line 11
    return-wide v0
.end method
