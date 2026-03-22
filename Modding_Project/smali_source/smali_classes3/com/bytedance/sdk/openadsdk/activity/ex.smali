.class public Lcom/bytedance/sdk/openadsdk/activity/ex;
.super Lcom/bytedance/sdk/openadsdk/activity/tB;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/ex$ba;,
        Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;,
        Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;,
        Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;,
        Lcom/bytedance/sdk/openadsdk/activity/ex$tB;,
        Lcom/bytedance/sdk/openadsdk/activity/ex$ex;
    }
.end annotation


# instance fields
.field private final BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private HL:Z

.field private HyG:Landroid/widget/FrameLayout;

.field private IUZ:I

.field private Id:Z

.field private Jc:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

.field private Jm:Lorg/json/JSONObject;

.field private LS:Z

.field private Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

.field private LpP:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

.field private NO:Landroid/view/View;

.field private final Pfn:Landroidx/recyclerview/widget/RecyclerView;

.field private final PiB:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private QSm:I

.field private Qu:J

.field private RZ:Z

.field private Rl:Lorg/json/JSONObject;

.field private final Ry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private UN:Z

.field private final WcQ:Z

.field private XAo:I

.field private Xe:I

.field private Yg:Z

.field private final awB:Z

.field private final ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

.field private bgF:Z

.field private final cFZ:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private cY:I

.field private cdg:Z

.field private final dLZ:Z

.field private final eZI:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private jB:Z

.field private final jFA:Landroid/os/Handler;

.field private jr:Z

.field private final kkU:Landroid/widget/FrameLayout;

.field private lY:Z

.field private mu:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

.field private mwH:Landroid/os/Message;

.field private nQI:J

.field private nke:I

.field private oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

.field private ofl:Lorg/json/JSONObject;

.field private oq:I

.field private sH:Z

.field private final si:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field private final so:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

.field private tb:Z

.field private wd:Z

.field private yz:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/tB;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->PiB:Ljava/util/HashSet;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->eZI:Ljava/util/HashSet;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ry:Ljava/util/ArrayList;

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->QSm:I

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oq:I

    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    .line 52
    .line 53
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x1

    .line 57
    invoke-direct {v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->LpP:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/16 v3, 0x2c

    .line 67
    .line 68
    if-ne v2, v3, :cond_0

    .line 69
    .line 70
    move v2, v4

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v2, v1

    .line 73
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->WcQ:Z

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->dLZ:Z

    .line 80
    .line 81
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-ne v5, v4, :cond_1

    .line 86
    .line 87
    move v5, v4

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move v5, v1

    .line 90
    :goto_1
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->awB:Z

    .line 91
    .line 92
    new-instance v5, Lcom/bytedance/sdk/openadsdk/activity/ex$1;

    .line 93
    .line 94
    invoke-direct {v5, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->kkU:Landroid/widget/FrameLayout;

    .line 98
    .line 99
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    .line 101
    const/16 v7, 0x23

    .line 102
    .line 103
    if-lt v6, v7, :cond_2

    .line 104
    .line 105
    invoke-virtual {v5, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {p1, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    if-eqz v6, :cond_4

    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ()Lcom/bytedance/sdk/openadsdk/core/model/jr;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    if-eqz v6, :cond_4

    .line 122
    .line 123
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->awB()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->UN:Z

    .line 128
    .line 129
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ba()Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->mu:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->jFA()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->WcQ()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->tb:Z

    .line 150
    .line 151
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->dLZ()Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jr:Z

    .line 156
    .line 157
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->so()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY:I

    .line 162
    .line 163
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->BTZ()Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ofl:Lorg/json/JSONObject;

    .line 168
    .line 169
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->kkU()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Id:Z

    .line 174
    .line 175
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->oJ()Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->RZ:Z

    .line 180
    .line 181
    iget v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY:I

    .line 182
    .line 183
    if-lez v7, :cond_3

    .line 184
    .line 185
    move v7, v4

    .line 186
    goto :goto_2

    .line 187
    :cond_3
    move v7, v1

    .line 188
    :goto_2
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    .line 189
    .line 190
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ex()I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->QSm:I

    .line 195
    .line 196
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->Pfn()I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oq:I

    .line 201
    .line 202
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->ZYk()Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Rl:Lorg/json/JSONObject;

    .line 207
    .line 208
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->tB()Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jm:Lorg/json/JSONObject;

    .line 213
    .line 214
    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jr:Z

    .line 215
    .line 216
    if-nez v6, :cond_4

    .line 217
    .line 218
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->UN:Z

    .line 219
    .line 220
    :cond_4
    if-eqz v3, :cond_6

    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->MoK()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-gez v3, :cond_5

    .line 227
    .line 228
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-interface {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    iget v3, v3, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ba:I

    .line 245
    .line 246
    :cond_5
    const/16 v6, 0x64

    .line 247
    .line 248
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    int-to-float v3, v3

    .line 257
    const/high16 v6, 0x42c80000    # 100.0f

    .line 258
    .line 259
    div-float/2addr v3, v6

    .line 260
    const/high16 v6, 0x3f800000    # 1.0f

    .line 261
    .line 262
    sub-float/2addr v6, v3

    .line 263
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 264
    .line 265
    int-to-float v3, v3

    .line 266
    mul-float/2addr v6, v3

    .line 267
    float-to-int v3, v6

    .line 268
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Xe:I

    .line 269
    .line 270
    :cond_6
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    .line 272
    invoke-direct {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    .line 276
    .line 277
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->mu:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 278
    .line 279
    if-eqz v6, :cond_a

    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->tB()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->mu:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 286
    .line 287
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ex()I

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-gtz v6, :cond_7

    .line 292
    .line 293
    if-lez v7, :cond_8

    .line 294
    .line 295
    :cond_7
    int-to-float v6, v6

    .line 296
    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    int-to-float v7, v7

    .line 301
    invoke-static {p1, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    invoke-virtual {v3, v6, v1, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 306
    .line 307
    .line 308
    :cond_8
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->mu:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 309
    .line 310
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ZYk()I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->mu:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 315
    .line 316
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->oJ()I

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->mu:Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    .line 321
    .line 322
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->Pfn()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    if-gtz v6, :cond_9

    .line 327
    .line 328
    if-gtz v8, :cond_9

    .line 329
    .line 330
    if-lez v7, :cond_a

    .line 331
    .line 332
    :cond_9
    int-to-float v6, v6

    .line 333
    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    int-to-float v7, v7

    .line 338
    invoke-static {p1, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    int-to-float v8, v8

    .line 343
    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/ex$12;

    .line 348
    .line 349
    invoke-direct {v9, p0, v6, v8, v7}, Lcom/bytedance/sdk/openadsdk/activity/ex$12;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;III)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 353
    .line 354
    .line 355
    :cond_a
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 356
    .line 357
    invoke-direct {v6, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    .line 364
    .line 365
    invoke-direct {v6, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;-><init>(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->so:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    .line 369
    .line 370
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    .line 372
    const/4 v8, -0x2

    .line 373
    invoke-direct {v7, v0, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->load(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->setShowDislike(Z)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->setShowSound(Z)V

    .line 386
    .line 387
    .line 388
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-interface {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->eZI(Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HL:Z

    .line 405
    .line 406
    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->setSoundMute(Z)V

    .line 407
    .line 408
    .line 409
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;

    .line 410
    .line 411
    invoke-direct {v0, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ex$13;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;)V

    .line 415
    .line 416
    .line 417
    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/ex$14;

    .line 418
    .line 419
    invoke-direct {p3, p0, p1, v4, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex$14;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Landroid/content/Context;IZ)V

    .line 420
    .line 421
    .line 422
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 423
    .line 424
    invoke-virtual {v3, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 425
    .line 426
    .line 427
    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    .line 428
    .line 429
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BnM()Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-direct {p3, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Ljava/util/List;)V

    .line 434
    .line 435
    .line 436
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    .line 437
    .line 438
    invoke-virtual {v3, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 439
    .line 440
    .line 441
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    .line 442
    .line 443
    if-nez v0, :cond_b

    .line 444
    .line 445
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Id:Z

    .line 446
    .line 447
    if-nez v0, :cond_b

    .line 448
    .line 449
    const-string v0, "tt_list_end_tip"

    .line 450
    .line 451
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    :cond_b
    if-eqz v2, :cond_c

    .line 459
    .line 460
    new-instance p3, Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 461
    .line 462
    invoke-direct {p3}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 466
    .line 467
    .line 468
    goto :goto_3

    .line 469
    :cond_c
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jr:Z

    .line 470
    .line 471
    if-eqz p3, :cond_d

    .line 472
    .line 473
    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/view/oJ;

    .line 474
    .line 475
    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/oJ;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/oJ;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 479
    .line 480
    .line 481
    :cond_d
    :goto_3
    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/ex$15;

    .line 482
    .line 483
    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$15;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 487
    .line 488
    .line 489
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->LpP()V

    .line 490
    .line 491
    .line 492
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->QSm()I

    .line 493
    .line 494
    .line 495
    move-result p3

    .line 496
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ex$16;

    .line 497
    .line 498
    invoke-direct {v0, p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/activity/ex$16;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Landroid/app/Activity;I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 502
    .line 503
    .line 504
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 505
    .line 506
    .line 507
    move-result-object p3

    .line 508
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->si:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 509
    .line 510
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 511
    .line 512
    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    .line 514
    .line 515
    const/16 v1, 0x53

    .line 516
    .line 517
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 518
    .line 519
    const/high16 v1, 0x41800000    # 16.0f

    .line 520
    .line 521
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 522
    .line 523
    .line 524
    move-result p1

    .line 525
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 526
    .line 527
    invoke-virtual {v5, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    .line 529
    .line 530
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/ex$17;

    .line 531
    .line 532
    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex$17;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    .line 537
    .line 538
    return-void
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Yg:Z

    return p0
.end method

.method private HL()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cdg:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Rl:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 17
    .line 18
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->QSm:I

    .line 19
    .line 20
    int-to-long v2, v2

    .line 21
    const-wide/16 v4, 0x3e8

    .line 22
    .line 23
    mul-long/2addr v2, v4

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private IUZ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Rl:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Rl:Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jm:Lorg/json/JSONObject;

    .line 20
    .line 21
    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/ex$9;

    .line 22
    .line 23
    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$9;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/kkU/jFA/oJ;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method static synthetic Id(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    return-object p0
.end method

.method private Id()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Id:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->QSm()I

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ex$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Jc()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->yz:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->yz:J

    .line 28
    .line 29
    sub-long/2addr v4, v6

    .line 30
    const-wide/16 v6, 0x3e8

    .line 31
    .line 32
    div-long/2addr v4, v6

    .line 33
    long-to-int v1, v4

    .line 34
    sub-int/2addr v0, v1

    .line 35
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 36
    .line 37
    if-gez v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 41
    .line 42
    :cond_0
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->yz:J

    .line 43
    .line 44
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 45
    .line 46
    if-ltz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->tB()V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method private Ln()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Rl:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jB:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cdg:Z

    .line 16
    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ex$10;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex$10;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->NO:Landroid/view/View;

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->NO:Landroid/view/View;

    .line 40
    .line 41
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->kkU:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    .line 55
    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 62
    .line 63
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oq:I

    .line 64
    .line 65
    int-to-long v1, v1

    .line 66
    const-wide/16 v3, 0x3e8

    .line 67
    .line 68
    mul-long/2addr v1, v3

    .line 69
    const/4 v3, 0x4

    .line 70
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 74
    .line 75
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Jc()V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->UN()V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    return-void
.end method

.method private LpP()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ()Lcom/bytedance/sdk/openadsdk/core/model/jr;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->cFZ()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x1

    .line 33
    const/4 v4, -0x1

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v1, v0

    .line 37
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZZZ)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->RZ:Z

    return p0
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/activity/ex;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    return p0
.end method

.method private QSm()I
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Id:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->tB()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ex()I

    move-result v1

    const v2, 0x3fffffff    # 1.9999999f

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(III)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ(II)V

    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    if-gez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 7
    :cond_1
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic QSm(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Id:Z

    return p0
.end method

.method static synthetic RZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->Id()V

    return-void
.end method

.method static synthetic Ry(Lcom/bytedance/sdk/openadsdk/activity/ex;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private UN()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->sH:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->yz:J

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ZYk()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/activity/ex;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->XAo:I

    return p0
.end method

.method private Xe()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 25
    .line 26
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->UN()V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->mwH:Landroid/os/Message;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->handleMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->mwH:Landroid/os/Message;

    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    return-object p0
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ZYk()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eq v1, p1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->LpP:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    invoke-virtual {v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->LpP:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    invoke-virtual {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB:Z

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB()V

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex()V

    :cond_3
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB:Z

    .line 14
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/so;->ZYk(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->kkU:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->d_()Z

    move-result v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HL:Z

    if-eq v0, v1, :cond_6

    .line 22
    const-string v0, "card_sync"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Yg:Z

    return p1
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->UN:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private cY()V
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ex$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic cY(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->WcQ:Z

    return p0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/activity/ex;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->eZI:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic eZI(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->tb:Z

    return p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/activity/ex;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jB:Z

    return p1
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/activity/ex;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY:I

    return p0
.end method

.method private jr()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->LpP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->kkU:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->so:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->si:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex()V

    return-void
.end method

.method static synthetic jr(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->awB:Z

    return p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/activity/ex;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oq()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private nke()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method private static oJ(III)I
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    move p0, v0

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_3

    add-int v1, p2, v0

    .line 11
    rem-int v2, v1, p1

    if-ne v2, p0, :cond_1

    :goto_1
    move p2, v1

    goto :goto_2

    :cond_1
    sub-int v1, p2, v0

    .line 12
    rem-int v2, v1, p1

    if-ne v2, p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->XAo:I

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->NO:Landroid/view/View;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/activity/ex$ba;)Lcom/bytedance/sdk/openadsdk/activity/ex$ba;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Rl:Lorg/json/JSONObject;

    return-object p1
.end method

.method private oJ(I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-ge p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :cond_0
    if-gt p1, v1, :cond_2

    sub-int v0, p1, v0

    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    return-void

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->XAo:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private oJ(IIZ)V
    .locals 15

    move-object v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ltz v0, :cond_3

    if-ltz v1, :cond_3

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    .line 56
    const-string v2, "auto_down"

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_1
    if-le v1, v0, :cond_2

    const-string v2, "down"

    goto :goto_0

    :cond_2
    const-string v2, "up"

    goto :goto_0

    .line 57
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v5, v7, Lcom/bytedance/sdk/openadsdk/activity/ex;->Qu:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    div-long v5, v2, v5

    .line 58
    iget-object v2, v7, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->Pfn()Ljava/util/List;

    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, v0, v3

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    rem-int v8, v1, v0

    .line 61
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lcom/bytedance/sdk/openadsdk/activity/ex$6;

    move-object v0, v14

    move-object v1, p0

    move v2, v3

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/ex$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;IILjava/lang/String;J)V

    const-string v13, "slide"

    invoke-static/range {v9 .. v14}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private oJ(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY()V

    return-void
.end method

.method private oJ(IZ)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 37
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    if-nez v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    if-ne v1, p1, :cond_1

    return-void

    .line 39
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(IIZ)V

    .line 40
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Qu:J

    .line 42
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    .line 44
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->PiB:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cdg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY:I

    if-lez p1, :cond_2

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ()I

    move-result p2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY:I

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_2

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oq()V

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->RZ()Lcom/bytedance/sdk/openadsdk/activity/oJ;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 48
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->WcQ:Z

    if-nez v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 50
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    add-int/2addr v1, p2

    if-lt v0, v1, :cond_3

    .line 51
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->Pfn(Z)V

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->eZI:Ljava/util/HashSet;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->LpP()V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Yg:Z

    return-void

    .line 55
    :cond_4
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Yg:Z

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->jr()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;ILjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;IZ)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(IZ)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->tB(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 4

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ()Lcom/bytedance/sdk/openadsdk/core/model/jr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->BTZ()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ofl:Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->PiB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->WcQ:Z

    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 29
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v2

    invoke-interface {v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    move-result-object v2

    .line 32
    const-string v3, "material_meta"

    invoke-virtual {v2, v3, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v3, "ad_slot"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ex$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/Pfn/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/oJ$oJ;)V

    goto :goto_0

    .line 35
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ex$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    return-void

    :cond_0
    const/4 p1, -0x3

    .line 20
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 22
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HL:Z

    return p1
.end method

.method static synthetic oq(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HyG:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private oq()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HL;-><init>()V

    .line 5
    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ba:Z

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x2

    .line 7
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ofl:Lorg/json/JSONObject;

    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->cFZ:Lorg/json/JSONObject;

    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    const-string v4, "tt_loading_more"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/ex$18;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$18;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/QSm;)V

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/ex$19;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$19;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    return-void
.end method

.method static synthetic si(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/ex$ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    return-object p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->wd:Z

    .line 2
    .line 3
    return p0
.end method

.method private tB(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eq p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->UN:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 6
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->XAo:I

    .line 7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->WcQ:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(I)V

    goto :goto_0

    .line 10
    :cond_2
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->XAo:I

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ex$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 13
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->LS:Z

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB()V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->XAo()V

    :goto_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    .line 17
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->LS:Z

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HL:Z

    return p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/ex;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->UN:Z

    return p1
.end method

.method private tb()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->dLZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public BTZ()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    return-object v0
.end method

.method public Pfn()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public PiB()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public RZ()Lcom/bytedance/sdk/openadsdk/activity/oJ;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Ry()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->Ry()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->sH:Z

    return-void
.end method

.method public synthetic WcQ()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->RZ()Lcom/bytedance/sdk/openadsdk/activity/oJ;

    move-result-object v0

    return-object v0
.end method

.method public ZYk()V
    .locals 4

    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->lY:Z

    .line 25
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->sH:Z

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->LS:Z

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB()V

    .line 28
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nQI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nQI:J

    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc()V

    .line 31
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->HL()V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 33
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->UN()V

    return-void

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz p2, :cond_5

    .line 39
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Jc()V

    return-void

    .line 40
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc()V

    return-void

    :cond_3
    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_5

    .line 41
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->LpP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 42
    const-string p2, "CardsLayoutManager"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public ba()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->HL:Z

    return v0
.end method

.method public dLZ()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->PiB:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public eZI()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->Pfn()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ex()V
    .locals 3

    .line 3
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Rl()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->QSm()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ZYk()Ljava/util/ArrayList;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ex()V

    .line 14
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cY()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cMS()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$tB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$tB;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->lY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ry:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 9
    .line 10
    iget v3, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 15
    .line 16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v0, v2, :cond_3

    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    if-eq v0, p1, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x4

    .line 35
    if-eq v0, p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->Xe()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 47
    .line 48
    if-lez v0, :cond_5

    .line 49
    .line 50
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Xe:I

    .line 51
    .line 52
    if-gt v0, v2, :cond_4

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->tb()V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->so:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 65
    .line 66
    add-int/lit8 v4, v3, -0x1

    .line 67
    .line 68
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, "s"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->setSkipText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    .line 86
    .line 87
    if-ltz v0, :cond_7

    .line 88
    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 90
    .line 91
    iget v2, p1, Landroid/os/Message;->what:I

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    .line 97
    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    .line 99
    .line 100
    const-wide/16 v2, 0x3e8

    .line 101
    .line 102
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->tb()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->Pfn()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->so:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->showSkipButton()V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->so:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->showCloseButton()V

    .line 124
    .line 125
    .line 126
    :cond_7
    :goto_0
    return v1
.end method

.method public jFA()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    return v0
.end method

.method public oJ(Landroid/app/Activity;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/app/Activity;)V

    .line 64
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/app/Activity;)V

    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/os/Bundle;)V

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ()V

    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/view/View;)V

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->kkU:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 4

    .line 65
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eq p1, p2, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->HL()Z

    move-result p2

    const-wide/16 v0, 0x1f4

    if-nez p2, :cond_2

    .line 67
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 68
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->na()Lcom/bytedance/sdk/openadsdk/core/model/Xe;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB()I

    move-result p2

    int-to-long p2, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr p2, v2

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_2
    move-wide p2, v0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    if-eqz v2, :cond_3

    .line 71
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ex()V

    .line 72
    :cond_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/ex$7;

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;JLcom/bytedance/sdk/openadsdk/activity/so;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    .line 73
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->Pfn()V

    return-void
.end method

.method public oJ(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/activity/so;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/activity/so;",
            "FF)V"
        }
    .end annotation

    .line 90
    const-string p3, "pag_json_data"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_0

    .line 91
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 92
    :cond_0
    instance-of v0, p4, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 93
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    move-result-object v0

    .line 94
    move-object v1, p4

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "width"

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    move-object v1, p4

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->cFZ:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 98
    move-object v1, p4

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "click_feed_top"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ex()I

    move-result v0

    .line 100
    move-object v1, p4

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "click_on_final"

    if-ne p2, v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    move-object v0, p4

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "click_countdown_remaining"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nke:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    move-object v0, p4

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "click_user_remaining"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ:I

    if-ne p2, v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Qu:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Z)V

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB(Z)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;I)Z
    .locals 0

    .line 85
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Jc:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz p2, :cond_0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public si()V
    .locals 8

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->bgF:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->bgF:Z

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->nQI:J

    sub-long/2addr v0, v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/bytedance/sdk/openadsdk/activity/ex$11;

    invoke-direct {v7, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex$11;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex;J)V

    const-string v6, "first_ad_loaded"

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method public tB()V
    .locals 2

    .line 18
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->tB()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->lY:Z

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->Ln:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB()V

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->UN()V

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->oTd:Lcom/bytedance/sdk/openadsdk/activity/ex$ba;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->LS:Z

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex;->jFA:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
