.class public Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;
.source "SourceFile"


# instance fields
.field private ZYk:Lcom/bytedance/sdk/openadsdk/common/si;

.field private oJ:Ljava/lang/String;

.field private tB:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)Lcom/bytedance/sdk/openadsdk/common/si;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/si;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;Lcom/bytedance/sdk/openadsdk/common/si;)Lcom/bytedance/sdk/openadsdk/common/si;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/si;

    return-object p1
.end method

.method public static oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "open_policy"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->tB()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Efd()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_extra_meta"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    const-string v0, "_extra_glo_d"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->tB()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_privacy_url"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->ex()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_privacy_title"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result p1

    const-string v0, "meta_index"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x0

    .line 12
    invoke-static {p0, p2, p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "_extra_meta"

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "_extra_glo_d"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "_privacy_url"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "_privacy_title"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    move-object v6, v5

    .line 70
    move-object v5, v4

    .line 71
    move-object v4, v3

    .line 72
    const/4 v3, 0x0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Landroid/content/Intent;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cY()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->tB()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->ex()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    move-object v6, v5

    .line 117
    move-object v5, v4

    .line 118
    move-object v4, v3

    .line 119
    move-object v3, v0

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_3

    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    .line 132
    .line 133
    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    .line 138
    const/16 v9, 0x23

    .line 139
    .line 140
    const/4 v10, 0x1

    .line 141
    if-lt v8, v9, :cond_4

    .line 142
    .line 143
    invoke-virtual {v7, v10}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 144
    .line 145
    .line 146
    :cond_4
    const/4 v8, -0x1

    .line 147
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    .line 149
    .line 150
    const v9, 0x1f00001e

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 157
    .line 158
    .line 159
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    .line 161
    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    :try_start_0
    invoke-virtual {v1, v7}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 168
    .line 169
    .line 170
    const/high16 v9, 0x40a00000    # 5.0f

    .line 171
    .line 172
    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    const/high16 v11, 0x41000000    # 8.0f

    .line 177
    .line 178
    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    const/high16 v12, 0x41200000    # 10.0f

    .line 183
    .line 184
    invoke-static {v1, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    const/high16 v13, 0x41400000    # 12.0f

    .line 189
    .line 190
    invoke-static {v1, v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    const/high16 v14, 0x41600000    # 14.0f

    .line 195
    .line 196
    invoke-static {v1, v14}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    const/high16 v15, 0x41a00000    # 20.0f

    .line 201
    .line 202
    invoke-static {v1, v15}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    const/high16 v2, 0x41c00000    # 24.0f

    .line 207
    .line 208
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    const/high16 v10, 0x42200000    # 40.0f

    .line 213
    .line 214
    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    const/high16 v8, 0x42300000    # 44.0f

    .line 219
    .line 220
    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    move-object/from16 v16, v4

    .line 225
    .line 226
    const/high16 v4, 0x433f0000    # 191.0f

    .line 227
    .line 228
    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    move-object/from16 v17, v5

    .line 233
    .line 234
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;

    .line 235
    .line 236
    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;-><init>(Landroid/content/Context;)V

    .line 237
    .line 238
    .line 239
    move-object/from16 v18, v0

    .line 240
    .line 241
    const/16 v0, 0xf

    .line 242
    .line 243
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;->setGravity(I)V

    .line 244
    .line 245
    .line 246
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 247
    .line 248
    move-object/from16 v19, v3

    .line 249
    .line 250
    const/4 v3, -0x1

    .line 251
    invoke-direct {v0, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 258
    .line 259
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    const v3, 0x1f000018

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 266
    .line 267
    .line 268
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    .line 270
    invoke-direct {v3, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .line 278
    .line 279
    const/4 v3, 0x1

    .line 280
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v14, v13, v14, v13}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 287
    .line 288
    .line 289
    const-string v3, "tt_ad_arrow_backward"

    .line 290
    .line 291
    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    .line 297
    .line 298
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 299
    .line 300
    invoke-direct {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 301
    .line 302
    .line 303
    move-object/from16 v20, v6

    .line 304
    .line 305
    const v6, 0x1f000014

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 309
    .line 310
    .line 311
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 312
    .line 313
    invoke-direct {v6, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 314
    .line 315
    .line 316
    move-object/from16 v21, v7

    .line 317
    .line 318
    const/16 v7, 0x11

    .line 319
    .line 320
    move-object/from16 v22, v0

    .line 321
    .line 322
    const v0, 0x1f000018

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .line 330
    .line 331
    const/4 v0, 0x1

    .line 332
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v13, v14, v13, v14}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 339
    .line 340
    .line 341
    const-string v0, "tt_ad_xmark"

    .line 342
    .line 343
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    .line 349
    .line 350
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 351
    .line 352
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SWT:I

    .line 356
    .line 357
    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 358
    .line 359
    .line 360
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 361
    .line 362
    invoke-direct {v6, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 366
    .line 367
    .line 368
    const/16 v2, 0xf

    .line 369
    .line 370
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 371
    .line 372
    .line 373
    const/16 v2, 0x10

    .line 374
    .line 375
    const v4, 0x1f00002d

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 379
    .line 380
    .line 381
    const v9, 0x1f000014

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    .line 389
    .line 390
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 391
    .line 392
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 396
    .line 397
    .line 398
    const/4 v6, 0x1

    .line 399
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 400
    .line 401
    .line 402
    const-string v6, "#222222"

    .line 403
    .line 404
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    .line 410
    .line 411
    const/high16 v6, 0x41880000    # 17.0f

    .line 412
    .line 413
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 414
    .line 415
    .line 416
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 417
    .line 418
    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6, v4}, Landroid/view/View;->setId(I)V

    .line 422
    .line 423
    .line 424
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 425
    .line 426
    invoke-direct {v4, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 427
    .line 428
    .line 429
    const v7, 0x1f00002e

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v6, v12, v13, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 439
    .line 440
    .line 441
    const-string v2, "tt_ad_link"

    .line 442
    .line 443
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    .line 449
    .line 450
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 451
    .line 452
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 456
    .line 457
    .line 458
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 459
    .line 460
    invoke-direct {v4, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 461
    .line 462
    .line 463
    const/16 v7, 0x15

    .line 464
    .line 465
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v13, v15, v13, v15}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 475
    .line 476
    .line 477
    const-string v4, "tt_ad_threedots"

    .line 478
    .line 479
    invoke-static {v1, v4}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    .line 485
    .line 486
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    .line 487
    .line 488
    const v7, 0x103001f

    .line 489
    .line 490
    .line 491
    const/4 v8, 0x0

    .line 492
    invoke-direct {v4, v1, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 493
    .line 494
    .line 495
    const v7, 0x1f00002f

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 499
    .line 500
    .line 501
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 502
    .line 503
    const/high16 v8, 0x40000000    # 2.0f

    .line 504
    .line 505
    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 506
    .line 507
    .line 508
    move-result v8

    .line 509
    const/4 v9, -0x1

    .line 510
    invoke-direct {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 511
    .line 512
    .line 513
    const/16 v8, 0xc

    .line 514
    .line 515
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    .line 520
    .line 521
    const/4 v7, 0x1

    .line 522
    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;->setProgress(I)V

    .line 523
    .line 524
    .line 525
    const-string v7, "tt_privacy_progress_style"

    .line 526
    .line 527
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    .line 533
    .line 534
    new-instance v7, Landroid/view/View;

    .line 535
    .line 536
    invoke-direct {v7, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 537
    .line 538
    .line 539
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 540
    .line 541
    const/high16 v10, 0x3f800000    # 1.0f

    .line 542
    .line 543
    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 544
    .line 545
    .line 546
    move-result v10

    .line 547
    const/4 v11, -0x1

    .line 548
    invoke-direct {v9, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    .line 556
    .line 557
    move-object/from16 v8, v22

    .line 558
    .line 559
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 578
    .line 579
    .line 580
    move-object/from16 v7, v21

    .line 581
    .line 582
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 583
    .line 584
    .line 585
    :try_start_1
    new-instance v5, Landroid/webkit/WebView;

    .line 586
    .line 587
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 588
    .line 589
    .line 590
    move-result-object v9

    .line 591
    invoke-direct {v5, v9}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 592
    .line 593
    .line 594
    iput-object v5, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 595
    .line 596
    const/4 v9, -0x1

    .line 597
    invoke-virtual {v5, v9}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 598
    .line 599
    .line 600
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 601
    .line 602
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 603
    .line 604
    invoke-direct {v10, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v7, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    .line 609
    .line 610
    new-instance v5, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$1;

    .line 611
    .line 612
    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v8, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    .line 617
    .line 618
    new-instance v5, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$2;

    .line 619
    .line 620
    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    .line 625
    .line 626
    const/4 v5, 0x4

    .line 627
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 628
    .line 629
    .line 630
    const/4 v5, 0x0

    .line 631
    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    .line 632
    .line 633
    .line 634
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 635
    .line 636
    .line 637
    move-result v7

    .line 638
    if-nez v7, :cond_5

    .line 639
    .line 640
    move-object/from16 v7, v20

    .line 641
    .line 642
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    .line 644
    .line 645
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$3;

    .line 646
    .line 647
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    .line 652
    .line 653
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;

    .line 654
    .line 655
    move-object/from16 v6, v18

    .line 656
    .line 657
    move-object/from16 v7, v19

    .line 658
    .line 659
    invoke-direct {v0, v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    .line 664
    .line 665
    move-object/from16 v0, v17

    .line 666
    .line 667
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 668
    .line 669
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    if-nez v0, :cond_7

    .line 674
    .line 675
    invoke-static/range {v16 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 680
    .line 681
    const-string v6, "?"

    .line 682
    .line 683
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    if-eqz v2, :cond_6

    .line 688
    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .line 693
    .line 694
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 695
    .line 696
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string v6, "&gdid_encrypted="

    .line 700
    .line 701
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 712
    .line 713
    goto :goto_1

    .line 714
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    .line 718
    .line 719
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 720
    .line 721
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    const-string v6, "?gdid_encrypted="

    .line 725
    .line 726
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 737
    .line 738
    :cond_7
    :goto_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 739
    .line 740
    if-eqz v0, :cond_8

    .line 741
    .line 742
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 743
    .line 744
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 749
    .line 750
    .line 751
    const/4 v2, 0x1

    .line 752
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 762
    .line 763
    .line 764
    :catchall_0
    new-instance v0, Ljava/util/HashMap;

    .line 765
    .line 766
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 767
    .line 768
    .line 769
    const-string v2, "Referer"

    .line 770
    .line 771
    const-string v5, "https://www.pangleglobal.com/"

    .line 772
    .line 773
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    :try_start_3
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 777
    .line 778
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 779
    .line 780
    invoke-virtual {v2, v5, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 781
    .line 782
    .line 783
    goto :goto_2

    .line 784
    :catchall_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 785
    .line 786
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    :goto_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 792
    .line 793
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$5;

    .line 794
    .line 795
    invoke-direct {v2, v1, v4, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 799
    .line 800
    .line 801
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 802
    .line 803
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$6;

    .line 804
    .line 805
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 809
    .line 810
    .line 811
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 812
    .line 813
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->ZYk(Landroid/webkit/WebView;)V

    .line 814
    .line 815
    .line 816
    return-void

    .line 817
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 818
    .line 819
    .line 820
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    const-string v2, "TTAD.TTWebsiteActivity"

    .line 823
    .line 824
    const-string v3, "onCreate: "

    .line 825
    .line 826
    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 830
    .line 831
    .line 832
    return-void

    .line 833
    :catchall_2
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 834
    .line 835
    .line 836
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->tB:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ofl;->oJ(Landroid/webkit/WebView;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
