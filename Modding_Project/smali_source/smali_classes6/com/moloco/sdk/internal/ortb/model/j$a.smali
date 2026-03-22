.class public final synthetic Lcom/moloco/sdk/internal/ortb/model/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ortb/model/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ortb/model/j;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ortb/model/j$a;
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
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/j$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ortb/model/j$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/j$a;->a:Lcom/moloco/sdk/internal/ortb/model/j$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ortb/model/j$a;->c:I

    .line 11
    .line 12
    new-instance v2, Lvt/h2;

    .line 13
    .line 14
    const-string v3, "com.moloco.sdk.internal.ortb.model.DEC"

    .line 15
    .line 16
    invoke-direct {v2, v3, v0, v1}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "app_icon_url"

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    const-string v0, "app_name"

    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const-string v0, "imp_link"

    .line 31
    .line 32
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string v0, "click_through"

    .line 36
    .line 37
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "click_tracking"

    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "cta_text"

    .line 46
    .line 47
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v0, "skip_event"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    const-string v0, "close"

    .line 57
    .line 58
    invoke-virtual {v2, v0, v1}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    sput-object v2, Lcom/moloco/sdk/internal/ortb/model/j$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/j;
    .locals 28
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
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/j$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    move-result-object v10

    .line 35
    check-cast v10, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0, v1, v9, v2, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    check-cast v9, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0, v1, v8, v2, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, v1, v6, v2, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v0, v1, v7, v2, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v0, v1, v5, v2, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v0, v1, v4, v2, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/String;

    .line 72
    .line 73
    sget-object v4, Lcom/moloco/sdk/internal/ortb/model/k$a;->a:Lcom/moloco/sdk/internal/ortb/model/k$a;

    .line 74
    .line 75
    invoke-interface {v0, v1, v3, v4, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/moloco/sdk/internal/ortb/model/k;

    .line 80
    .line 81
    const/16 v4, 0xff

    .line 82
    .line 83
    move-object/from16 v25, v2

    .line 84
    .line 85
    move-object/from16 v26, v3

    .line 86
    .line 87
    move/from16 v18, v4

    .line 88
    .line 89
    move-object/from16 v24, v5

    .line 90
    .line 91
    move-object/from16 v22, v6

    .line 92
    .line 93
    move-object/from16 v23, v7

    .line 94
    .line 95
    move-object/from16 v21, v8

    .line 96
    .line 97
    move-object/from16 v20, v9

    .line 98
    .line 99
    move-object/from16 v19, v10

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_0
    move/from16 v16, v9

    .line 104
    .line 105
    move v2, v10

    .line 106
    move-object v8, v11

    .line 107
    move-object v9, v8

    .line 108
    move-object v10, v9

    .line 109
    move-object v12, v10

    .line 110
    move-object v13, v12

    .line 111
    move-object v14, v13

    .line 112
    move-object v15, v14

    .line 113
    :goto_0
    if-eqz v16, :cond_1

    .line 114
    .line 115
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    packed-switch v6, :pswitch_data_0

    .line 120
    .line 121
    .line 122
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 123
    .line 124
    invoke-direct {v0, v6}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :pswitch_0
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/k$a;->a:Lcom/moloco/sdk/internal/ortb/model/k$a;

    .line 129
    .line 130
    invoke-interface {v0, v1, v3, v6, v8}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    move-object v8, v6

    .line 135
    check-cast v8, Lcom/moloco/sdk/internal/ortb/model/k;

    .line 136
    .line 137
    or-int/lit16 v2, v2, 0x80

    .line 138
    .line 139
    :goto_1
    const/4 v6, 0x3

    .line 140
    goto :goto_0

    .line 141
    :pswitch_1
    sget-object v6, Lvt/w2;->a:Lvt/w2;

    .line 142
    .line 143
    invoke-interface {v0, v1, v4, v6, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    move-object v9, v6

    .line 148
    check-cast v9, Ljava/lang/String;

    .line 149
    .line 150
    or-int/lit8 v2, v2, 0x40

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :pswitch_2
    sget-object v6, Lvt/w2;->a:Lvt/w2;

    .line 154
    .line 155
    invoke-interface {v0, v1, v5, v6, v10}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    move-object v10, v6

    .line 160
    check-cast v10, Ljava/lang/String;

    .line 161
    .line 162
    or-int/lit8 v2, v2, 0x20

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :pswitch_3
    sget-object v6, Lvt/w2;->a:Lvt/w2;

    .line 166
    .line 167
    invoke-interface {v0, v1, v7, v6, v15}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    move-object v15, v6

    .line 172
    check-cast v15, Ljava/lang/String;

    .line 173
    .line 174
    or-int/lit8 v2, v2, 0x10

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :pswitch_4
    sget-object v6, Lvt/w2;->a:Lvt/w2;

    .line 178
    .line 179
    const/4 v3, 0x3

    .line 180
    invoke-interface {v0, v1, v3, v6, v14}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    move-object v14, v6

    .line 185
    check-cast v14, Ljava/lang/String;

    .line 186
    .line 187
    or-int/lit8 v2, v2, 0x8

    .line 188
    .line 189
    move v6, v3

    .line 190
    const/4 v3, 0x7

    .line 191
    goto :goto_0

    .line 192
    :pswitch_5
    const/4 v3, 0x3

    .line 193
    sget-object v6, Lvt/w2;->a:Lvt/w2;

    .line 194
    .line 195
    const/4 v3, 0x2

    .line 196
    invoke-interface {v0, v1, v3, v6, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    move-object v13, v6

    .line 201
    check-cast v13, Ljava/lang/String;

    .line 202
    .line 203
    or-int/lit8 v2, v2, 0x4

    .line 204
    .line 205
    :goto_2
    const/4 v3, 0x7

    .line 206
    goto :goto_1

    .line 207
    :pswitch_6
    const/4 v3, 0x2

    .line 208
    sget-object v6, Lvt/w2;->a:Lvt/w2;

    .line 209
    .line 210
    const/4 v3, 0x1

    .line 211
    invoke-interface {v0, v1, v3, v6, v12}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    move-object v12, v6

    .line 216
    check-cast v12, Ljava/lang/String;

    .line 217
    .line 218
    or-int/lit8 v2, v2, 0x2

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :pswitch_7
    const/4 v3, 0x1

    .line 222
    sget-object v6, Lvt/w2;->a:Lvt/w2;

    .line 223
    .line 224
    const/4 v3, 0x0

    .line 225
    invoke-interface {v0, v1, v3, v6, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    move-object v11, v6

    .line 230
    check-cast v11, Ljava/lang/String;

    .line 231
    .line 232
    or-int/lit8 v2, v2, 0x1

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :pswitch_8
    const/4 v3, 0x0

    .line 236
    move/from16 v16, v3

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_1
    move/from16 v18, v2

    .line 240
    .line 241
    move-object/from16 v26, v8

    .line 242
    .line 243
    move-object/from16 v25, v9

    .line 244
    .line 245
    move-object/from16 v24, v10

    .line 246
    .line 247
    move-object/from16 v19, v11

    .line 248
    .line 249
    move-object/from16 v20, v12

    .line 250
    .line 251
    move-object/from16 v21, v13

    .line 252
    .line 253
    move-object/from16 v22, v14

    .line 254
    .line 255
    move-object/from16 v23, v15

    .line 256
    .line 257
    :goto_3
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/j;

    .line 261
    .line 262
    const/16 v27, 0x0

    .line 263
    .line 264
    move-object/from16 v17, v0

    .line 265
    .line 266
    invoke-direct/range {v17 .. v27}, Lcom/moloco/sdk/internal/ortb/model/j;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/k;Lvt/r2;)V

    .line 267
    .line 268
    .line 269
    return-object v0

    .line 270
    nop

    .line 271
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

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/j;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/j;
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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/j$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ortb/model/j;->b(Lcom/moloco/sdk/internal/ortb/model/j;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    move-result-object v0

    .line 31
    sget-object v7, Lcom/moloco/sdk/internal/ortb/model/k$a;->a:Lcom/moloco/sdk/internal/ortb/model/k$a;

    .line 32
    .line 33
    invoke-static {v7}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    new-array v8, v8, [Lkotlinx/serialization/KSerializer;

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    aput-object v1, v8, v9

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    aput-object v2, v8, v1

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    aput-object v3, v8, v1

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    aput-object v4, v8, v1

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    aput-object v5, v8, v1

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    aput-object v6, v8, v1

    .line 58
    .line 59
    const/4 v1, 0x6

    .line 60
    aput-object v0, v8, v1

    .line 61
    .line 62
    const/4 v0, 0x7

    .line 63
    aput-object v7, v8, v0

    .line 64
    .line 65
    return-object v8
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ortb/model/j$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/j;

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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/j$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ortb/model/j;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/model/j$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/j;)V

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
