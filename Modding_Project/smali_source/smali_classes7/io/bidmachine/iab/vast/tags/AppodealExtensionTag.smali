.class public Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;
.super Lio/bidmachine/iab/vast/tags/ExtensionTag;
.source "SourceFile"

# interfaces
.implements Ltm/b;


# instance fields
.field private final d:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final k:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final l:Lio/bidmachine/iab/vast/tags/PostBannerTag;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private m:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lio/bidmachine/iab/vast/tags/CompanionTag;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/ExtensionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 17
    .line 18
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 19
    .line 20
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 24
    .line 25
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 26
    .line 27
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 31
    .line 32
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 33
    .line 34
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 38
    .line 39
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 40
    .line 41
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 45
    .line 46
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 47
    .line 48
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 52
    .line 53
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 54
    .line 55
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 59
    .line 60
    new-instance v0, Lio/bidmachine/iab/vast/tags/PostBannerTag;

    .line 61
    .line 62
    invoke-direct {v0}, Lio/bidmachine/iab/vast/tags/PostBannerTag;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->r:Z

    .line 69
    .line 70
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->s:Z

    .line 71
    .line 72
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->t:Z

    .line 73
    .line 74
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->u:Z

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    const/4 v1, 0x0

    .line 78
    const-string v2, "Extension"

    .line 79
    .line 80
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const/4 v4, 0x3

    .line 88
    if-eq v3, v4, :cond_21

    .line 89
    .line 90
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eq v3, v0, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v4, "Video"

    .line 102
    .line 103
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 110
    .line 111
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const-string v4, "LoadingView"

    .line 116
    .line 117
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_3

    .line 122
    .line 123
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 124
    .line 125
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    const-string v4, "Countdown"

    .line 130
    .line 131
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 138
    .line 139
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_4
    const-string v4, "Progress"

    .line 144
    .line 145
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_5

    .line 150
    .line 151
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 152
    .line 153
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    const-string v4, "ClosableView"

    .line 158
    .line 159
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_6

    .line 164
    .line 165
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 166
    .line 167
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_6
    const-string v4, "Mute"

    .line 172
    .line 173
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_7

    .line 178
    .line 179
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 180
    .line 181
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_7
    const-string v4, "CTA"

    .line 186
    .line 187
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_8

    .line 192
    .line 193
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 194
    .line 195
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_8
    const-string v4, "RepeatView"

    .line 200
    .line 201
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_9

    .line 206
    .line 207
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 208
    .line 209
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_9
    const-string v4, "Postbanner"

    .line 215
    .line 216
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_a

    .line 221
    .line 222
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    .line 223
    .line 224
    invoke-virtual {v3, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->X(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_a
    const-string v4, "Autorotate"

    .line 230
    .line 231
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_b

    .line 236
    .line 237
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->p:Ljava/lang/Boolean;

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_b
    const-string v4, "R1"

    .line 250
    .line 251
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_c

    .line 256
    .line 257
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->t:Z

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_c
    const-string v4, "R2"

    .line 266
    .line 267
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_d

    .line 272
    .line 273
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->u:Z

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_d
    const-string v4, "ForceOrientation"

    .line 282
    .line 283
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_e

    .line 288
    .line 289
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->M(Ljava/lang/String;)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->v:Ljava/lang/Integer;

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_e
    const-string v4, "CtaText"

    .line 302
    .line 303
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_f

    .line 308
    .line 309
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 310
    .line 311
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->O(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_f
    const-string v4, "ShowCta"

    .line 321
    .line 322
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_10

    .line 327
    .line 328
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 329
    .line 330
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->s0(Ljava/lang/Boolean;)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_10
    const-string v4, "ShowMute"

    .line 344
    .line 345
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-eqz v4, :cond_11

    .line 350
    .line 351
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 352
    .line 353
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->s0(Ljava/lang/Boolean;)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_11
    const-string v4, "ShowCompanion"

    .line 367
    .line 368
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-eqz v4, :cond_12

    .line 373
    .line 374
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    .line 375
    .line 376
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->q0(Z)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :cond_12
    const-string v4, "CompanionCloseTime"

    .line 386
    .line 387
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-eqz v4, :cond_13

    .line 392
    .line 393
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-static {v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->L(Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    const/4 v4, -0x1

    .line 402
    if-le v3, v4, :cond_0

    .line 403
    .line 404
    iget-object v4, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    .line 405
    .line 406
    invoke-virtual {v4, v3}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->p0(I)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_13
    const-string v4, "Muted"

    .line 412
    .line 413
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-eqz v4, :cond_14

    .line 418
    .line 419
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->r:Z

    .line 424
    .line 425
    goto/16 :goto_0

    .line 426
    .line 427
    :cond_14
    const-string v4, "VideoClickable"

    .line 428
    .line 429
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    if-eqz v4, :cond_15

    .line 434
    .line 435
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->s:Z

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_15
    const-string v4, "CtaXPosition"

    .line 444
    .line 445
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    if-eqz v4, :cond_16

    .line 450
    .line 451
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 452
    .line 453
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->Q(Ljava/lang/String;)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :cond_16
    const-string v4, "CtaYPosition"

    .line 467
    .line 468
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    if-eqz v4, :cond_17

    .line 473
    .line 474
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 475
    .line 476
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_17
    const-string v4, "CloseXPosition"

    .line 490
    .line 491
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    if-eqz v4, :cond_18

    .line 496
    .line 497
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 498
    .line 499
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->Q(Ljava/lang/String;)Ljava/lang/Integer;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_0

    .line 511
    .line 512
    :cond_18
    const-string v4, "CloseYPosition"

    .line 513
    .line 514
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-eqz v4, :cond_19

    .line 519
    .line 520
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 521
    .line 522
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :cond_19
    const-string v4, "MuteXPosition"

    .line 536
    .line 537
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 538
    .line 539
    .line 540
    move-result v4

    .line 541
    if-eqz v4, :cond_1a

    .line 542
    .line 543
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 544
    .line 545
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->Q(Ljava/lang/String;)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_0

    .line 557
    .line 558
    :cond_1a
    const-string v4, "MuteYPosition"

    .line 559
    .line 560
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    if-eqz v4, :cond_1b

    .line 565
    .line 566
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 567
    .line 568
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :cond_1b
    const-string v4, "AssetsColor"

    .line 582
    .line 583
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    if-eqz v4, :cond_1c

    .line 588
    .line 589
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-static {v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->G(Ljava/lang/String;)Ljava/lang/Integer;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    if-eqz v3, :cond_0

    .line 598
    .line 599
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->m:Ljava/lang/Integer;

    .line 600
    .line 601
    goto/16 :goto_0

    .line 602
    .line 603
    :cond_1c
    const-string v4, "AssetsBackgroundColor"

    .line 604
    .line 605
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    if-eqz v4, :cond_1d

    .line 610
    .line 611
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-static {v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->G(Ljava/lang/String;)Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    if-eqz v3, :cond_0

    .line 620
    .line 621
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->n:Ljava/lang/Integer;

    .line 622
    .line 623
    goto/16 :goto_0

    .line 624
    .line 625
    :cond_1d
    const-string v4, "Companion"

    .line 626
    .line 627
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    if-eqz v4, :cond_1e

    .line 632
    .line 633
    new-instance v3, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 634
    .line 635
    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/CompanionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->u0()Z

    .line 639
    .line 640
    .line 641
    move-result v4

    .line 642
    if-eqz v4, :cond_0

    .line 643
    .line 644
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->s0()Z

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-eqz v4, :cond_0

    .line 649
    .line 650
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->o:Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 651
    .line 652
    goto/16 :goto_0

    .line 653
    .line 654
    :cond_1e
    const-string v4, "CloseTime"

    .line 655
    .line 656
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    if-eqz v4, :cond_1f

    .line 661
    .line 662
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    if-eqz v3, :cond_0

    .line 667
    .line 668
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->q:Ljava/lang/Float;

    .line 677
    .line 678
    goto/16 :goto_0

    .line 679
    .line 680
    :cond_1f
    const-string v4, "ShowProgress"

    .line 681
    .line 682
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    if-eqz v3, :cond_20

    .line 687
    .line 688
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 689
    .line 690
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->s0(Ljava/lang/Boolean;)V

    .line 699
    .line 700
    .line 701
    goto/16 :goto_0

    .line 702
    .line 703
    :cond_20
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->I(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_0

    .line 707
    .line 708
    :cond_21
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    return-void
.end method


# virtual methods
.method public Z()Lio/bidmachine/iab/vast/tags/CompanionTag;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->o:Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->n:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lio/bidmachine/iab/vast/tags/PostBannerTag;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public getVideoStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->q:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->m:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->p:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method
