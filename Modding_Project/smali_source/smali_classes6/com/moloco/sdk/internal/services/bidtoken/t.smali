.class public final Lcom/moloco/sdk/internal/services/bidtoken/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/s;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/bidtoken/t$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/moloco/sdk/internal/services/j0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/j0;Lcom/moloco/sdk/internal/services/f;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/j0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "deviceInfoService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "screenInfoService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/t;->b:Lcom/moloco/sdk/internal/services/j0;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/t;->c:Lcom/moloco/sdk/internal/services/f;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/internal/services/bidtoken/providers/k;Lcom/moloco/sdk/internal/services/bidtoken/h;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents;
    .locals 8
    .param p1    # Lcom/moloco/sdk/internal/services/bidtoken/providers/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/bidtoken/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "clientSignals"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bidTokenConfig"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/t;->b:Lcom/moloco/sdk/internal/services/j0;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/j0;->b()Lcom/moloco/sdk/internal/services/i0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/t;->c:Lcom/moloco/sdk/internal/services/f;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/f;->a()Lcom/moloco/sdk/internal/services/e;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo$a;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->k()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo$a;->a(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo$a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->i(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo$a;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->a()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo$a;->a(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo$a;

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->b()Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo$a;->b(J)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo$a;

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->c()Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo$a;->c(J)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo$a;

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo;

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->j(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$MemoryInfo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo$a;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->c()Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;->a()Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_3

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo$a;->a(J)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo$a;

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->g(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;->a()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-eqz v4, :cond_4

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;->a()Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;->a(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;

    .line 168
    .line 169
    .line 170
    :cond_4
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;->b()Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    if-eqz v4, :cond_5

    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;->b(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;

    .line 185
    .line 186
    .line 187
    :cond_5
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;->c()Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-eqz v4, :cond_6

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;->c(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;

    .line 202
    .line 203
    .line 204
    :cond_6
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;->d()Lcom/moloco/sdk/internal/services/a;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    if-eqz v4, :cond_a

    .line 213
    .line 214
    instance-of v5, v4, Lcom/moloco/sdk/internal/services/a$a;

    .line 215
    .line 216
    if-eqz v5, :cond_7

    .line 217
    .line 218
    sget-object v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;->CELLULAR:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_7
    sget-object v5, Lcom/moloco/sdk/internal/services/a$b;->a:Lcom/moloco/sdk/internal/services/a$b;

    .line 222
    .line 223
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_8

    .line 228
    .line 229
    sget-object v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;->NO_NETWORK:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_8
    sget-object v5, Lcom/moloco/sdk/internal/services/a$c;->a:Lcom/moloco/sdk/internal/services/a$c;

    .line 233
    .line 234
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_9

    .line 239
    .line 240
    sget-object v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;->WIFI:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;

    .line 241
    .line 242
    :goto_0
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;->e(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$a;

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 247
    .line 248
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 249
    .line 250
    .line 251
    throw p1

    .line 252
    :cond_a
    :goto_1
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo;

    .line 257
    .line 258
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->k(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$a;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/h;->b()Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    if-eqz v4, :cond_b

    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$a;->c(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$a;

    .line 280
    .line 281
    .line 282
    :cond_b
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/h;->a()Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    const/4 v5, 0x5

    .line 291
    if-eqz v4, :cond_10

    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    const/4 v6, 0x2

    .line 298
    if-eq v4, v6, :cond_f

    .line 299
    .line 300
    const/4 v6, 0x3

    .line 301
    if-eq v4, v6, :cond_e

    .line 302
    .line 303
    const/4 v6, 0x4

    .line 304
    if-eq v4, v6, :cond_d

    .line 305
    .line 306
    if-eq v4, v5, :cond_c

    .line 307
    .line 308
    sget-object v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;->UNKNOWN:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_c
    sget-object v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;->FULL:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_d
    sget-object v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;->NOT_CHARGING:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_e
    sget-object v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;->DISCHARGING:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;

    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_f
    sget-object v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;->CHARGING:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;

    .line 321
    .line 322
    :goto_2
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$a;->a(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$BatteryStatus;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$a;

    .line 323
    .line 324
    .line 325
    :cond_10
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/h;->c()Ljava/lang/Boolean;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    if-eqz v4, :cond_11

    .line 334
    .line 335
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$a;->b(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo$a;

    .line 340
    .line 341
    .line 342
    :cond_11
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo;

    .line 347
    .line 348
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->e(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$BatteryInfo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 349
    .line 350
    .line 351
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo$a;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->b()Lcom/moloco/sdk/internal/services/o;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    instance-of v6, v4, Lcom/moloco/sdk/internal/services/o$a;

    .line 360
    .line 361
    const/4 v7, 0x1

    .line 362
    if-eqz v6, :cond_12

    .line 363
    .line 364
    const/4 v6, 0x0

    .line 365
    invoke-virtual {v3, v6}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo$a;->a(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo$a;

    .line 366
    .line 367
    .line 368
    check-cast v4, Lcom/moloco/sdk/internal/services/o$a;

    .line 369
    .line 370
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/o$a;->a()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo$a;->b(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo$a;

    .line 375
    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_12
    sget-object v6, Lcom/moloco/sdk/internal/services/o$b;->a:Lcom/moloco/sdk/internal/services/o$b;

    .line 379
    .line 380
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    if-eqz v4, :cond_24

    .line 385
    .line 386
    invoke-virtual {v3, v7}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo$a;->a(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo$a;

    .line 387
    .line 388
    .line 389
    :goto_3
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    check-cast v3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo;

    .line 394
    .line 395
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->b(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AdvertisingInfo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 396
    .line 397
    .line 398
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v4}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isAgeRestrictedUser()Ljava/lang/Boolean;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    if-eqz v4, :cond_13

    .line 411
    .line 412
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;->b(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;

    .line 417
    .line 418
    .line 419
    :cond_13
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {v4}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isUserConsent()Ljava/lang/Boolean;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    if-eqz v4, :cond_14

    .line 428
    .line 429
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;->c(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;

    .line 434
    .line 435
    .line 436
    :cond_14
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {v4}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isDoNotSell()Ljava/lang/Boolean;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    if-eqz v4, :cond_15

    .line 445
    .line 446
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;->a(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;

    .line 451
    .line 452
    .line 453
    :cond_15
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {v4}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->getTCFConsent()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    if-eqz v4, :cond_16

    .line 462
    .line 463
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;->e(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;

    .line 464
    .line 465
    .line 466
    :cond_16
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {v4}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->getUsPrivacy()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;->f(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy$a;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    check-cast v3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy;

    .line 482
    .line 483
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->l(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Privacy;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 484
    .line 485
    .line 486
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->e()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->m(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->j()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->s(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->f()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->o(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->h()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->p(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->d()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->j(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->g()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->b(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->l()Z

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    if-eqz v4, :cond_17

    .line 537
    .line 538
    goto :goto_4

    .line 539
    :cond_17
    move v5, v7

    .line 540
    :goto_4
    invoke-virtual {v3, v5}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->e(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3, v7}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->k(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 544
    .line 545
    .line 546
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo$a;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    new-instance v6, Ljava/util/Date;

    .line 555
    .line 556
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 560
    .line 561
    .line 562
    move-result-wide v6

    .line 563
    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    const v6, 0xea60

    .line 568
    .line 569
    .line 570
    div-int/2addr v5, v6

    .line 571
    invoke-virtual {v4, v5}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo$a;->a(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo$a;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    check-cast v4, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;

    .line 579
    .line 580
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->f(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Geo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/e;->f()I

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->v(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/e;->d()I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->g(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/e;->a()F

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    float-to-double v4, v4

    .line 602
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->u(D)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/e;->b()I

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->t(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->i()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->r(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 617
    .line 618
    .line 619
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/bidtoken/h;->a()Z

    .line 620
    .line 621
    .line 622
    move-result p2

    .line 623
    if-eqz p2, :cond_18

    .line 624
    .line 625
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->b()J

    .line 626
    .line 627
    .line 628
    move-result-wide v4

    .line 629
    invoke-virtual {p0, v4, v5}, Lcom/moloco/sdk/internal/services/bidtoken/t;->c(J)J

    .line 630
    .line 631
    .line 632
    move-result-wide v4

    .line 633
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->c(J)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 634
    .line 635
    .line 636
    :cond_18
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 637
    .line 638
    .line 639
    move-result-object p2

    .line 640
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/o;->c()Lcom/moloco/sdk/internal/services/H;

    .line 641
    .line 642
    .line 643
    move-result-object p2

    .line 644
    if-eqz p2, :cond_19

    .line 645
    .line 646
    invoke-virtual {p0, p2}, Lcom/moloco/sdk/internal/services/bidtoken/t;->e(Lcom/moloco/sdk/internal/services/H;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;

    .line 647
    .line 648
    .line 649
    move-result-object p2

    .line 650
    invoke-virtual {v3, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->q(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 651
    .line 652
    .line 653
    :cond_19
    iget-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/t;->b:Lcom/moloco/sdk/internal/services/j0;

    .line 654
    .line 655
    invoke-interface {p2}, Lcom/moloco/sdk/internal/services/j0;->a()Ljava/lang/Boolean;

    .line 656
    .line 657
    .line 658
    move-result-object p2

    .line 659
    if-eqz p2, :cond_1a

    .line 660
    .line 661
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 662
    .line 663
    .line 664
    move-result p2

    .line 665
    invoke-virtual {v3, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->i(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 666
    .line 667
    .line 668
    :cond_1a
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 669
    .line 670
    .line 671
    move-result-object p2

    .line 672
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/o;->a()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object p2

    .line 676
    if-eqz p2, :cond_1b

    .line 677
    .line 678
    invoke-virtual {v3, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->l(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 679
    .line 680
    .line 681
    :cond_1b
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 682
    .line 683
    .line 684
    move-result-object p2

    .line 685
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/o;->b()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object p2

    .line 689
    if-eqz p2, :cond_1c

    .line 690
    .line 691
    invoke-virtual {v3, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->n(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 692
    .line 693
    .line 694
    :cond_1c
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/e;->g()F

    .line 695
    .line 696
    .line 697
    move-result p2

    .line 698
    invoke-virtual {v3, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->w(F)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/e;->h()F

    .line 702
    .line 703
    .line 704
    move-result p2

    .line 705
    invoke-virtual {v3, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->x(F)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->c()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object p2

    .line 712
    invoke-virtual {v3, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->h(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/i0;->a()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object p2

    .line 719
    invoke-virtual {v3, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$a;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 723
    .line 724
    .line 725
    move-result-object p2

    .line 726
    check-cast p2, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;

    .line 727
    .line 728
    invoke-virtual {v2, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->f(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 729
    .line 730
    .line 731
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$a;

    .line 732
    .line 733
    .line 734
    move-result-object p2

    .line 735
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->d()Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/f;->b()Lcom/moloco/sdk/internal/services/z;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    if-eqz v0, :cond_1d

    .line 744
    .line 745
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/internal/services/bidtoken/t;->d(Lcom/moloco/sdk/internal/services/z;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {p2, v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$a;->a(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$a;

    .line 750
    .line 751
    .line 752
    :cond_1d
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->d()Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/f;->a()Ljava/lang/Integer;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    if-eqz v0, :cond_1e

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    invoke-virtual {p2, v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$a;->b(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$a;

    .line 767
    .line 768
    .line 769
    :cond_1e
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 770
    .line 771
    .line 772
    move-result-object p2

    .line 773
    check-cast p2, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo;

    .line 774
    .line 775
    invoke-virtual {v2, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->c(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 776
    .line 777
    .line 778
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;

    .line 779
    .line 780
    .line 781
    move-result-object p2

    .line 782
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a()Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/a;->c()Ljava/lang/Float;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    if-eqz v0, :cond_1f

    .line 791
    .line 792
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    invoke-virtual {p2, v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;->c(F)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;

    .line 797
    .line 798
    .line 799
    :cond_1f
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a()Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/a;->b()Ljava/lang/Boolean;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    if-eqz v0, :cond_20

    .line 808
    .line 809
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    invoke-virtual {p2, v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;->b(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;

    .line 814
    .line 815
    .line 816
    :cond_20
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a()Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/a;->a()Ljava/lang/Boolean;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    if-eqz v0, :cond_21

    .line 825
    .line 826
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    invoke-virtual {p2, v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;->a(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;

    .line 831
    .line 832
    .line 833
    :cond_21
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a()Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/a;->d()Ljava/lang/Boolean;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    if-eqz v0, :cond_22

    .line 842
    .line 843
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    invoke-virtual {p2, v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;->e(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo$a;

    .line 848
    .line 849
    .line 850
    :cond_22
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 851
    .line 852
    .line 853
    move-result-object p2

    .line 854
    check-cast p2, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo;

    .line 855
    .line 856
    invoke-virtual {v2, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->a(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AccessibilityInfo;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 857
    .line 858
    .line 859
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 860
    .line 861
    .line 862
    move-result-object p2

    .line 863
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->i()Z

    .line 864
    .line 865
    .line 866
    move-result p2

    .line 867
    if-eqz p2, :cond_23

    .line 868
    .line 869
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;

    .line 870
    .line 871
    .line 872
    move-result-object p2

    .line 873
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->g()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    invoke-virtual {p2, v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;->c(Ljava/lang/String;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;

    .line 882
    .line 883
    .line 884
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->c()J

    .line 889
    .line 890
    .line 891
    move-result-wide v0

    .line 892
    invoke-virtual {p2, v0, v1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;->b(J)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;

    .line 893
    .line 894
    .line 895
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->h()J

    .line 900
    .line 901
    .line 902
    move-result-wide v0

    .line 903
    invoke-virtual {p2, v0, v1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;->e(J)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;

    .line 904
    .line 905
    .line 906
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->a()I

    .line 915
    .line 916
    .line 917
    move-result v1

    .line 918
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;->a(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    .line 919
    .line 920
    .line 921
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->d()I

    .line 926
    .line 927
    .line 928
    move-result v1

    .line 929
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;->c(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    .line 930
    .line 931
    .line 932
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->e()I

    .line 937
    .line 938
    .line 939
    move-result v1

    .line 940
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;->e(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    .line 941
    .line 942
    .line 943
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->b()I

    .line 948
    .line 949
    .line 950
    move-result v1

    .line 951
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;->b(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    .line 952
    .line 953
    .line 954
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 955
    .line 956
    .line 957
    move-result-object p1

    .line 958
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->f()I

    .line 959
    .line 960
    .line 961
    move-result p1

    .line 962
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;->f(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 966
    .line 967
    .line 968
    move-result-object p1

    .line 969
    check-cast p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 970
    .line 971
    invoke-virtual {p2, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;->a(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$a;

    .line 972
    .line 973
    .line 974
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 975
    .line 976
    .line 977
    move-result-object p1

    .line 978
    check-cast p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData;

    .line 979
    .line 980
    invoke-virtual {v2, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;->h(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$a;

    .line 981
    .line 982
    .line 983
    :cond_23
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 984
    .line 985
    .line 986
    move-result-object p1

    .line 987
    const-string p2, "build(...)"

    .line 988
    .line 989
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    check-cast p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents;

    .line 993
    .line 994
    return-object p1

    .line 995
    :cond_24
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 996
    .line 997
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 998
    .line 999
    .line 1000
    throw p1
.end method

.method public b([B[B)[B
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "bidTokenComponents"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "secret"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidToken;->newBuilder()Lcom/moloco/sdk/BidToken$ClientBidToken$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {v0, p2}, Lcom/moloco/sdk/BidToken$ClientBidToken$a;->a(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidToken$ClientBidToken$a;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/BidToken$ClientBidToken$a;->b(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidToken$ClientBidToken$a;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/moloco/sdk/BidToken$ClientBidToken;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string/jumbo p2, "toByteArray(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method public final c(J)J
    .locals 2

    .line 1
    const v0, 0xf4240

    .line 2
    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    mul-long/2addr p1, v0

    .line 6
    return-wide p1
.end method

.method public final d(Lcom/moloco/sdk/internal/services/z;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/t$a;->b:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;->NORMAL:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 22
    .line 23
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;->VIBRATE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;->SILENT:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$AudioInfo$MuteSwitchState;

    .line 31
    .line 32
    :goto_0
    return-object p1
.end method

.method public final e(Lcom/moloco/sdk/internal/services/H;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/t$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;->LANDSCAPE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 22
    .line 23
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;->PORTRAIT:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;->UNKNOWN:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$Device$Orientation;

    .line 31
    .line 32
    :goto_0
    return-object p1
.end method
