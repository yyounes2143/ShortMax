.class Lcom/applovin/impl/e1$b;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/applovin/impl/e1;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/e1;Lcom/applovin/impl/adview/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/applovin/impl/e1$b;->a:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/applovin/impl/e1$b;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/applovin/impl/adview/a;

    .line 8
    .line 9
    const-string v0, "Unable to track navigation event ("

    .line 10
    .line 11
    const-string v1, "CustomTabsManager"

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, "). Controller is null."

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p2}, Lcom/applovin/impl/adview/a;->g()Lcom/applovin/impl/sdk/ad/b;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    iget-object p2, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 71
    .line 72
    invoke-static {p2}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    iget-object p2, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 86
    .line 87
    invoke-static {p2}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, "). No ad specified."

    .line 107
    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    return-void

    .line 119
    :cond_3
    const/4 v0, 0x0

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 124
    .line 125
    invoke-static {p2}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_6

    .line 137
    .line 138
    iget-object p2, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 139
    .line 140
    invoke-static {p2}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v2, "Unknown navigation event: "

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :pswitch_0
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Y0()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_4

    .line 175
    .line 176
    iget-object p1, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 177
    .line 178
    invoke-static {p1}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackCustomTabsTabHidden(Lcom/applovin/impl/sdk/ad/b;)V

    .line 187
    .line 188
    .line 189
    :cond_4
    new-instance p1, Landroid/content/Intent;

    .line 190
    .line 191
    const-string v1, "com.applovin.custom_tabs_hidden"

    .line 192
    .line 193
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcast(Landroid/content/Intent;Ljava/util/Map;)Z

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/applovin/impl/adview/a;->e()Lcom/applovin/adview/AppLovinAdViewEventListener;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p2}, Lcom/applovin/impl/adview/a;->i()Lcom/applovin/adview/AppLovinAdView;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {p1, v2, p2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :pswitch_1
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Y0()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_5

    .line 217
    .line 218
    iget-object p1, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 219
    .line 220
    invoke-static {p1}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackCustomTabsTabShown(Lcom/applovin/impl/sdk/ad/b;)V

    .line 229
    .line 230
    .line 231
    :cond_5
    new-instance p1, Landroid/content/Intent;

    .line 232
    .line 233
    const-string v1, "com.applovin.custom_tabs_shown"

    .line 234
    .line 235
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcast(Landroid/content/Intent;Ljava/util/Map;)Z

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Lcom/applovin/impl/adview/a;->e()Lcom/applovin/adview/AppLovinAdViewEventListener;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p2}, Lcom/applovin/impl/adview/a;->i()Lcom/applovin/adview/AppLovinAdView;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-static {p1, v2, p2}, Lcom/applovin/impl/q2;->c(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :pswitch_2
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Y0()Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_6

    .line 258
    .line 259
    iget-object p1, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 260
    .line 261
    invoke-static {p1}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackCustomTabsNavigationAborted(Lcom/applovin/impl/sdk/ad/b;)V

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :pswitch_3
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Y0()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_6

    .line 278
    .line 279
    iget-object p1, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 280
    .line 281
    invoke-static {p1}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackCustomTabsNavigationFailed(Lcom/applovin/impl/sdk/ad/b;)V

    .line 290
    .line 291
    .line 292
    goto :goto_0

    .line 293
    :pswitch_4
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Y0()Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-eqz p1, :cond_6

    .line 298
    .line 299
    iget-object p1, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 300
    .line 301
    invoke-static {p1}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackCustomTabsNavigationFinished(Lcom/applovin/impl/sdk/ad/b;)V

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :pswitch_5
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Y0()Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_6

    .line 318
    .line 319
    iget-object p1, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 320
    .line 321
    invoke-static {p1}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackCustomTabsNavigationStarted(Lcom/applovin/impl/sdk/ad/b;)V

    .line 330
    .line 331
    .line 332
    :cond_6
    :goto_0
    return-void

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p4, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    if-eqz p4, :cond_1

    .line 15
    .line 16
    iget-object p4, p0, Lcom/applovin/impl/e1$b;->b:Lcom/applovin/impl/e1;

    .line 17
    .line 18
    invoke-static {p4}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/e1;)Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "Validation "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    const-string p3, "succeeded"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p3, "failed"

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p3, " for session-URL relation("

    .line 47
    .line 48
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, "), requestedOrigin("

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ")"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "CustomTabsManager"

    .line 72
    .line 73
    invoke-virtual {p4, p2, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method
