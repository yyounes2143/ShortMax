.class public final synthetic Lcom/moloco/sdk/internal/ortb/model/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ortb/model/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ortb/model/o;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ortb/model/o$a;
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
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/o$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ortb/model/o$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/o$a;->a:Lcom/moloco/sdk/internal/ortb/model/o$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ortb/model/o$a;->c:I

    .line 11
    .line 12
    new-instance v1, Lvt/h2;

    .line 13
    .line 14
    const-string v2, "com.moloco.sdk.internal.ortb.model.Mute"

    .line 15
    .line 16
    const/4 v3, 0x7

    .line 17
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "mute"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "padding"

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v0, "horizontal_alignment"

    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v0, "vertical_alignment"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const-string v0, "foreground_color"

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    const-string v0, "control_size"

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "background_color"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lcom/moloco/sdk/internal/ortb/model/o$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 59
    .line 60
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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/o;
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
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/o$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sget-object v9, Lvt/j3;->a:Lvt/j3;

    .line 33
    .line 34
    invoke-interface {v0, v1, v8, v9, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Lms/n;

    .line 39
    .line 40
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 41
    .line 42
    invoke-interface {v0, v1, v7, v11, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Lcom/moloco/sdk/internal/ortb/model/l;

    .line 47
    .line 48
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 49
    .line 50
    invoke-interface {v0, v1, v5, v11, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 55
    .line 56
    sget-object v11, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 57
    .line 58
    invoke-interface {v0, v1, v6, v11, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 63
    .line 64
    invoke-interface {v0, v1, v4, v9, v10}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lms/n;

    .line 69
    .line 70
    invoke-interface {v0, v1, v3, v11, v10}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 75
    .line 76
    const/16 v9, 0x7f

    .line 77
    .line 78
    move/from16 v19, v2

    .line 79
    .line 80
    move-object/from16 v25, v3

    .line 81
    .line 82
    move-object/from16 v24, v4

    .line 83
    .line 84
    move-object/from16 v22, v5

    .line 85
    .line 86
    move-object/from16 v23, v6

    .line 87
    .line 88
    move-object/from16 v21, v7

    .line 89
    .line 90
    move-object/from16 v20, v8

    .line 91
    .line 92
    move/from16 v18, v9

    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_0
    move/from16 v16, v8

    .line 97
    .line 98
    move v2, v9

    .line 99
    move-object v11, v10

    .line 100
    move-object v12, v11

    .line 101
    move-object v13, v12

    .line 102
    move-object v14, v13

    .line 103
    move-object v15, v14

    .line 104
    move-object v9, v15

    .line 105
    move v10, v2

    .line 106
    :goto_0
    if-eqz v16, :cond_1

    .line 107
    .line 108
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    packed-switch v8, :pswitch_data_0

    .line 113
    .line 114
    .line 115
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 116
    .line 117
    invoke-direct {v0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :pswitch_0
    sget-object v8, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 122
    .line 123
    invoke-interface {v0, v1, v3, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    move-object v9, v8

    .line 128
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .line 129
    .line 130
    or-int/lit8 v10, v10, 0x40

    .line 131
    .line 132
    :goto_1
    const/4 v8, 0x1

    .line 133
    goto :goto_0

    .line 134
    :pswitch_1
    sget-object v8, Lvt/j3;->a:Lvt/j3;

    .line 135
    .line 136
    invoke-interface {v0, v1, v4, v8, v15}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    move-object v15, v8

    .line 141
    check-cast v15, Lms/n;

    .line 142
    .line 143
    or-int/lit8 v10, v10, 0x20

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :pswitch_2
    sget-object v8, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 147
    .line 148
    invoke-interface {v0, v1, v6, v8, v14}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    move-object v14, v8

    .line 153
    check-cast v14, Landroidx/compose/ui/graphics/Color;

    .line 154
    .line 155
    or-int/lit8 v10, v10, 0x10

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :pswitch_3
    sget-object v8, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 159
    .line 160
    invoke-interface {v0, v1, v5, v8, v13}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    move-object v13, v8

    .line 165
    check-cast v13, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 166
    .line 167
    or-int/lit8 v10, v10, 0x8

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :pswitch_4
    sget-object v8, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 171
    .line 172
    invoke-interface {v0, v1, v7, v8, v12}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    move-object v12, v8

    .line 177
    check-cast v12, Lcom/moloco/sdk/internal/ortb/model/l;

    .line 178
    .line 179
    or-int/lit8 v10, v10, 0x4

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :pswitch_5
    sget-object v8, Lvt/j3;->a:Lvt/j3;

    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    invoke-interface {v0, v1, v3, v8, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    move-object v11, v8

    .line 190
    check-cast v11, Lms/n;

    .line 191
    .line 192
    or-int/lit8 v10, v10, 0x2

    .line 193
    .line 194
    :goto_2
    move v8, v3

    .line 195
    const/4 v3, 0x6

    .line 196
    goto :goto_0

    .line 197
    :pswitch_6
    const/4 v3, 0x1

    .line 198
    const/4 v8, 0x0

    .line 199
    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    or-int/lit8 v10, v10, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :pswitch_7
    const/4 v8, 0x0

    .line 207
    move/from16 v16, v8

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_1
    move/from16 v19, v2

    .line 211
    .line 212
    move-object/from16 v25, v9

    .line 213
    .line 214
    move/from16 v18, v10

    .line 215
    .line 216
    move-object/from16 v20, v11

    .line 217
    .line 218
    move-object/from16 v21, v12

    .line 219
    .line 220
    move-object/from16 v22, v13

    .line 221
    .line 222
    move-object/from16 v23, v14

    .line 223
    .line 224
    move-object/from16 v24, v15

    .line 225
    .line 226
    :goto_3
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/o;

    .line 230
    .line 231
    const/16 v26, 0x0

    .line 232
    .line 233
    const/16 v27, 0x0

    .line 234
    .line 235
    move-object/from16 v17, v0

    .line 236
    .line 237
    invoke-direct/range {v17 .. v27}, Lcom/moloco/sdk/internal/ortb/model/o;-><init>(IZLms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Lms/n;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 238
    .line 239
    .line 240
    return-object v0

    .line 241
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

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/o;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/o;
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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/o$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ortb/model/o;->b(Lcom/moloco/sdk/internal/ortb/model/o;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    .locals 7
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
    sget-object v0, Lvt/j3;->a:Lvt/j3;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 4
    .line 5
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v1}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

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
    sget-object v5, Lvt/i;->a:Lvt/i;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aput-object v5, v4, v6

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    aput-object v0, v4, v5

    .line 23
    .line 24
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    aput-object v0, v4, v5

    .line 28
    .line 29
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    aput-object v0, v4, v5

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    aput-object v1, v4, v0

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
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ortb/model/o$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/o;

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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/o$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ortb/model/o;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/model/o$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/o;)V

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
