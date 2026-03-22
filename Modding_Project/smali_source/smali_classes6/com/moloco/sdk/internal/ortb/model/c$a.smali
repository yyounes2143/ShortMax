.class public final synthetic Lcom/moloco/sdk/internal/ortb/model/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/ortb/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/moloco/sdk/internal/ortb/model/c;",
        ">;"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/ortb/model/c$a;
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
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/ortb/model/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/c$a;->a:Lcom/moloco/sdk/internal/ortb/model/c$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sput v1, Lcom/moloco/sdk/internal/ortb/model/c$a;->c:I

    .line 11
    .line 12
    new-instance v1, Lvt/h2;

    .line 13
    .line 14
    const-string v2, "com.moloco.sdk.internal.ortb.model.Bid"

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "adm"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "price"

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v0, "burl"

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v1, v0, v3}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "ext"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/moloco/sdk/internal/ortb/model/c$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/c;
    .locals 19
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
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/c$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/c;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    sget-object v6, Lvt/w2;->a:Lvt/w2;

    .line 34
    .line 35
    invoke-interface {v0, v1, v4, v6, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    sget-object v6, Lcom/moloco/sdk/internal/ortb/model/d$a;->a:Lcom/moloco/sdk/internal/ortb/model/d$a;

    .line 42
    .line 43
    invoke-interface {v0, v1, v3, v6, v7}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/moloco/sdk/internal/ortb/model/d;

    .line 48
    .line 49
    const/16 v6, 0xf

    .line 50
    .line 51
    move-object v14, v2

    .line 52
    move-object/from16 v17, v3

    .line 53
    .line 54
    move-object/from16 v16, v4

    .line 55
    .line 56
    move v15, v5

    .line 57
    move v13, v6

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 60
    move v11, v5

    .line 61
    move-object v8, v7

    .line 62
    move-object v9, v8

    .line 63
    move-object v10, v9

    .line 64
    move v7, v6

    .line 65
    :goto_0
    if-eqz v11, :cond_6

    .line 66
    .line 67
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    const/4 v13, -0x1

    .line 72
    if-eq v12, v13, :cond_5

    .line 73
    .line 74
    if-eqz v12, :cond_4

    .line 75
    .line 76
    if-eq v12, v5, :cond_3

    .line 77
    .line 78
    if-eq v12, v4, :cond_2

    .line 79
    .line 80
    if-ne v12, v3, :cond_1

    .line 81
    .line 82
    sget-object v12, Lcom/moloco/sdk/internal/ortb/model/d$a;->a:Lcom/moloco/sdk/internal/ortb/model/d$a;

    .line 83
    .line 84
    invoke-interface {v0, v1, v3, v12, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    check-cast v10, Lcom/moloco/sdk/internal/ortb/model/d;

    .line 89
    .line 90
    or-int/lit8 v7, v7, 0x8

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    .line 94
    .line 95
    invoke-direct {v0, v12}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_2
    sget-object v12, Lvt/w2;->a:Lvt/w2;

    .line 100
    .line 101
    invoke-interface {v0, v1, v4, v12, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Ljava/lang/String;

    .line 106
    .line 107
    or-int/lit8 v7, v7, 0x4

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    or-int/lit8 v7, v7, 0x2

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/c;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    or-int/lit8 v7, v7, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    move v11, v6

    .line 125
    goto :goto_0

    .line 126
    :cond_6
    move v15, v2

    .line 127
    move v13, v7

    .line 128
    move-object v14, v8

    .line 129
    move-object/from16 v16, v9

    .line 130
    .line 131
    move-object/from16 v17, v10

    .line 132
    .line 133
    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 137
    .line 138
    const/16 v18, 0x0

    .line 139
    .line 140
    move-object v12, v0

    .line 141
    invoke-direct/range {v12 .. v18}, Lcom/moloco/sdk/internal/ortb/model/c;-><init>(ILjava/lang/String;FLjava/lang/String;Lcom/moloco/sdk/internal/ortb/model/d;Lvt/r2;)V

    .line 142
    .line 143
    .line 144
    return-object v0
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/c;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/c;
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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/c$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1, v0}, Lcom/moloco/sdk/internal/ortb/model/c;->b(Lcom/moloco/sdk/internal/ortb/model/c;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    move-result-object v1

    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v0, v2, v3

    .line 12
    .line 13
    sget-object v0, Lvt/l0;->a:Lvt/l0;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v0, v2, v3

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    aput-object v1, v2, v0

    .line 20
    .line 21
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/d$a;->a:Lcom/moloco/sdk/internal/ortb/model/d$a;

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    aput-object v0, v2, v1

    .line 25
    .line 26
    return-object v2
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ortb/model/c$a;->a(Lkotlinx/serialization/encoding/Decoder;)Lcom/moloco/sdk/internal/ortb/model/c;

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
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/c$a;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/model/c$a;->b(Lkotlinx/serialization/encoding/Encoder;Lcom/moloco/sdk/internal/ortb/model/c;)V

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
