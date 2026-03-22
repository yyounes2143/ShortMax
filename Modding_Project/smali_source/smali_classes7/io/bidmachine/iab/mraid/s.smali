.class public Lio/bidmachine/iab/mraid/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/s$a;,
        Lio/bidmachine/iab/mraid/s$c;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/iab/mraid/s$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final b:Lio/bidmachine/iab/mraid/MraidWebView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lio/bidmachine/iab/mraid/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/s$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/mraid/s$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 5
    .line 6
    new-instance p2, Lio/bidmachine/iab/mraid/MraidWebView;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lio/bidmachine/iab/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lio/bidmachine/iab/mraid/s;->b:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 12
    .line 13
    new-instance p1, Lio/bidmachine/iab/mraid/s$c;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, p0, v0}, Lio/bidmachine/iab/mraid/s$c;-><init>(Lio/bidmachine/iab/mraid/s;Lio/bidmachine/iab/mraid/s$b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lio/bidmachine/iab/mraid/s$b;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/s$b;-><init>(Lio/bidmachine/iab/mraid/s;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lio/bidmachine/iab/mraid/MraidWebView;->setListener(Lio/bidmachine/iab/mraid/MraidWebView$a;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/s;->d:Z

    .line 32
    .line 33
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/s;->e:Z

    .line 34
    .line 35
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    const-string v0, "mraid.nativeCallComplete();"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic b(Lio/bidmachine/iab/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/s;->c(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "handleJsCommand - %s"

    .line 6
    .line 7
    const-string v2, "MraidWebViewController"

    .line 8
    .line 9
    invoke-static {v2, v1, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/iab/mraid/o;->p(Ljava/lang/String;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string v0, "command"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string p1, "handleJsCommand not found"

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v2, p1, v0}, Lio/bidmachine/iab/mraid/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0, v0, p1}, Lio/bidmachine/iab/mraid/s;->d(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/s;->a()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "useCustomClose"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    const-string v2, "url"

    .line 8
    .line 9
    const-string v3, "MraidWebViewController"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, -0x1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    sparse-switch v6, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 v5, 0xb

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :sswitch_1
    const-string v6, "storePicture"

    .line 35
    .line 36
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_1
    const/16 v5, 0xa

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :sswitch_2
    const-string v6, "setOrientationProperties"

    .line 49
    .line 50
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_2
    const/16 v5, 0x9

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :sswitch_3
    const-string v6, "close"

    .line 63
    .line 64
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_3
    const/16 v5, 0x8

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :sswitch_4
    const-string v6, "open"

    .line 77
    .line 78
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const/4 v5, 0x7

    .line 86
    goto :goto_0

    .line 87
    :sswitch_5
    const-string v6, "createCalendarEvent"

    .line 88
    .line 89
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const/4 v5, 0x6

    .line 97
    goto :goto_0

    .line 98
    :sswitch_6
    const-string v6, "resize"

    .line 99
    .line 100
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    const/4 v5, 0x5

    .line 108
    goto :goto_0

    .line 109
    :sswitch_7
    const-string v6, "noFill"

    .line 110
    .line 111
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_7

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    const/4 v5, 0x4

    .line 119
    goto :goto_0

    .line 120
    :sswitch_8
    const-string v6, "loaded"

    .line 121
    .line 122
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_8

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_8
    const/4 v5, 0x3

    .line 130
    goto :goto_0

    .line 131
    :sswitch_9
    const-string v6, "expand"

    .line 132
    .line 133
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_9

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_9
    move v5, v1

    .line 141
    goto :goto_0

    .line 142
    :sswitch_a
    const-string v6, "openPrivacySheet"

    .line 143
    .line 144
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_a

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_a
    const/4 v5, 0x1

    .line 152
    goto :goto_0

    .line 153
    :sswitch_b
    const-string v6, "playVideo"

    .line 154
    .line 155
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_b

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_b
    move v5, v4

    .line 163
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 164
    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :pswitch_0
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    iget-boolean p2, p0, Lio/bidmachine/iab/mraid/s;->d:Z

    .line 179
    .line 180
    if-eq p2, p1, :cond_e

    .line 181
    .line 182
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/s;->d:Z

    .line 183
    .line 184
    iget-object p2, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 185
    .line 186
    invoke-interface {p2, p1}, Lio/bidmachine/iab/mraid/s$a;->d(Z)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :pswitch_1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 192
    .line 193
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    check-cast p2, Ljava/lang/String;

    .line 198
    .line 199
    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/s$a;->g(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :pswitch_2
    const-string p1, "allowOrientationChange"

    .line 205
    .line 206
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    const-string v0, "forceOrientation"

    .line 217
    .line 218
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    check-cast p2, Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {p2}, Lio/bidmachine/iab/mraid/m;->a(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    new-instance v0, Lio/bidmachine/iab/mraid/m;

    .line 229
    .line 230
    invoke-direct {v0, p1, p2}, Lio/bidmachine/iab/mraid/m;-><init>(ZI)V

    .line 231
    .line 232
    .line 233
    iput-object v0, p0, Lio/bidmachine/iab/mraid/s;->f:Lio/bidmachine/iab/mraid/m;

    .line 234
    .line 235
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 236
    .line 237
    invoke-interface {p1, v0}, Lio/bidmachine/iab/mraid/s$a;->k(Lio/bidmachine/iab/mraid/m;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :pswitch_3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 243
    .line 244
    invoke-interface {p1}, Lio/bidmachine/iab/mraid/s$a;->onClose()V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :pswitch_4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    if-eqz p2, :cond_c

    .line 260
    .line 261
    new-array p1, v4, [Ljava/lang/Object;

    .line 262
    .line 263
    const-string p2, "url is null or empty"

    .line 264
    .line 265
    invoke-static {v3, p2, p1}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :cond_c
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/s;->r(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :pswitch_5
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 275
    .line 276
    const-string v0, "eventJSON"

    .line 277
    .line 278
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    check-cast p2, Ljava/lang/String;

    .line 283
    .line 284
    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/s$a;->i(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :pswitch_6
    new-array p1, v4, [Ljava/lang/Object;

    .line 289
    .line 290
    const-string p2, "mraid.resize is not supported"

    .line 291
    .line 292
    invoke-static {v3, p2, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :pswitch_7
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 297
    .line 298
    const-string p2, "Fired noFill event from mraid.js"

    .line 299
    .line 300
    invoke-static {p2}, Lqm/a;->g(Ljava/lang/String;)Lqm/a;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/s$a;->c(Lqm/a;)V

    .line 305
    .line 306
    .line 307
    goto :goto_1

    .line 308
    :pswitch_8
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 309
    .line 310
    invoke-interface {p1}, Lio/bidmachine/iab/mraid/s$a;->b()V

    .line 311
    .line 312
    .line 313
    goto :goto_1

    .line 314
    :pswitch_9
    new-array p1, v4, [Ljava/lang/Object;

    .line 315
    .line 316
    const-string p2, "mraid.expand is not supported"

    .line 317
    .line 318
    invoke-static {v3, p2, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    goto :goto_1

    .line 322
    :pswitch_a
    const-string p1, "data"

    .line 323
    .line 324
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    check-cast p1, Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    if-eqz p2, :cond_d

    .line 335
    .line 336
    new-array p1, v4, [Ljava/lang/Object;

    .line 337
    .line 338
    const-string p2, "data is null or empty"

    .line 339
    .line 340
    invoke-static {v3, p2, p1}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_d
    :try_start_0
    new-instance p2, Ljava/lang/String;

    .line 345
    .line 346
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 351
    .line 352
    .line 353
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 354
    .line 355
    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/s$a;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .line 357
    .line 358
    goto :goto_1

    .line 359
    :catchall_0
    new-array p1, v4, [Ljava/lang/Object;

    .line 360
    .line 361
    const-string p2, "data must be base64 encoded json"

    .line 362
    .line 363
    invoke-static {v3, p2, p1}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    goto :goto_1

    .line 367
    :pswitch_b
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 368
    .line 369
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    check-cast p2, Ljava/lang/String;

    .line 374
    .line 375
    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/s$a;->e(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_e
    :goto_1
    return-void

    .line 379
    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_b
        -0x655765df -> :sswitch_a
        -0x4cd72166 -> :sswitch_9
        -0x416acffb -> :sswitch_8
        -0x3e0d511c -> :sswitch_7
        -0x37b2634c -> :sswitch_6
        -0x2bba19a0 -> :sswitch_5
        0x34264a -> :sswitch_4
        0x5a5ddf8 -> :sswitch_3
        0x7f3dfe1 -> :sswitch_2
        0x1b5f6cdd -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
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

.method static synthetic e(Lio/bidmachine/iab/mraid/s;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/s;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lio/bidmachine/iab/mraid/s;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/s;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Lio/bidmachine/iab/mraid/s;)Lio/bidmachine/iab/mraid/s$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lio/bidmachine/iab/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/s;->r(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lio/bidmachine/iab/mraid/s;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/s;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method private r(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s;->b:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s;->a:Lio/bidmachine/iab/mraid/s$a;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lio/bidmachine/iab/mraid/s$a;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s;->b:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebView;->n()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    new-array p1, p1, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "MraidWebViewController"

    .line 24
    .line 25
    const-string v1, "Can\'t open url because webView wasn\'t clicked"

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method


# virtual methods
.method public g(II)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "(function click(x, y) {var ev = new MouseEvent(\'click\', {    \'view\': window,    \'bubbles\': true,    \'cancelable\': true,    \'screenX\': x,    \'screenY\': y});var el = document.elementFromPoint(x, y);if (el !== null) {      el.dispatchEvent(ev); }})(%s, %s)"

    .line 14
    .line 15
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public h(Lio/bidmachine/iab/utils/Logger$LogLevel;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/Logger$LogLevel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->info:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.INFO;"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->warning:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.WARNING;"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 32
    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.ERROR;"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->none:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 42
    .line 43
    if-ne p1, v0, :cond_4

    .line 44
    .line 45
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.NONE;"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_0
    return-void
.end method

.method public i(Lio/bidmachine/iab/mraid/MraidPlacementType;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidPlacementType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mraid.setPlacementType(\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidPlacementType;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "\');"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public j(Lio/bidmachine/iab/mraid/n;)V
    .locals 4
    .param p1    # Lio/bidmachine/iab/mraid/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/n;->j()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/n;->i()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "mraid.setScreenSize("

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ","

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ");mraid.setMaxSize("

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ");mraid.setCurrentPosition("

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/n;->a()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lsm/q;->M(Landroid/graphics/Rect;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ");mraid.setDefaultPosition("

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/n;->g()Landroid/graphics/Rect;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lsm/q;->M(Landroid/graphics/Rect;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ");mraid.fireSizeChangeEvent("

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/n;->a()Landroid/graphics/Rect;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lsm/q;->N(Landroid/graphics/Rect;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, ");"

    .line 109
    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public k(Lio/bidmachine/iab/mraid/MraidViewState;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidViewState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mraid.fireStateChangeEvent(\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidViewState;->toJsString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "\');"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public l(Lio/bidmachine/iab/mraid/j;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->d()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->e()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->f()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, ");"

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public m(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mraid.fireViewableChangeEvent("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ");"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method p(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s;->b:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebView;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lsm/q;->J(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t()Lio/bidmachine/iab/mraid/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s;->f:Lio/bidmachine/iab/mraid/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lio/bidmachine/iab/mraid/MraidWebView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s;->b:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/s;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/s;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s;->b:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/s;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    const-string v0, "mraid.fireReadyEvent();"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
