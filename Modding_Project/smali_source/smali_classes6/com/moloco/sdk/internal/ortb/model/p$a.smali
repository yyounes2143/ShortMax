.class public final synthetic Lcom/moloco/sdk/internal/ortb/model/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ortb/model/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ortb/model/p;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ortb/model/p$a;
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
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/p$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ortb/model/p$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/p$a;->a:Lcom/moloco/sdk/internal/ortb/model/p$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ortb/model/p$a;->c:I

    .line 11
    .line 12
    new-instance v1, Lvt/h2;

    .line 13
    .line 14
    const-string v2, "com.moloco.sdk.internal.ortb.model.Player"

    .line 15
    .line 16
    const/16 v3, 0xa

    .line 17
    .line 18
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "skip"

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "close"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v0, v3}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "progress_bar"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "mute"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v3}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "cta"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "is_all_area_clickable"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v3}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "auto_store"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v0, "vast_privacy_icon"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "dec"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string v0, "countdown_timer"

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    sput-object v1, Lcom/moloco/sdk/internal/ortb/model/p$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 76
    .line 77
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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/p;
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
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/p$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lcom/moloco/sdk/internal/ortb/model/t$a;->a:Lcom/moloco/sdk/internal/ortb/model/t$a;

    .line 34
    .line 35
    invoke-interface {v0, v1, v12, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    check-cast v12, Lcom/moloco/sdk/internal/ortb/model/t;

    .line 40
    .line 41
    invoke-interface {v0, v1, v11, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/moloco/sdk/internal/ortb/model/t;

    .line 46
    .line 47
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/q$a;->a:Lcom/moloco/sdk/internal/ortb/model/q$a;

    .line 48
    .line 49
    invoke-interface {v0, v1, v10, v11, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    check-cast v10, Lcom/moloco/sdk/internal/ortb/model/q;

    .line 54
    .line 55
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/o$a;->a:Lcom/moloco/sdk/internal/ortb/model/o$a;

    .line 56
    .line 57
    invoke-interface {v0, v1, v7, v11, v13}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Lcom/moloco/sdk/internal/ortb/model/o;

    .line 62
    .line 63
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/g$a;->a:Lcom/moloco/sdk/internal/ortb/model/g$a;

    .line 64
    .line 65
    invoke-interface {v0, v1, v9, v11, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    check-cast v9, Lcom/moloco/sdk/internal/ortb/model/g;

    .line 70
    .line 71
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/a$a;->a:Lcom/moloco/sdk/internal/ortb/model/a$a;

    .line 76
    .line 77
    invoke-interface {v0, v1, v5, v11, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/moloco/sdk/internal/ortb/model/a;

    .line 82
    .line 83
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/u$a;->a:Lcom/moloco/sdk/internal/ortb/model/u$a;

    .line 84
    .line 85
    invoke-interface {v0, v1, v4, v11, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Lcom/moloco/sdk/internal/ortb/model/u;

    .line 90
    .line 91
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/j$a;->a:Lcom/moloco/sdk/internal/ortb/model/j$a;

    .line 92
    .line 93
    invoke-interface {v0, v1, v8, v11, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    check-cast v8, Lcom/moloco/sdk/internal/ortb/model/j;

    .line 98
    .line 99
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/i$a;->a:Lcom/moloco/sdk/internal/ortb/model/i$a;

    .line 100
    .line 101
    invoke-interface {v0, v1, v3, v11, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lcom/moloco/sdk/internal/ortb/model/i;

    .line 106
    .line 107
    const/16 v11, 0x3ff

    .line 108
    .line 109
    move-object/from16 v20, v2

    .line 110
    .line 111
    move-object/from16 v28, v3

    .line 112
    .line 113
    move-object/from16 v26, v4

    .line 114
    .line 115
    move-object/from16 v25, v5

    .line 116
    .line 117
    move/from16 v24, v6

    .line 118
    .line 119
    move-object/from16 v22, v7

    .line 120
    .line 121
    move-object/from16 v27, v8

    .line 122
    .line 123
    move-object/from16 v23, v9

    .line 124
    .line 125
    move-object/from16 v21, v10

    .line 126
    .line 127
    move/from16 v18, v11

    .line 128
    .line 129
    move-object/from16 v19, v12

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_0
    move/from16 v16, v11

    .line 134
    .line 135
    move v2, v12

    .line 136
    move-object v5, v13

    .line 137
    move-object v6, v5

    .line 138
    move-object v7, v6

    .line 139
    move-object v9, v7

    .line 140
    move-object v10, v9

    .line 141
    move-object v11, v10

    .line 142
    move-object v14, v11

    .line 143
    move-object v15, v14

    .line 144
    move-object v12, v15

    .line 145
    move v13, v2

    .line 146
    :goto_0
    if-eqz v16, :cond_1

    .line 147
    .line 148
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    packed-switch v4, :pswitch_data_0

    .line 153
    .line 154
    .line 155
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 156
    .line 157
    invoke-direct {v0, v4}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :pswitch_0
    sget-object v4, Lcom/moloco/sdk/internal/ortb/model/i$a;->a:Lcom/moloco/sdk/internal/ortb/model/i$a;

    .line 162
    .line 163
    invoke-interface {v0, v1, v3, v4, v5}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    move-object v5, v4

    .line 168
    check-cast v5, Lcom/moloco/sdk/internal/ortb/model/i;

    .line 169
    .line 170
    or-int/lit16 v13, v13, 0x200

    .line 171
    .line 172
    :goto_1
    const/4 v4, 0x7

    .line 173
    goto :goto_0

    .line 174
    :pswitch_1
    sget-object v4, Lcom/moloco/sdk/internal/ortb/model/j$a;->a:Lcom/moloco/sdk/internal/ortb/model/j$a;

    .line 175
    .line 176
    invoke-interface {v0, v1, v8, v4, v6}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    move-object v6, v4

    .line 181
    check-cast v6, Lcom/moloco/sdk/internal/ortb/model/j;

    .line 182
    .line 183
    or-int/lit16 v13, v13, 0x100

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_2
    sget-object v4, Lcom/moloco/sdk/internal/ortb/model/u$a;->a:Lcom/moloco/sdk/internal/ortb/model/u$a;

    .line 187
    .line 188
    const/4 v3, 0x7

    .line 189
    invoke-interface {v0, v1, v3, v4, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    move-object v9, v4

    .line 194
    check-cast v9, Lcom/moloco/sdk/internal/ortb/model/u;

    .line 195
    .line 196
    or-int/lit16 v13, v13, 0x80

    .line 197
    .line 198
    move v4, v3

    .line 199
    const/16 v3, 0x9

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_3
    const/4 v3, 0x7

    .line 203
    sget-object v4, Lcom/moloco/sdk/internal/ortb/model/a$a;->a:Lcom/moloco/sdk/internal/ortb/model/a$a;

    .line 204
    .line 205
    const/4 v3, 0x6

    .line 206
    invoke-interface {v0, v1, v3, v4, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    move-object v7, v4

    .line 211
    check-cast v7, Lcom/moloco/sdk/internal/ortb/model/a;

    .line 212
    .line 213
    or-int/lit8 v13, v13, 0x40

    .line 214
    .line 215
    :goto_2
    const/16 v3, 0x9

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :pswitch_4
    const/4 v3, 0x6

    .line 219
    const/4 v4, 0x5

    .line 220
    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    or-int/lit8 v13, v13, 0x20

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :pswitch_5
    const/4 v4, 0x5

    .line 228
    sget-object v3, Lcom/moloco/sdk/internal/ortb/model/g$a;->a:Lcom/moloco/sdk/internal/ortb/model/g$a;

    .line 229
    .line 230
    const/4 v4, 0x4

    .line 231
    invoke-interface {v0, v1, v4, v3, v10}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    move-object v10, v3

    .line 236
    check-cast v10, Lcom/moloco/sdk/internal/ortb/model/g;

    .line 237
    .line 238
    or-int/lit8 v13, v13, 0x10

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :pswitch_6
    const/4 v4, 0x4

    .line 242
    sget-object v3, Lcom/moloco/sdk/internal/ortb/model/o$a;->a:Lcom/moloco/sdk/internal/ortb/model/o$a;

    .line 243
    .line 244
    const/4 v4, 0x3

    .line 245
    invoke-interface {v0, v1, v4, v3, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    move-object v11, v3

    .line 250
    check-cast v11, Lcom/moloco/sdk/internal/ortb/model/o;

    .line 251
    .line 252
    or-int/lit8 v13, v13, 0x8

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :pswitch_7
    const/4 v4, 0x3

    .line 256
    sget-object v3, Lcom/moloco/sdk/internal/ortb/model/q$a;->a:Lcom/moloco/sdk/internal/ortb/model/q$a;

    .line 257
    .line 258
    const/4 v4, 0x2

    .line 259
    invoke-interface {v0, v1, v4, v3, v12}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    move-object v12, v3

    .line 264
    check-cast v12, Lcom/moloco/sdk/internal/ortb/model/q;

    .line 265
    .line 266
    or-int/lit8 v13, v13, 0x4

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :pswitch_8
    const/4 v4, 0x2

    .line 270
    sget-object v3, Lcom/moloco/sdk/internal/ortb/model/t$a;->a:Lcom/moloco/sdk/internal/ortb/model/t$a;

    .line 271
    .line 272
    const/4 v4, 0x1

    .line 273
    invoke-interface {v0, v1, v4, v3, v15}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    move-object v15, v3

    .line 278
    check-cast v15, Lcom/moloco/sdk/internal/ortb/model/t;

    .line 279
    .line 280
    or-int/lit8 v13, v13, 0x2

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :pswitch_9
    const/4 v4, 0x1

    .line 284
    sget-object v3, Lcom/moloco/sdk/internal/ortb/model/t$a;->a:Lcom/moloco/sdk/internal/ortb/model/t$a;

    .line 285
    .line 286
    const/4 v4, 0x0

    .line 287
    invoke-interface {v0, v1, v4, v3, v14}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    move-object v14, v3

    .line 292
    check-cast v14, Lcom/moloco/sdk/internal/ortb/model/t;

    .line 293
    .line 294
    or-int/lit8 v13, v13, 0x1

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :pswitch_a
    const/4 v4, 0x0

    .line 298
    move/from16 v16, v4

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_1
    move/from16 v24, v2

    .line 303
    .line 304
    move-object/from16 v28, v5

    .line 305
    .line 306
    move-object/from16 v27, v6

    .line 307
    .line 308
    move-object/from16 v25, v7

    .line 309
    .line 310
    move-object/from16 v26, v9

    .line 311
    .line 312
    move-object/from16 v23, v10

    .line 313
    .line 314
    move-object/from16 v22, v11

    .line 315
    .line 316
    move-object/from16 v21, v12

    .line 317
    .line 318
    move/from16 v18, v13

    .line 319
    .line 320
    move-object/from16 v19, v14

    .line 321
    .line 322
    move-object/from16 v20, v15

    .line 323
    .line 324
    :goto_3
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 325
    .line 326
    .line 327
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/p;

    .line 328
    .line 329
    const/16 v29, 0x0

    .line 330
    .line 331
    move-object/from16 v17, v0

    .line 332
    .line 333
    invoke-direct/range {v17 .. v29}, Lcom/moloco/sdk/internal/ortb/model/p;-><init>(ILcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/t;Lcom/moloco/sdk/internal/ortb/model/q;Lcom/moloco/sdk/internal/ortb/model/o;Lcom/moloco/sdk/internal/ortb/model/g;ZLcom/moloco/sdk/internal/ortb/model/a;Lcom/moloco/sdk/internal/ortb/model/u;Lcom/moloco/sdk/internal/ortb/model/j;Lcom/moloco/sdk/internal/ortb/model/i;Lvt/r2;)V

    .line 334
    .line 335
    .line 336
    return-object v0

    .line 337
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

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/p;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/p;
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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/p$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ortb/model/p;->b(Lcom/moloco/sdk/internal/ortb/model/p;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    .locals 10
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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/t$a;->a:Lcom/moloco/sdk/internal/ortb/model/t$a;

    .line 2
    .line 3
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/moloco/sdk/internal/ortb/model/q$a;->a:Lcom/moloco/sdk/internal/ortb/model/q$a;

    .line 8
    .line 9
    invoke-static {v2}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lcom/moloco/sdk/internal/ortb/model/g$a;->a:Lcom/moloco/sdk/internal/ortb/model/g$a;

    .line 14
    .line 15
    invoke-static {v3}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Lcom/moloco/sdk/internal/ortb/model/a$a;->a:Lcom/moloco/sdk/internal/ortb/model/a$a;

    .line 20
    .line 21
    invoke-static {v4}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    sget-object v5, Lcom/moloco/sdk/internal/ortb/model/u$a;->a:Lcom/moloco/sdk/internal/ortb/model/u$a;

    .line 26
    .line 27
    invoke-static {v5}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/j$a;->a:Lcom/moloco/sdk/internal/ortb/model/j$a;

    .line 32
    .line 33
    invoke-static {v6}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    sget-object v7, Lcom/moloco/sdk/internal/ortb/model/i$a;->a:Lcom/moloco/sdk/internal/ortb/model/i$a;

    .line 38
    .line 39
    invoke-static {v7}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const/16 v8, 0xa

    .line 44
    .line 45
    new-array v8, v8, [Lkotlinx/serialization/KSerializer;

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    aput-object v1, v8, v9

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    aput-object v0, v8, v1

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    aput-object v2, v8, v0

    .line 55
    .line 56
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/o$a;->a:Lcom/moloco/sdk/internal/ortb/model/o$a;

    .line 57
    .line 58
    const/4 v1, 0x3

    .line 59
    aput-object v0, v8, v1

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    aput-object v3, v8, v0

    .line 63
    .line 64
    sget-object v0, Lvt/i;->a:Lvt/i;

    .line 65
    .line 66
    const/4 v1, 0x5

    .line 67
    aput-object v0, v8, v1

    .line 68
    .line 69
    const/4 v0, 0x6

    .line 70
    aput-object v4, v8, v0

    .line 71
    .line 72
    const/4 v0, 0x7

    .line 73
    aput-object v5, v8, v0

    .line 74
    .line 75
    const/16 v0, 0x8

    .line 76
    .line 77
    aput-object v6, v8, v0

    .line 78
    .line 79
    const/16 v0, 0x9

    .line 80
    .line 81
    aput-object v7, v8, v0

    .line 82
    .line 83
    return-object v8
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ortb/model/p$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/p;

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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/p$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ortb/model/p;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/model/p$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/p;)V

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
