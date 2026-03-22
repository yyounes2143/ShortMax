.class public final Lai/turbolink/sdk/events/TurboLinkEventDefaultExecute;
.super Ljava/lang/Object;
.source "TurboLinkEventDefaultExecute.kt"

# interfaces
.implements Lai/turbolink/sdk/events/TurboLinkEventExecute;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/events/TurboLinkEventDefaultExecute;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEventDefaultExecute;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/events/TurboLinkEventDefaultExecute;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/events/TurboLinkEventDefaultExecute;->INSTANCE:Lai/turbolink/sdk/events/TurboLinkEventDefaultExecute;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public execute(Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/events/TurboLinkEvent;)V
    .locals 6
    .param p1    # Lai/turbolink/sdk/TurboLink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/events/TurboLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "turboLink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "turboLinkEvent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lai/turbolink/sdk/events/TurboLinkEventExecute$DefaultImpls;->execute(Lai/turbolink/sdk/events/TurboLinkEventExecute;Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/events/TurboLinkEvent;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->INSTALL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 15
    .line 16
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->OPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 21
    .line 22
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getEvent()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v3, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 49
    .line 50
    if-eq v1, v3, :cond_0

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    sget-object v4, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REOPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 62
    .line 63
    invoke-virtual {v4}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    filled-new-array {v1, v3, v5}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getEvent()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 86
    .line 87
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getDisableAutoSessionInitialization()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    sget-object v5, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 98
    .line 99
    if-ne v3, v5, :cond_1

    .line 100
    .line 101
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getActivity()Landroid/app/Activity;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getEvent()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    sget-object p1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 127
    .line 128
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getActivity()Landroid/app/Activity;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getEvent()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLinkActivitySession;->withEvent(Ljava/lang/String;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/TurboLinkActivitySession;->withCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_2
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    sget-object p1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 168
    .line 169
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getActivity()Landroid/app/Activity;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getEvent()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLinkActivitySession;->withEvent(Ljava/lang/String;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/TurboLinkActivitySession;->withCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_3
    invoke-virtual {v4}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_4

    .line 207
    .line 208
    new-instance v0, Lai/turbolink/sdk/request/event/EventReopen;

    .line 209
    .line 210
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {v0, v1, p2}, Lai/turbolink/sdk/request/event/EventReopen;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_4
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REGISTER:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 227
    .line 228
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_6

    .line 237
    .line 238
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getActivity()Landroid/app/Activity;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-eqz v0, :cond_5

    .line 243
    .line 244
    new-instance v1, Lai/turbolink/sdk/request/event/EventRegister;

    .line 245
    .line 246
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-direct {v1, v2, p2, v0}, Lai/turbolink/sdk/request/event/EventRegister;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Landroid/app/Activity;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_5
    const-string p1, "The activity is null in call register method."

    .line 263
    .line 264
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_6
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->ADDTOCART:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 270
    .line 271
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_7

    .line 280
    .line 281
    new-instance v0, Lai/turbolink/sdk/request/event/EventAddtoCart;

    .line 282
    .line 283
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getAddtoCartProperties()Lai/turbolink/sdk/request/event/EventAddtoCartProperties;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-direct {v0, v1, v2, p2}, Lai/turbolink/sdk/request/event/EventAddtoCart;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Lai/turbolink/sdk/request/event/EventAddtoCartProperties;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_7
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CLICK:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 304
    .line 305
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_9

    .line 314
    .line 315
    new-instance v0, Lai/turbolink/sdk/request/event/EventClick;

    .line 316
    .line 317
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getLinkId()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    if-nez p2, :cond_8

    .line 330
    .line 331
    const-string p2, ""

    .line 332
    .line 333
    :cond_8
    invoke-direct {v0, v1, v2, p2}, Lai/turbolink/sdk/request/event/EventClick;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_9
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGIN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 342
    .line 343
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_b

    .line 352
    .line 353
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getActivity()Landroid/app/Activity;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-eqz v0, :cond_a

    .line 358
    .line 359
    new-instance v1, Lai/turbolink/sdk/request/event/EventLogin;

    .line 360
    .line 361
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getUserId()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    invoke-direct {v1, v2, v3, v0, p2}, Lai/turbolink/sdk/request/event/EventLogin;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 377
    .line 378
    .line 379
    goto :goto_0

    .line 380
    :cond_a
    const-string p1, "The activity is null in call login method."

    .line 381
    .line 382
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto :goto_0

    .line 386
    :cond_b
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGOUT:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 387
    .line 388
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_c

    .line 397
    .line 398
    new-instance v0, Lai/turbolink/sdk/request/event/EventLogout;

    .line 399
    .line 400
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    invoke-direct {v0, v1, p2}, Lai/turbolink/sdk/request/event/EventLogout;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 412
    .line 413
    .line 414
    goto :goto_0

    .line 415
    :cond_c
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CODESEARCH:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 416
    .line 417
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_d

    .line 426
    .line 427
    new-instance v0, Lai/turbolink/sdk/request/event/EventCodeSearch;

    .line 428
    .line 429
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-direct {v0, v1, p2}, Lai/turbolink/sdk/request/event/EventCodeSearch;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 441
    .line 442
    .line 443
    goto :goto_0

    .line 444
    :cond_d
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOADURL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 445
    .line 446
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-eqz v0, :cond_e

    .line 455
    .line 456
    new-instance v0, Lai/turbolink/sdk/request/event/EventLoadUrl;

    .line 457
    .line 458
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 463
    .line 464
    .line 465
    move-result-object p2

    .line 466
    invoke-direct {v0, v1, p2}, Lai/turbolink/sdk/request/event/EventLoadUrl;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 470
    .line 471
    .line 472
    :cond_e
    :goto_0
    return-void
.end method
