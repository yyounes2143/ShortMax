.class public final synthetic Lcom/moloco/sdk/internal/ortb/model/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ortb/model/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ortb/model/q;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ortb/model/q$a;
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
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/q$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ortb/model/q$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/q$a;->a:Lcom/moloco/sdk/internal/ortb/model/q$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ortb/model/q$a;->c:I

    .line 11
    .line 12
    new-instance v1, Lvt/h2;

    .line 13
    .line 14
    const-string v2, "com.moloco.sdk.internal.ortb.model.ProgressBar"

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "padding"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "horizontal_alignment"

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "vertical_alignment"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "foreground_color"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/moloco/sdk/internal/ortb/model/q$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 43
    .line 44
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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/q;
    .locals 20
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
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/q$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/4 v3, 0x3

    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    sget-object v2, Lvt/j3;->a:Lvt/j3;

    .line 26
    .line 27
    invoke-interface {v0, v1, v6, v2, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lms/n;

    .line 32
    .line 33
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 34
    .line 35
    invoke-interface {v0, v1, v5, v6, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/moloco/sdk/internal/ortb/model/l;

    .line 40
    .line 41
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 42
    .line 43
    invoke-interface {v0, v1, v4, v6, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 48
    .line 49
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 50
    .line 51
    invoke-interface {v0, v1, v3, v6, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 56
    .line 57
    const/16 v6, 0xf

    .line 58
    .line 59
    move-object v14, v2

    .line 60
    move-object/from16 v17, v3

    .line 61
    .line 62
    move-object/from16 v16, v4

    .line 63
    .line 64
    move-object v15, v5

    .line 65
    move v13, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    move v11, v5

    .line 68
    move v2, v6

    .line 69
    move-object v8, v7

    .line 70
    move-object v9, v8

    .line 71
    move-object v10, v9

    .line 72
    :goto_0
    if-eqz v11, :cond_6

    .line 73
    .line 74
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    const/4 v13, -0x1

    .line 79
    if-eq v12, v13, :cond_5

    .line 80
    .line 81
    if-eqz v12, :cond_4

    .line 82
    .line 83
    if-eq v12, v5, :cond_3

    .line 84
    .line 85
    if-eq v12, v4, :cond_2

    .line 86
    .line 87
    if-ne v12, v3, :cond_1

    .line 88
    .line 89
    sget-object v12, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 90
    .line 91
    invoke-interface {v0, v1, v3, v12, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    check-cast v10, Landroidx/compose/ui/graphics/Color;

    .line 96
    .line 97
    or-int/lit8 v2, v2, 0x8

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 101
    .line 102
    invoke-direct {v0, v12}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_2
    sget-object v12, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 107
    .line 108
    invoke-interface {v0, v1, v4, v12, v9}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    check-cast v9, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 113
    .line 114
    or-int/lit8 v2, v2, 0x4

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    sget-object v12, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 118
    .line 119
    invoke-interface {v0, v1, v5, v12, v8}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Lcom/moloco/sdk/internal/ortb/model/l;

    .line 124
    .line 125
    or-int/lit8 v2, v2, 0x2

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    sget-object v12, Lvt/j3;->a:Lvt/j3;

    .line 129
    .line 130
    invoke-interface {v0, v1, v6, v12, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    check-cast v7, Lms/n;

    .line 135
    .line 136
    or-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    move v11, v6

    .line 140
    goto :goto_0

    .line 141
    :cond_6
    move v13, v2

    .line 142
    move-object v14, v7

    .line 143
    move-object v15, v8

    .line 144
    move-object/from16 v16, v9

    .line 145
    .line 146
    move-object/from16 v17, v10

    .line 147
    .line 148
    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/q;

    .line 152
    .line 153
    const/16 v18, 0x0

    .line 154
    .line 155
    const/16 v19, 0x0

    .line 156
    .line 157
    move-object v12, v0

    .line 158
    invoke-direct/range {v12 .. v19}, Lcom/moloco/sdk/internal/ortb/model/q;-><init>(ILms/n;Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;Landroidx/compose/ui/graphics/Color;Lvt/r2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 159
    .line 160
    .line 161
    return-object v0
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/q;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/q;
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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/q$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ortb/model/q;->b(Lcom/moloco/sdk/internal/ortb/model/q;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    .locals 3
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
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 3
    .line 4
    sget-object v1, Lvt/j3;->a:Lvt/j3;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/l$a;->a:Lcom/moloco/sdk/internal/ortb/model/l$a;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/h;->a:Lcom/moloco/sdk/internal/ortb/model/h;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ortb/model/q$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/q;

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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/q$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ortb/model/q;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/model/q$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/q;)V

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
