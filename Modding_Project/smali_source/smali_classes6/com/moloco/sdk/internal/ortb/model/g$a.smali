.class public final synthetic Lcom/moloco/sdk/internal/ortb/model/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ortb/model/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ortb/model/g;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ortb/model/g$a;
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
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/g$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ortb/model/g$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/g$a;->a:Lcom/moloco/sdk/internal/ortb/model/g$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ortb/model/g$a;->c:I

    .line 11
    .line 12
    new-instance v1, Lvt/h2;

    .line 13
    .line 14
    const-string v2, "com.moloco.sdk.internal.ortb.model.CTA"

    .line 15
    .line 16
    const/4 v3, 0x7

    .line 17
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "text"

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "image_url"

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v1, v0, v3}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "padding"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "horizontal_alignment"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v0, "vertical_alignment"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "foreground_color"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "background_color"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v3}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v1, Lcom/moloco/sdk/internal/ortb/model/g$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 60
    .line 61
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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/g;
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
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/g$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/4 v3, 0x6

    .line 19
    const/4 v4, 0x5

    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x1

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/c;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v9, Lvt/w2;->a:Lvt/w2;

    .line 33
    .line 34
    invoke-interface {v0, v1, v8, v9, v10}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Ljava/lang/String;

    .line 39
    .line 40
    sget-object v9, Lvt/j3;->a:Lvt/j3;

    .line 41
    .line 42
    invoke-interface {v0, v1, v7, v9, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Lms/n;

    .line 47
    .line 48
    sget-object v9, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 49
    .line 50
    invoke-interface {v0, v1, v5, v9, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/moloco/sdk/internal/ortb/model/l;

    .line 55
    .line 56
    sget-object v9, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 57
    .line 58
    invoke-interface {v0, v1, v6, v9, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 63
    .line 64
    sget-object v9, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 65
    .line 66
    invoke-interface {v0, v1, v4, v9, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 71
    .line 72
    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 77
    .line 78
    const/16 v9, 0x7f

    .line 79
    .line 80
    move-object/from16 v19, v2

    .line 81
    .line 82
    move-object/from16 v25, v3

    .line 83
    .line 84
    move-object/from16 v24, v4

    .line 85
    .line 86
    move-object/from16 v22, v5

    .line 87
    .line 88
    move-object/from16 v23, v6

    .line 89
    .line 90
    move-object/from16 v21, v7

    .line 91
    .line 92
    move-object/from16 v20, v8

    .line 93
    .line 94
    move/from16 v18, v9

    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_0
    move/from16 v16, v8

    .line 99
    .line 100
    move v2, v9

    .line 101
    move-object v9, v10

    .line 102
    move-object v11, v9

    .line 103
    move-object v12, v11

    .line 104
    move-object v13, v12

    .line 105
    move-object v14, v13

    .line 106
    move-object v15, v14

    .line 107
    :goto_0
    if-eqz v16, :cond_1

    .line 108
    .line 109
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    packed-switch v8, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 117
    .line 118
    invoke-direct {v0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :pswitch_0
    sget-object v8, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 123
    .line 124
    invoke-interface {v0, v1, v3, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    move-object v9, v8

    .line 129
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .line 130
    .line 131
    or-int/lit8 v2, v2, 0x40

    .line 132
    .line 133
    :goto_1
    const/4 v8, 0x1

    .line 134
    goto :goto_0

    .line 135
    :pswitch_1
    sget-object v8, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 136
    .line 137
    invoke-interface {v0, v1, v4, v8, v15}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    move-object v15, v8

    .line 142
    check-cast v15, Landroidx/compose/ui/graphics/Color;

    .line 143
    .line 144
    or-int/lit8 v2, v2, 0x20

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_2
    sget-object v8, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 148
    .line 149
    invoke-interface {v0, v1, v6, v8, v14}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    move-object v14, v8

    .line 154
    check-cast v14, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 155
    .line 156
    or-int/lit8 v2, v2, 0x10

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :pswitch_3
    sget-object v8, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 160
    .line 161
    invoke-interface {v0, v1, v5, v8, v13}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    move-object v13, v8

    .line 166
    check-cast v13, Lcom/moloco/sdk/internal/ortb/model/l;

    .line 167
    .line 168
    or-int/lit8 v2, v2, 0x8

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_4
    sget-object v8, Lvt/j3;->a:Lvt/j3;

    .line 172
    .line 173
    invoke-interface {v0, v1, v7, v8, v12}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    move-object v12, v8

    .line 178
    check-cast v12, Lms/n;

    .line 179
    .line 180
    or-int/lit8 v2, v2, 0x4

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_5
    sget-object v8, Lvt/w2;->a:Lvt/w2;

    .line 184
    .line 185
    const/4 v3, 0x1

    .line 186
    invoke-interface {v0, v1, v3, v8, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    move-object v11, v8

    .line 191
    check-cast v11, Ljava/lang/String;

    .line 192
    .line 193
    or-int/lit8 v2, v2, 0x2

    .line 194
    .line 195
    :goto_2
    move v8, v3

    .line 196
    const/4 v3, 0x6

    .line 197
    goto :goto_0

    .line 198
    :pswitch_6
    const/4 v3, 0x1

    .line 199
    const/4 v8, 0x0

    .line 200
    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/c;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    or-int/lit8 v2, v2, 0x1

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :pswitch_7
    const/4 v8, 0x0

    .line 208
    move/from16 v16, v8

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_1
    move/from16 v18, v2

    .line 212
    .line 213
    move-object/from16 v25, v9

    .line 214
    .line 215
    move-object/from16 v19, v10

    .line 216
    .line 217
    move-object/from16 v20, v11

    .line 218
    .line 219
    move-object/from16 v21, v12

    .line 220
    .line 221
    move-object/from16 v22, v13

    .line 222
    .line 223
    move-object/from16 v23, v14

    .line 224
    .line 225
    move-object/from16 v24, v15

    .line 226
    .line 227
    :goto_3
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/g;

    .line 231
    .line 232
    const/16 v26, 0x0

    .line 233
    .line 234
    const/16 v27, 0x0

    .line 235
    .line 236
    move-object/from16 v17, v0

    .line 237
    .line 238
    invoke-direct/range {v17 .. v27}, Lcom/moloco/sdk/internal/ortb/model/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 239
    .line 240
    .line 241
    return-object v0

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch -0x1
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

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/g;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/g;
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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/g$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ortb/model/g;->b(Lcom/moloco/sdk/internal/ortb/model/g;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    .locals 6
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
    sget-object v2, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 8
    .line 9
    invoke-static {v2}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x7

    .line 14
    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v0, v4, v5

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v4, v0

    .line 21
    .line 22
    sget-object v0, Lvt/j3;->a:Lvt/j3;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    aput-object v0, v4, v1

    .line 26
    .line 27
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    aput-object v0, v4, v1

    .line 31
    .line 32
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    aput-object v0, v4, v1

    .line 36
    .line 37
    const/4 v0, 0x5

    .line 38
    aput-object v2, v4, v0

    .line 39
    .line 40
    const/4 v0, 0x6

    .line 41
    aput-object v3, v4, v0

    .line 42
    .line 43
    return-object v4
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ortb/model/g$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/g;

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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/g$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ortb/model/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/model/g$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/g;)V

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
