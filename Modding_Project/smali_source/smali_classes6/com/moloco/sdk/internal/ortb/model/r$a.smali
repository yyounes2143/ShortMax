.class public final synthetic Lcom/moloco/sdk/internal/ortb/model/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ortb/model/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ortb/model/r;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ortb/model/r$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/r$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ortb/model/r$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/r$a;->a:Lcom/moloco/sdk/internal/ortb/model/r$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ortb/model/r$a;->c:I

    .line 11
    .line 12
    new-instance v1, Lvt/h2;

    .line 13
    .line 14
    const-string v2, "com.moloco.sdk.internal.ortb.model.SdkEvents"

    .line 15
    .line 16
    const/16 v3, 0xa

    .line 17
    .line 18
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 19
    .line 20
    .line 21
    const-string v0, "on_ad_load_start"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "on_ad_load_failed"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "on_ad_load_success"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "on_ad_show_failed"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const-string v0, "on_ad_show_success"

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    const-string v0, "on_ad_clicked"

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    const-string v0, "on_ad_hidden"

    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    const-string v0, "on_user_rewarded"

    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const-string v0, "on_rewarded_video_started"

    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    const-string v0, "on_rewarded_video_completed"

    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    sput-object v1, Lcom/moloco/sdk/internal/ortb/model/r$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 73
    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/r;
    .locals 30
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "decoder"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/r$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lkotlinx/serialization/encoding/c;->decodeSequentially()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x9

    .line 19
    .line 20
    const/4 v4, 0x7

    .line 21
    const/4 v5, 0x6

    .line 22
    const/4 v6, 0x5

    .line 23
    const/4 v7, 0x3

    .line 24
    const/16 v8, 0x8

    .line 25
    .line 26
    const/4 v9, 0x4

    .line 27
    const/4 v10, 0x2

    .line 28
    const/4 v11, 0x1

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x0

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    sget-object v2, Lvt/w2;->a:Lvt/w2;

    .line 34
    .line 35
    invoke-interface {v0, v1, v12, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    check-cast v12, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0, v1, v11, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    check-cast v11, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v0, v1, v10, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    check-cast v10, Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v0, v1, v7, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v0, v1, v9, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v0, v1, v6, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0, v1, v5, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v0, v1, v4, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v0, v1, v8, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v0, v1, v3, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/String;

    .line 94
    .line 95
    const/16 v3, 0x3ff

    .line 96
    .line 97
    move-object/from16 v28, v2

    .line 98
    .line 99
    move/from16 v18, v3

    .line 100
    .line 101
    move-object/from16 v26, v4

    .line 102
    .line 103
    move-object/from16 v25, v5

    .line 104
    .line 105
    move-object/from16 v24, v6

    .line 106
    .line 107
    move-object/from16 v22, v7

    .line 108
    .line 109
    move-object/from16 v27, v8

    .line 110
    .line 111
    move-object/from16 v23, v9

    .line 112
    .line 113
    move-object/from16 v21, v10

    .line 114
    .line 115
    move-object/from16 v20, v11

    .line 116
    .line 117
    move-object/from16 v19, v12

    .line 118
    .line 119
    goto/16 :goto_3

    .line 120
    .line 121
    :cond_0
    move/from16 v16, v11

    .line 122
    .line 123
    move v2, v12

    .line 124
    move-object v5, v13

    .line 125
    move-object v6, v5

    .line 126
    move-object v7, v6

    .line 127
    move-object v9, v7

    .line 128
    move-object v10, v9

    .line 129
    move-object v11, v10

    .line 130
    move-object v12, v11

    .line 131
    move-object v14, v12

    .line 132
    move-object v15, v14

    .line 133
    :goto_0
    if-eqz v16, :cond_1

    .line 134
    .line 135
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    packed-switch v4, :pswitch_data_0

    .line 140
    .line 141
    .line 142
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 143
    .line 144
    invoke-direct {v0, v4}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :pswitch_0
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 149
    .line 150
    invoke-interface {v0, v1, v3, v4, v5}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    move-object v5, v4

    .line 155
    check-cast v5, Ljava/lang/String;

    .line 156
    .line 157
    or-int/lit16 v2, v2, 0x200

    .line 158
    .line 159
    :goto_1
    const/4 v4, 0x7

    .line 160
    goto :goto_0

    .line 161
    :pswitch_1
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 162
    .line 163
    invoke-interface {v0, v1, v8, v4, v6}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    move-object v6, v4

    .line 168
    check-cast v6, Ljava/lang/String;

    .line 169
    .line 170
    or-int/lit16 v2, v2, 0x100

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :pswitch_2
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 174
    .line 175
    const/4 v3, 0x7

    .line 176
    invoke-interface {v0, v1, v3, v4, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    move-object v9, v4

    .line 181
    check-cast v9, Ljava/lang/String;

    .line 182
    .line 183
    or-int/lit16 v2, v2, 0x80

    .line 184
    .line 185
    move v4, v3

    .line 186
    const/16 v3, 0x9

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_3
    const/4 v3, 0x7

    .line 190
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 191
    .line 192
    const/4 v3, 0x6

    .line 193
    invoke-interface {v0, v1, v3, v4, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    move-object v7, v4

    .line 198
    check-cast v7, Ljava/lang/String;

    .line 199
    .line 200
    or-int/lit8 v2, v2, 0x40

    .line 201
    .line 202
    :goto_2
    const/16 v3, 0x9

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :pswitch_4
    const/4 v3, 0x6

    .line 206
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 207
    .line 208
    const/4 v3, 0x5

    .line 209
    invoke-interface {v0, v1, v3, v4, v10}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    move-object v10, v4

    .line 214
    check-cast v10, Ljava/lang/String;

    .line 215
    .line 216
    or-int/lit8 v2, v2, 0x20

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :pswitch_5
    const/4 v3, 0x5

    .line 220
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 221
    .line 222
    const/4 v3, 0x4

    .line 223
    invoke-interface {v0, v1, v3, v4, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    move-object v11, v4

    .line 228
    check-cast v11, Ljava/lang/String;

    .line 229
    .line 230
    or-int/lit8 v2, v2, 0x10

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :pswitch_6
    const/4 v3, 0x4

    .line 234
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 235
    .line 236
    const/4 v3, 0x3

    .line 237
    invoke-interface {v0, v1, v3, v4, v12}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    move-object v12, v4

    .line 242
    check-cast v12, Ljava/lang/String;

    .line 243
    .line 244
    or-int/lit8 v2, v2, 0x8

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :pswitch_7
    const/4 v3, 0x3

    .line 248
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 249
    .line 250
    const/4 v3, 0x2

    .line 251
    invoke-interface {v0, v1, v3, v4, v15}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    move-object v15, v4

    .line 256
    check-cast v15, Ljava/lang/String;

    .line 257
    .line 258
    or-int/lit8 v2, v2, 0x4

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :pswitch_8
    const/4 v3, 0x2

    .line 262
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 263
    .line 264
    const/4 v3, 0x1

    .line 265
    invoke-interface {v0, v1, v3, v4, v14}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    move-object v14, v4

    .line 270
    check-cast v14, Ljava/lang/String;

    .line 271
    .line 272
    or-int/lit8 v2, v2, 0x2

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :pswitch_9
    const/4 v3, 0x1

    .line 276
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 277
    .line 278
    const/4 v3, 0x0

    .line 279
    invoke-interface {v0, v1, v3, v4, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    move-object v13, v4

    .line 284
    check-cast v13, Ljava/lang/String;

    .line 285
    .line 286
    or-int/lit8 v2, v2, 0x1

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :pswitch_a
    const/4 v3, 0x0

    .line 290
    move/from16 v16, v3

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_1
    move/from16 v18, v2

    .line 294
    .line 295
    move-object/from16 v28, v5

    .line 296
    .line 297
    move-object/from16 v27, v6

    .line 298
    .line 299
    move-object/from16 v25, v7

    .line 300
    .line 301
    move-object/from16 v26, v9

    .line 302
    .line 303
    move-object/from16 v24, v10

    .line 304
    .line 305
    move-object/from16 v23, v11

    .line 306
    .line 307
    move-object/from16 v22, v12

    .line 308
    .line 309
    move-object/from16 v19, v13

    .line 310
    .line 311
    move-object/from16 v20, v14

    .line 312
    .line 313
    move-object/from16 v21, v15

    .line 314
    .line 315
    :goto_3
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 316
    .line 317
    .line 318
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 319
    .line 320
    const/16 v29, 0x0

    .line 321
    .line 322
    move-object/from16 v17, v0

    .line 323
    .line 324
    invoke-direct/range {v17 .. v29}, Lcom/moloco/sdk/internal/ortb/model/r;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvt/r2;)V

    .line 325
    .line 326
    .line 327
    return-object v0

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch -0x1
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

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/r;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "encoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "value"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/r$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ortb/model/r;->b(Lcom/moloco/sdk/internal/ortb/model/r;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/d;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lvt/w2;->a:Lvt/w2;

    .line 2
    .line 3
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v10, 0xa

    .line 44
    .line 45
    new-array v10, v10, [Lkotlinx/serialization/KSerializer;

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    aput-object v1, v10, v11

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    aput-object v2, v10, v1

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    aput-object v3, v10, v1

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    aput-object v4, v10, v1

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    aput-object v5, v10, v1

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    aput-object v6, v10, v1

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    aput-object v7, v10, v1

    .line 67
    .line 68
    const/4 v1, 0x7

    .line 69
    aput-object v8, v10, v1

    .line 70
    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    aput-object v9, v10, v1

    .line 74
    .line 75
    const/16 v1, 0x9

    .line 76
    .line 77
    aput-object v0, v10, v1

    .line 78
    .line 79
    return-object v10
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ortb/model/r$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/r$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/model/r$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lvt/m0$a;->a(Lvt/m0;)[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
