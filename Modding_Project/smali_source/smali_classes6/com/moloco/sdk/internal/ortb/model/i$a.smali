.class public final synthetic Lcom/moloco/sdk/internal/ortb/model/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ortb/model/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ortb/model/i;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ortb/model/i$a;
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
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/i$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ortb/model/i$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/i$a;->a:Lcom/moloco/sdk/internal/ortb/model/i$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ortb/model/i$a;->c:I

    .line 11
    .line 12
    new-instance v2, Lvt/h2;

    .line 13
    .line 14
    const-string v3, "com.moloco.sdk.internal.ortb.model.CountDownTimer"

    .line 15
    .line 16
    invoke-direct {v2, v3, v0, v1}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "custom_timer_desc"

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    const-string v0, "is_default_timer"

    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const-string v0, "control_size"

    .line 31
    .line 32
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string v0, "padding"

    .line 36
    .line 37
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "horizontal_alignment"

    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v0, "vertical_alignment"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    const-string v0, "foreground_color"

    .line 52
    .line 53
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    const-string v0, "background_color"

    .line 57
    .line 58
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    sput-object v2, Lcom/moloco/sdk/internal/ortb/model/i$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 62
    .line 63
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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/i;
    .locals 29
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
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/i$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/4 v3, 0x7

    .line 19
    const/4 v4, 0x6

    .line 20
    const/4 v5, 0x5

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x4

    .line 23
    const/4 v8, 0x2

    .line 24
    const/4 v9, 0x1

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    sget-object v2, Lvt/w2;->a:Lvt/w2;

    .line 30
    .line 31
    invoke-interface {v0, v1, v10, v2, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    sget-object v10, Lvt/j3;->a:Lvt/j3;

    .line 42
    .line 43
    invoke-interface {v0, v1, v8, v10, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Lms/n;

    .line 48
    .line 49
    sget-object v10, Lvt/v0;->a:Lvt/v0;

    .line 50
    .line 51
    invoke-interface {v0, v1, v6, v10, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Integer;

    .line 56
    .line 57
    sget-object v10, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 58
    .line 59
    invoke-interface {v0, v1, v7, v10, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Lcom/moloco/sdk/internal/ortb/model/l;

    .line 64
    .line 65
    sget-object v10, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 66
    .line 67
    invoke-interface {v0, v1, v5, v10, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 72
    .line 73
    sget-object v10, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 74
    .line 75
    invoke-interface {v0, v1, v4, v10, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 80
    .line 81
    invoke-interface {v0, v1, v3, v10, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 86
    .line 87
    const/16 v10, 0xff

    .line 88
    .line 89
    move-object/from16 v19, v2

    .line 90
    .line 91
    move-object/from16 v26, v3

    .line 92
    .line 93
    move-object/from16 v25, v4

    .line 94
    .line 95
    move-object/from16 v24, v5

    .line 96
    .line 97
    move-object/from16 v22, v6

    .line 98
    .line 99
    move-object/from16 v23, v7

    .line 100
    .line 101
    move-object/from16 v21, v8

    .line 102
    .line 103
    move/from16 v20, v9

    .line 104
    .line 105
    move/from16 v18, v10

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_0
    move/from16 v16, v9

    .line 110
    .line 111
    move v2, v10

    .line 112
    move-object v8, v11

    .line 113
    move-object v9, v8

    .line 114
    move-object v12, v9

    .line 115
    move-object v13, v12

    .line 116
    move-object v14, v13

    .line 117
    move-object v15, v14

    .line 118
    move-object v10, v15

    .line 119
    move v11, v2

    .line 120
    :goto_0
    if-eqz v16, :cond_1

    .line 121
    .line 122
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    packed-switch v6, :pswitch_data_0

    .line 127
    .line 128
    .line 129
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 130
    .line 131
    invoke-direct {v0, v6}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :pswitch_0
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 136
    .line 137
    invoke-interface {v0, v1, v3, v6, v8}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    move-object v8, v6

    .line 142
    check-cast v8, Landroidx/compose/ui/graphics/Color;

    .line 143
    .line 144
    or-int/lit16 v11, v11, 0x80

    .line 145
    .line 146
    :goto_1
    const/4 v6, 0x3

    .line 147
    goto :goto_0

    .line 148
    :pswitch_1
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 149
    .line 150
    invoke-interface {v0, v1, v4, v6, v9}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    move-object v9, v6

    .line 155
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .line 156
    .line 157
    or-int/lit8 v11, v11, 0x40

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_2
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 161
    .line 162
    invoke-interface {v0, v1, v5, v6, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    move-object v10, v6

    .line 167
    check-cast v10, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 168
    .line 169
    or-int/lit8 v11, v11, 0x20

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :pswitch_3
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 173
    .line 174
    invoke-interface {v0, v1, v7, v6, v15}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    move-object v15, v6

    .line 179
    check-cast v15, Lcom/moloco/sdk/internal/ortb/model/l;

    .line 180
    .line 181
    or-int/lit8 v11, v11, 0x10

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :pswitch_4
    sget-object v6, Lvt/v0;->a:Lvt/v0;

    .line 185
    .line 186
    const/4 v3, 0x3

    .line 187
    invoke-interface {v0, v1, v3, v6, v14}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    move-object v14, v6

    .line 192
    check-cast v14, Ljava/lang/Integer;

    .line 193
    .line 194
    or-int/lit8 v11, v11, 0x8

    .line 195
    .line 196
    move v6, v3

    .line 197
    const/4 v3, 0x7

    .line 198
    goto :goto_0

    .line 199
    :pswitch_5
    const/4 v3, 0x3

    .line 200
    sget-object v6, Lvt/j3;->a:Lvt/j3;

    .line 201
    .line 202
    const/4 v3, 0x2

    .line 203
    invoke-interface {v0, v1, v3, v6, v13}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    move-object v13, v6

    .line 208
    check-cast v13, Lms/n;

    .line 209
    .line 210
    or-int/lit8 v11, v11, 0x4

    .line 211
    .line 212
    :goto_2
    const/4 v3, 0x7

    .line 213
    goto :goto_1

    .line 214
    :pswitch_6
    const/4 v3, 0x2

    .line 215
    const/4 v6, 0x1

    .line 216
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    or-int/lit8 v11, v11, 0x2

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :pswitch_7
    const/4 v6, 0x1

    .line 224
    sget-object v3, Lvt/w2;->a:Lvt/w2;

    .line 225
    .line 226
    const/4 v4, 0x0

    .line 227
    invoke-interface {v0, v1, v4, v3, v12}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    move-object v12, v3

    .line 232
    check-cast v12, Ljava/lang/String;

    .line 233
    .line 234
    or-int/lit8 v11, v11, 0x1

    .line 235
    .line 236
    const/4 v3, 0x7

    .line 237
    :goto_3
    const/4 v4, 0x6

    .line 238
    goto :goto_1

    .line 239
    :pswitch_8
    const/4 v4, 0x0

    .line 240
    const/4 v6, 0x1

    .line 241
    move/from16 v16, v4

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_1
    move/from16 v20, v2

    .line 245
    .line 246
    move-object/from16 v26, v8

    .line 247
    .line 248
    move-object/from16 v25, v9

    .line 249
    .line 250
    move-object/from16 v24, v10

    .line 251
    .line 252
    move/from16 v18, v11

    .line 253
    .line 254
    move-object/from16 v19, v12

    .line 255
    .line 256
    move-object/from16 v21, v13

    .line 257
    .line 258
    move-object/from16 v22, v14

    .line 259
    .line 260
    move-object/from16 v23, v15

    .line 261
    .line 262
    :goto_4
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/i;

    .line 266
    .line 267
    const/16 v27, 0x0

    .line 268
    .line 269
    const/16 v28, 0x0

    .line 270
    .line 271
    move-object/from16 v17, v0

    .line 272
    .line 273
    invoke-direct/range {v17 .. v28}, Lcom/moloco/sdk/internal/ortb/model/i;-><init>(ILjava/lang/String;ZLms/n;Ljava/lang/Integer;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 274
    .line 275
    .line 276
    return-object v0

    .line 277
    :pswitch_data_0
    .packed-switch -0x1
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

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/i;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/i;
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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/i$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ortb/model/i;->b(Lcom/moloco/sdk/internal/ortb/model/i;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    .locals 4
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
    move-result-object v0

    .line 7
    sget-object v1, Lvt/v0;->a:Lvt/v0;

    .line 8
    .line 9
    invoke-static {v1}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v0, v2, v3

    .line 19
    .line 20
    sget-object v0, Lvt/i;->a:Lvt/i;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    sget-object v0, Lvt/j3;->a:Lvt/j3;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    aput-object v0, v2, v3

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    aput-object v1, v2, v0

    .line 32
    .line 33
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    aput-object v0, v2, v1

    .line 37
    .line 38
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    aput-object v0, v2, v1

    .line 42
    .line 43
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 44
    .line 45
    const/4 v1, 0x6

    .line 46
    aput-object v0, v2, v1

    .line 47
    .line 48
    const/4 v1, 0x7

    .line 49
    aput-object v0, v2, v1

    .line 50
    .line 51
    return-object v2
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ortb/model/i$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/i;

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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/i$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ortb/model/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/model/i$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/i;)V

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
